.class public final Lnet/sf/saxon/value/BooleanValue;
.super Lnet/sf/saxon/value/AtomicValue;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/XPathComparable;
.implements Lnet/sf/saxon/expr/sort/AtomicMatchKey;
.implements Lnet/sf/saxon/value/ContextFreeAtomicValue;


# static fields
.field public static final FALSE:Lnet/sf/saxon/value/BooleanValue;

.field public static final TRUE:Lnet/sf/saxon/value/BooleanValue;


# instance fields
.field public final e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/value/BooleanValue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/BooleanValue;-><init>(Z)V

    sput-object v0, Lnet/sf/saxon/value/BooleanValue;->TRUE:Lnet/sf/saxon/value/BooleanValue;

    new-instance v0, Lnet/sf/saxon/value/BooleanValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/BooleanValue;-><init>(Z)V

    sput-object v0, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/value/AtomicValue;-><init>()V

    .line 2
    iput-boolean p1, p0, Lnet/sf/saxon/value/BooleanValue;->e:Z

    .line 3
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public constructor <init>(ZLnet/sf/saxon/type/AtomicType;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lnet/sf/saxon/value/AtomicValue;-><init>()V

    .line 5
    iput-boolean p1, p0, Lnet/sf/saxon/value/BooleanValue;->e:Z

    .line 6
    iput-object p2, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public static fromString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;
    .locals 10

    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->trimmedStart(Lnet/sf/saxon/str/UnicodeString;)J

    move-result-wide v0

    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->trimmedEnd(Lnet/sf/saxon/str/UnicodeString;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_3

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    sget-object p0, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    return-object p0

    :cond_0
    const/16 v1, 0x31

    if-ne v0, v1, :cond_3

    sget-object p0, Lnet/sf/saxon/value/BooleanValue;->TRUE:Lnet/sf/saxon/value/BooleanValue;

    return-object p0

    :cond_1
    const-wide/16 v6, 0x4

    cmp-long v6, v2, v6

    const/16 v7, 0x65

    if-nez v6, :cond_2

    add-long v2, v0, v4

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v0

    const/16 v1, 0x74

    if-ne v0, v1, :cond_3

    add-long v0, v2, v4

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_3

    add-long/2addr v4, v0

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v0

    const/16 v1, 0x75

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, v4, v5}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v0

    if-ne v0, v7, :cond_3

    sget-object p0, Lnet/sf/saxon/value/BooleanValue;->TRUE:Lnet/sf/saxon/value/BooleanValue;

    return-object p0

    :cond_2
    const-wide/16 v8, 0x5

    cmp-long v2, v2, v8

    if-nez v2, :cond_3

    add-long v2, v0, v4

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_3

    add-long v0, v2, v4

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v2

    const/16 v3, 0x61

    if-ne v2, v3, :cond_3

    add-long v2, v0, v4

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_3

    add-long/2addr v4, v2

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v0

    const/16 v1, 0x73

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, v4, v5}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v0

    if-ne v0, v7, :cond_3

    sget-object p0, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    return-object p0

    :cond_3
    new-instance v0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lnet/sf/saxon/trans/Err;->wrap(Lnet/sf/saxon/str/UnicodeString;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be cast to a boolean"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    const-string p0, "FORG0001"

    invoke-virtual {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    return-object v0
.end method

.method public static get(Z)Lnet/sf/saxon/value/BooleanValue;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lnet/sf/saxon/value/BooleanValue;->TRUE:Lnet/sf/saxon/value/BooleanValue;

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/expr/sort/XPathComparable;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/BooleanValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I
    .locals 2

    .line 2
    instance-of v0, p1, Lnet/sf/saxon/value/BooleanValue;

    if-eqz v0, :cond_2

    .line 3
    iget-boolean p0, p0, Lnet/sf/saxon/value/BooleanValue;->e:Z

    check-cast p1, Lnet/sf/saxon/value/BooleanValue;

    iget-boolean p1, p1, Lnet/sf/saxon/value/BooleanValue;->e:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot compare xs:boolean to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/AtomicValue;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/BooleanValue;

    iget-boolean p0, p0, Lnet/sf/saxon/value/BooleanValue;->e:Z

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/BooleanValue;-><init>(Z)V

    iput-object p1, v0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-object v0
.end method

.method public effectiveBooleanValue()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/value/BooleanValue;->e:Z

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/value/BooleanValue;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lnet/sf/saxon/value/BooleanValue;->e:Z

    check-cast p1, Lnet/sf/saxon/value/BooleanValue;

    iget-boolean p1, p1, Lnet/sf/saxon/value/BooleanValue;->e:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBooleanValue()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/value/BooleanValue;->e:Z

    return p0
.end method

.method public getPrimitiveStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/value/BooleanValue;->e:Z

    if-eqz p0, :cond_0

    sget-object p0, Lnet/sf/saxon/str/StringConstants;->TRUE:Lnet/sf/saxon/str/UnicodeString;

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/sf/saxon/str/StringConstants;->FALSE:Lnet/sf/saxon/str/UnicodeString;

    :goto_0
    return-object p0
.end method

.method public getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public getXPathComparable()Lnet/sf/saxon/expr/sort/XPathComparable;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getXPathComparable(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/XPathComparable;
    .locals 0

    .line 2
    return-object p0
.end method

.method public getXPathMatchKey(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/AtomicMatchKey;
    .locals 0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/value/BooleanValue;->e:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public show()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
