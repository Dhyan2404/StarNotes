.class final Lcom/sun/org/apache/regexp/internal/RETestCase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final badPattern:Z

.field private final log:Ljava/lang/StringBuffer;

.field private final number:I

.field private final parens:[Ljava/lang/String;

.field private final pattern:Ljava/lang/String;

.field private regexp:Lcom/sun/org/apache/regexp/internal/RE;

.field private final shouldMatch:Z

.field private final tag:Ljava/lang/String;

.field private final test:Lcom/sun/org/apache/regexp/internal/RETest;

.field private final toMatch:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/regexp/internal/RETest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->log:Ljava/lang/StringBuffer;

    iget v0, p1, Lcom/sun/org/apache/regexp/internal/RETest;->testCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/sun/org/apache/regexp/internal/RETest;->testCount:I

    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->number:I

    iput-object p1, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->test:Lcom/sun/org/apache/regexp/internal/RETest;

    iput-object p2, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->pattern:Ljava/lang/String;

    iput-object p4, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->toMatch:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->badPattern:Z

    iput-boolean p6, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->shouldMatch:Z

    if-eqz p7, :cond_0

    array-length p1, p7

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->parens:[Ljava/lang/String;

    const/4 p1, 0x0

    :goto_0
    array-length p2, p7

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->parens:[Ljava/lang/String;

    aget-object p3, p7, p1

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->parens:[Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private checkParens()Z
    .locals 7

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->log:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   Paren count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->regexp:Lcom/sun/org/apache/regexp/internal/RE;

    invoke-virtual {v2}, Lcom/sun/org/apache/regexp/internal/RE;->getParenCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->log:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->parens:[Ljava/lang/String;

    array-length v1, v1

    iget-object v3, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->regexp:Lcom/sun/org/apache/regexp/internal/RE;

    invoke-virtual {v3}, Lcom/sun/org/apache/regexp/internal/RE;->getParenCount()I

    move-result v3

    const-string v4, "Wrong number of parens"

    invoke-virtual {p0, v0, v4, v1, v3}, Lcom/sun/org/apache/regexp/internal/RETestCase;->assertEquals(Ljava/lang/StringBuffer;Ljava/lang/String;II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->regexp:Lcom/sun/org/apache/regexp/internal/RE;

    invoke-virtual {v3}, Lcom/sun/org/apache/regexp/internal/RE;->getParenCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->log:Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   Paren "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->regexp:Lcom/sun/org/apache/regexp/internal/RE;

    invoke-virtual {v5, v0}, Lcom/sun/org/apache/regexp/internal/RE;->getParen(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->parens:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, "null"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->regexp:Lcom/sun/org/apache/regexp/internal/RE;

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/regexp/internal/RE;->getParen(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->log:Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong register "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->parens:[Ljava/lang/String;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->regexp:Lcom/sun/org/apache/regexp/internal/RE;

    invoke-virtual {v6, v0}, Lcom/sun/org/apache/regexp/internal/RE;->getParen(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/sun/org/apache/regexp/internal/RETestCase;->assertEquals(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private checkResult(Z)Z
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->shouldMatch:Z

    if-ne p1, v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->shouldMatch:Z

    if-eqz v0, :cond_0

    const-string v0, "Matched"

    goto :goto_0

    :cond_0
    const-string v0, "Did not match"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->toMatch:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", as expected:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/RETestCase;->success(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->test:Lcom/sun/org/apache/regexp/internal/RETest;

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->log:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Did not match \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->toMatch:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\", when expected to."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->test:Lcom/sun/org/apache/regexp/internal/RETest;

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->log:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Matched \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->toMatch:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\", when not expected to."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method private testMatch()V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->log:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   Match against: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->toMatch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->regexp:Lcom/sun/org/apache/regexp/internal/RE;

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->toMatch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->log:Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   Matched: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string v3, "YES"

    goto :goto_0

    :cond_0
    const-string v3, "NO"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETestCase;->checkResult(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->shouldMatch:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sun/org/apache/regexp/internal/RETestCase;->checkParens()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->log:Ljava/lang/StringBuffer;

    const-string v1, "   Match using StringCharacterIterator\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/sun/org/apache/regexp/internal/StringCharacterIterator;

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->toMatch:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/regexp/internal/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETestCase;->tryMatchUsingCI(Lcom/sun/org/apache/regexp/internal/CharacterIterator;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->log:Ljava/lang/StringBuffer;

    const-string v1, "   Match using CharacterArrayCharacterIterator\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/sun/org/apache/regexp/internal/CharacterArrayCharacterIterator;

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->toMatch:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->toMatch:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/sun/org/apache/regexp/internal/CharacterArrayCharacterIterator;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETestCase;->tryMatchUsingCI(Lcom/sun/org/apache/regexp/internal/CharacterIterator;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->log:Ljava/lang/StringBuffer;

    const-string v1, "   Match using StreamCharacterIterator\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/sun/org/apache/regexp/internal/StreamCharacterIterator;

    new-instance v1, Ljava/io/StringBufferInputStream;

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->toMatch:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/StringBufferInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/sun/org/apache/regexp/internal/StreamCharacterIterator;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETestCase;->tryMatchUsingCI(Lcom/sun/org/apache/regexp/internal/CharacterIterator;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->log:Ljava/lang/StringBuffer;

    const-string v1, "   Match using ReaderCharacterIterator\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/sun/org/apache/regexp/internal/ReaderCharacterIterator;

    new-instance v1, Ljava/io/StringReader;

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->toMatch:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/sun/org/apache/regexp/internal/ReaderCharacterIterator;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETestCase;->tryMatchUsingCI(Lcom/sun/org/apache/regexp/internal/CharacterIterator;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->test:Lcom/sun/org/apache/regexp/internal/RETest;

    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->log:Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Matcher threw fatal error \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->test:Lcom/sun/org/apache/regexp/internal/RETest;

    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->log:Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Matcher threw exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public assertEquals(Ljava/lang/StringBuffer;Ljava/lang/String;II)Z
    .locals 1

    if-eq p3, p4, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->test:Lcom/sun/org/apache/regexp/internal/RETest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (expected \""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\", actual \""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public assertEquals(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p4, :cond_2

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->test:Lcom/sun/org/apache/regexp/internal/RETest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (expected \""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\", actual \""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public runTest()V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->test:Lcom/sun/org/apache/regexp/internal/RETest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->number:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/regexp/internal/RETestCase;->testCreation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/regexp/internal/RETestCase;->testMatch()V

    :cond_0
    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public testCreation()Z
    .locals 7

    const-string v0, "\""

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/sun/org/apache/regexp/internal/RE;

    invoke-direct {v2}, Lcom/sun/org/apache/regexp/internal/RE;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->regexp:Lcom/sun/org/apache/regexp/internal/RE;

    iget-object v3, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->test:Lcom/sun/org/apache/regexp/internal/RETest;

    iget-object v3, v3, Lcom/sun/org/apache/regexp/internal/RETest;->compiler:Lcom/sun/org/apache/regexp/internal/REDebugCompiler;

    iget-object v4, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/regexp/internal/RECompiler;->compile(Ljava/lang/String;)Lcom/sun/org/apache/regexp/internal/REProgram;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/regexp/internal/RE;->setProgram(Lcom/sun/org/apache/regexp/internal/REProgram;)V

    iget-boolean v2, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->badPattern:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->test:Lcom/sun/org/apache/regexp/internal/RETest;

    iget-object v3, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->log:Ljava/lang/StringBuffer;

    const-string v4, "Was expected to be an error, but wasn\'t."

    invoke-virtual {v2, v3, v4}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->test:Lcom/sun/org/apache/regexp/internal/RETest;

    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->log:Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Compiler threw fatal error \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p0, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    iget-boolean v3, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->badPattern:Z

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->log:Ljava/lang/StringBuffer;

    const-string v3, "   Match: ERR\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Produces an error ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), as expected."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETestCase;->success(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-object v4, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->test:Lcom/sun/org/apache/regexp/internal/RETest;

    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->log:Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Produces an unexpected exception \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, p0, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return v1
.end method

.method public tryMatchUsingCI(Lcom/sun/org/apache/regexp/internal/CharacterIterator;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->regexp:Lcom/sun/org/apache/regexp/internal/RE;

    invoke-virtual {v1, p1, v0}, Lcom/sun/org/apache/regexp/internal/RE;->match(Lcom/sun/org/apache/regexp/internal/CharacterIterator;I)Z

    move-result p1

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->log:Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   Match: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v3, "YES"

    goto :goto_0

    :cond_0
    const-string v3, "NO"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/regexp/internal/RETestCase;->checkResult(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->shouldMatch:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sun/org/apache/regexp/internal/RETestCase;->checkParens()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    :catch_0
    move-exception p1

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->test:Lcom/sun/org/apache/regexp/internal/RETest;

    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->log:Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Matcher threw fatal error \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->test:Lcom/sun/org/apache/regexp/internal/RETest;

    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/RETestCase;->log:Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Matcher threw exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return v0
.end method
