.class public final Lnet/sf/saxon/value/AnyURIValue;
.super Lnet/sf/saxon/value/StringValue;
.source "SourceFile"


# static fields
.field public static final EMPTY_URI:Lnet/sf/saxon/value/AnyURIValue;

.field public static final synthetic e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/value/AnyURIValue;

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/AnyURIValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    sput-object v0, Lnet/sf/saxon/value/AnyURIValue;->EMPTY_URI:Lnet/sf/saxon/value/AnyURIValue;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/AnyURIValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->collapseWhitespace(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    .line 2
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/type/AtomicType;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->collapseWhitespace(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;Lnet/sf/saxon/type/AtomicType;)V

    return-void
.end method

.method public static a(CC)B
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/value/AnyURIValue;->b(C)I

    move-result p0

    shl-int/lit8 p0, p0, 0x4

    invoke-static {p1}, Lnet/sf/saxon/value/AnyURIValue;->b(C)I

    move-result p1

    or-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method public static b(C)I
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v1, 0x66

    if-gt p0, v1, :cond_1

    :goto_0
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v1, 0x46

    if-gt p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    const/16 v1, 0x25

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_2

    return-object p0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v7, v5

    move v8, v7

    :goto_0
    if-ge v7, v0, :cond_a

    const/16 v9, 0x5b

    const/4 v10, 0x1

    if-ne v6, v9, :cond_3

    move v8, v10

    goto :goto_1

    :cond_3
    if-eqz v8, :cond_4

    const/16 v9, 0x5d

    if-ne v6, v9, :cond_4

    move v8, v5

    :cond_4
    :goto_1
    if-ne v6, v1, :cond_8

    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_6
    add-int/2addr v7, v10

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/2addr v7, v10

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v9, v11}, Lnet/sf/saxon/value/AnyURIValue;->a(CC)B

    move-result v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/2addr v7, v10

    if-lt v7, v0, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v1, :cond_6

    :goto_2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v4, v3}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_8
    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    if-lt v7, v0, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_0

    :cond_a
    :goto_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public convertToString()Lnet/sf/saxon/value/StringValue;
    .locals 2

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/StringValue;->getContent()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/type/AtomicType;)V

    return-object v0
.end method

.method public copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/AnyURIValue;
    .locals 1

    .line 3
    new-instance v0, Lnet/sf/saxon/value/AnyURIValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/StringValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/AnyURIValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    .line 4
    iput-object p1, v0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-object v0
.end method

.method public bridge synthetic copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/AnyURIValue;->copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/AnyURIValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/StringValue;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/AnyURIValue;->copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/AnyURIValue;

    move-result-object p0

    return-object p0
.end method

.method public getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method
