.class public Lnet/sf/saxon/str/StringView;
.super Lnet/sf/saxon/str/UnicodeString;
.source "SourceFile"


# instance fields
.field public final e:Ljava/lang/String;

.field public f:Lnet/sf/saxon/str/UnicodeString;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/str/UnicodeString;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lnet/sf/saxon/str/StringView;->e:Ljava/lang/String;

    return-void
.end method

.method public static of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;
    .locals 1

    new-instance v0, Lnet/sf/saxon/str/StringView;

    invoke-direct {v0, p0}, Lnet/sf/saxon/str/StringView;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;
    .locals 1

    .line 1
    new-instance v0, Lnet/sf/saxon/str/StringView;

    invoke-direct {v0, p0}, Lnet/sf/saxon/str/StringView;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/sf/saxon/str/StringView;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;
    .locals 1

    new-instance v0, Lnet/sf/saxon/str/StringView;

    invoke-direct {v0, p0}, Lnet/sf/saxon/str/StringView;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/sf/saxon/str/StringView;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a([CI)V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/str/StringView;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/str/UnicodeString;->a([CI)V

    return-void
.end method

.method public b([BI)V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/str/StringView;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/str/UnicodeString;->b([BI)V

    return-void
.end method

.method public c([BI)V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/str/StringView;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/str/UnicodeString;->c([BI)V

    return-void
.end method

.method public codePointAt(J)I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/str/StringView;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result p0

    return p0
.end method

.method public codePoints()Lnet/sf/saxon/z/IntIterator;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/str/StringView;->f:Lnet/sf/saxon/str/UnicodeString;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/str/StringView;->e:Ljava/lang/String;

    invoke-static {p0}, Lnet/sf/saxon/str/StringTool;->codePoints(Ljava/lang/CharSequence;)Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/StringView;->compareTo(Lnet/sf/saxon/str/UnicodeString;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lnet/sf/saxon/str/UnicodeString;)I
    .locals 2

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/str/StringView;->f:Lnet/sf/saxon/str/UnicodeString;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lnet/sf/saxon/str/StringView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/str/StringView;

    iget-object v1, v0, Lnet/sf/saxon/str/StringView;->f:Lnet/sf/saxon/str/UnicodeString;

    if-eqz v1, :cond_0

    .line 3
    iget-object p0, p0, Lnet/sf/saxon/str/StringView;->e:Ljava/lang/String;

    iget-object p1, v0, Lnet/sf/saxon/str/StringView;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lnet/sf/saxon/str/UnicodeString;->compareTo(Lnet/sf/saxon/str/UnicodeString;)I

    move-result p0

    return p0
.end method

.method public concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/str/StringView;

    if-eqz v0, :cond_1

    new-instance v0, Lnet/sf/saxon/str/StringView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/sf/saxon/str/StringView;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lnet/sf/saxon/str/StringView;

    iget-object v2, p1, Lnet/sf/saxon/str/StringView;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/StringView;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/sf/saxon/str/StringView;->f:Lnet/sf/saxon/str/UnicodeString;

    iget-object p1, p1, Lnet/sf/saxon/str/StringView;->f:Lnet/sf/saxon/str/UnicodeString;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Lnet/sf/saxon/str/UnicodeString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/str/StringView;->f:Lnet/sf/saxon/str/UnicodeString;

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v0}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public economize()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/str/StringView;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/str/StringView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/str/StringView;->e:Ljava/lang/String;

    check-cast p1, Lnet/sf/saxon/str/StringView;

    iget-object p1, p1, Lnet/sf/saxon/str/StringView;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/str/BMPString;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/str/StringView;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    invoke-super {p0, p1}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public estimatedLength()J
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/str/StringView;->f:Lnet/sf/saxon/str/UnicodeString;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/str/StringView;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-long v0, p0

    :goto_0
    return-wide v0
.end method

.method public getWidth()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/str/StringView;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->getWidth()I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/str/StringView;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public indexOf(IJ)J
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/str/StringView;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/str/UnicodeString;->indexOf(IJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/str/StringView;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public length()J
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/str/StringView;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public substring(JJ)Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/str/StringView;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized tidy()Lnet/sf/saxon/str/UnicodeString;
    .locals 7

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/str/StringView;->f:Lnet/sf/saxon/str/UnicodeString;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-object v0

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lnet/sf/saxon/str/StringView;->e:Ljava/lang/String;

    invoke-static {v0}, Lnet/sf/saxon/str/StringTool;->getStringLength(Ljava/lang/CharSequence;)I

    move-result v0

    .line 5
    iget-object v1, p0, Lnet/sf/saxon/str/StringView;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 6
    new-instance v0, Lnet/sf/saxon/str/BMPString;

    iget-object v1, p0, Lnet/sf/saxon/str/StringView;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/BMPString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sf/saxon/str/StringView;->f:Lnet/sf/saxon/str/UnicodeString;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    mul-int/lit8 v0, v0, 0x3

    .line 7
    :try_start_2
    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 8
    :goto_0
    iget-object v4, p0, Lnet/sf/saxon/str/StringView;->e:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 9
    iget-object v4, p0, Lnet/sf/saxon/str/StringView;->e:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 10
    invoke-static {v4}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->isSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 11
    iget-object v5, p0, Lnet/sf/saxon/str/StringView;->e:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->combinePair(CC)I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v6, v4, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 12
    aput-byte v6, v0, v3

    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 13
    aput-byte v6, v0, v5

    add-int/lit8 v5, v3, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 14
    aput-byte v4, v0, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v3, 0x1

    .line 15
    aput-byte v1, v0, v3

    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 16
    aput-byte v6, v0, v5

    add-int/lit8 v5, v3, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 17
    aput-byte v4, v0, v3

    :goto_1
    move v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_3
    new-instance v1, Lnet/sf/saxon/str/Twine24;

    invoke-direct {v1, v0}, Lnet/sf/saxon/str/Twine24;-><init>([B)V

    iput-object v1, p0, Lnet/sf/saxon/str/StringView;->f:Lnet/sf/saxon/str/UnicodeString;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/str/StringView;->e:Ljava/lang/String;

    return-object p0
.end method
