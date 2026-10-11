.class public Lcom/sun/org/apache/regexp/internal/RETest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final NEW_LINE:Ljava/lang/String;

.field static final showSuccesses:Z


# instance fields
.field compiler:Lcom/sun/org/apache/regexp/internal/REDebugCompiler;

.field failures:I

.field testCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/regexp/internal/RETest;->NEW_LINE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sun/org/apache/regexp/internal/REDebugCompiler;

    invoke-direct {v0}, Lcom/sun/org/apache/regexp/internal/REDebugCompiler;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/regexp/internal/RETest;->compiler:Lcom/sun/org/apache/regexp/internal/REDebugCompiler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RETest;->testCount:I

    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RETest;->failures:I

    return-void
.end method

.method private findNextTest(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->ready()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Script error.  Line = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method private getExpectedResult(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "NO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "YES"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string p1, "Test script error!"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/RETest;->die(Ljava/lang/String;)V

    return v1
.end method

.method private getNextTestCase(Ljava/io/BufferedReader;)Lcom/sun/org/apache/regexp/internal/RETestCase;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/org/apache/regexp/internal/RETest;->findNextTest(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/BufferedReader;->ready()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    const-string v0, "ERR"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v0, 0x0

    if-nez v5, :cond_1

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sun/org/apache/regexp/internal/RETest;->getExpectedResult(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-array v7, v1, [Ljava/lang/String;

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v6, v0

    :cond_2
    move-object v7, v1

    :cond_3
    new-instance p1, Lcom/sun/org/apache/regexp/internal/RETestCase;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sun/org/apache/regexp/internal/RETestCase;-><init>(Lcom/sun/org/apache/regexp/internal/RETest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)V

    return-object p1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/sun/org/apache/regexp/internal/RETest;->test([Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static test([Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/regexp/internal/RETest;

    invoke-direct {v0}, Lcom/sun/org/apache/regexp/internal/RETest;-><init>()V

    array-length v1, p0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    aget-object p0, p0, v4

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/regexp/internal/RETest;->runInteractiveTests(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    array-length v1, p0

    if-ne v1, v4, :cond_1

    aget-object p0, p0, v3

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/regexp/internal/RETest;->runAutomatedTests(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Usage: RETest ([-i] [regex]) ([/path/to/testfile.txt])"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "By Default will run automated tests from file \'docs/RETest.txt\' ..."

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    const-string p0, "docs/RETest.txt"

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/regexp/internal/RETest;->runAutomatedTests(Ljava/lang/String;)V

    :goto_0
    iget p0, v0, Lcom/sun/org/apache/regexp/internal/RETest;->failures:I

    if-nez p0, :cond_2

    move v3, v4

    :cond_2
    return v3
.end method

.method private testPrecompiledRE()V
    .locals 4

    const/16 v0, 0x1d

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    new-instance v1, Lcom/sun/org/apache/regexp/internal/REProgram;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/regexp/internal/REProgram;-><init>([C)V

    new-instance v0, Lcom/sun/org/apache/regexp/internal/RE;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;-><init>(Lcom/sun/org/apache/regexp/internal/REProgram;)V

    const-string v1, "a*b"

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    const-string v1, "aaab"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aaab = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->showParens(Lcom/sun/org/apache/regexp/internal/RE;)V

    if-nez v1, :cond_0

    const-string v1, "\"aaab\" doesn\'t match to precompiled \"a*b\""

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/String;)V

    :cond_0
    const-string v1, "b"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "b = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->showParens(Lcom/sun/org/apache/regexp/internal/RE;)V

    if-nez v1, :cond_1

    const-string v1, "\"b\" doesn\'t match to precompiled \"a*b\""

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/String;)V

    :cond_1
    const-string v1, "c"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->showParens(Lcom/sun/org/apache/regexp/internal/RE;)V

    if-eqz v1, :cond_2

    const-string v1, "\"c\" matches to precompiled \"a*b\""

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/String;)V

    :cond_2
    const-string v1, "ccccaaaaab"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ccccaaaaab = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->showParens(Lcom/sun/org/apache/regexp/internal/RE;)V

    if-nez v1, :cond_3

    const-string v0, "\"ccccaaaaab\" doesn\'t match to precompiled \"a*b\""

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/String;)V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 2
        0x7cs
        0x0s
        0x1as
        0x7cs
        0x0s
        0xds
        0x41s
        0x1s
        0x4s
        0x61s
        0x7cs
        0x0s
        0x3s
        0x47s
        0x0s
        -0xas
        0x7cs
        0x0s
        0x3s
        0x4es
        0x0s
        0x3s
        0x41s
        0x1s
        0x4s
        0x62s
        0x45s
        0x0s
        0x0s
    .end array-data
.end method

.method private testSplitAndGrep()V
    .locals 8

    const-string v0, "yyyy"

    const-string v1, "zzz"

    const-string v2, "xxxx"

    filled-new-array {v2, v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sun/org/apache/regexp/internal/RE;

    const-string v3, "a*b"

    invoke-direct {v1, v3}, Lcom/sun/org/apache/regexp/internal/RE;-><init>(Ljava/lang/String;)V

    const-string v3, "xxxxaabxxxxbyyyyaaabzzz"

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/regexp/internal/RE;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    array-length v6, v1

    if-ge v4, v6, :cond_0

    aget-object v5, v0, v4

    aget-object v6, v1, v4

    const-string v7, "Wrong splitted part"

    invoke-virtual {p0, v7, v5, v6}, Lcom/sun/org/apache/regexp/internal/RETest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    array-length v0, v1

    const-string v4, "Wrong number of splitted parts"

    invoke-virtual {p0, v4, v5, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->assertEquals(Ljava/lang/String;II)V

    new-instance v0, Lcom/sun/org/apache/regexp/internal/RE;

    const-string v4, "x+"

    invoke-direct {v0, v4}, Lcom/sun/org/apache/regexp/internal/RE;-><init>(Ljava/lang/String;)V

    filled-new-array {v2, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;->grep([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    :goto_1
    array-length v1, v0

    if-ge v3, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    aget-object v1, v2, v3

    aget-object v4, v0, v3

    const-string v5, "Grep fails"

    invoke-virtual {p0, v5, v1, v4}, Lcom/sun/org/apache/regexp/internal/RETest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "Wrong number of string found by grep"

    array-length v0, v0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->assertEquals(Ljava/lang/String;II)V

    return-void
.end method

.method private testSubst()V
    .locals 6

    new-instance v0, Lcom/sun/org/apache/regexp/internal/RE;

    const-string v1, "a*b"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;-><init>(Ljava/lang/String;)V

    const-string v1, "aaaabfooaaabgarplyaaabwackyb"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/regexp/internal/RE;->subst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wrong result of substitution in \"a*b\""

    const-string v2, "-foo-garply-wacky-"

    invoke-virtual {p0, v1, v2, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sun/org/apache/regexp/internal/RE;

    const-string v1, "http://[\\.\\w\\-\\?/~_@&=%]+"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;-><init>(Ljava/lang/String;)V

    const-string v1, "visit us: http://www.apache.org!"

    const-string v2, "1234<a href=\"$0\">$0</a>"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/regexp/internal/RE;->subst(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "visit us: 1234<a href=\"http://www.apache.org\">http://www.apache.org</a>!"

    const-string v2, "Wrong subst() result"

    invoke-virtual {p0, v2, v1, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sun/org/apache/regexp/internal/RE;

    const-string v1, "(.*?)=(.*)"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;-><init>(Ljava/lang/String;)V

    const-string v1, "variable=value"

    const-string v4, "$1_test_$212"

    invoke-virtual {v0, v1, v4, v3}, Lcom/sun/org/apache/regexp/internal/RE;->subst(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "variable_test_value12"

    invoke-virtual {p0, v2, v1, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sun/org/apache/regexp/internal/RE;

    const-string v1, "^a$"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;-><init>(Ljava/lang/String;)V

    const-string v4, "a"

    const-string v5, "b"

    invoke-virtual {v0, v4, v5, v3}, Lcom/sun/org/apache/regexp/internal/RE;->subst(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v5, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sun/org/apache/regexp/internal/RE;

    invoke-direct {v0, v1, v3}, Lcom/sun/org/apache/regexp/internal/RE;-><init>(Ljava/lang/String;I)V

    const-string v1, "\r\na\r\n"

    invoke-virtual {v0, v1, v5, v3}, Lcom/sun/org/apache/regexp/internal/RE;->subst(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r\nb\r\n"

    invoke-virtual {p0, v2, v1, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public assertEquals(Ljava/lang/String;II)V
    .locals 1

    if-eq p2, p3, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (expected \""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\", actual \""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (expected \""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", actual \""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public die(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FATAL ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public fail(Ljava/lang/String;)V
    .locals 4

    .line 3
    iget v0, p0, Lcom/sun/org/apache/regexp/internal/RETest;->failures:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RETest;->failures:I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sun/org/apache/regexp/internal/RETest;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    const-string v0, "*******************************************************"

    .line 5
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    const-string v3, "*********************  FAILURE!  **********************"

    .line 6
    invoke-virtual {p0, v3}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/sun/org/apache/regexp/internal/RETest;->compiler:Lcom/sun/org/apache/regexp/internal/REDebugCompiler;

    if-eqz p1, :cond_0

    .line 12
    new-instance p1, Ljava/io/PrintWriter;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 13
    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RETest;->compiler:Lcom/sun/org/apache/regexp/internal/REDebugCompiler;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/regexp/internal/REDebugCompiler;->dumpProgram(Ljava/io/PrintWriter;)V

    .line 14
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public fail(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/String;)V

    return-void
.end method

.method public runAutomatedTests(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/sun/org/apache/regexp/internal/RETest;->testPrecompiledRE()V

    invoke-direct {p0}, Lcom/sun/org/apache/regexp/internal/RETest;->testSplitAndGrep()V

    invoke-direct {p0}, Lcom/sun/org/apache/regexp/internal/RETest;->testSubst()V

    invoke-virtual {p0}, Lcom/sun/org/apache/regexp/internal/RETest;->testOther()V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance p1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->ready()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/regexp/internal/RETest;->getNextTestCase(Ljava/io/BufferedReader;)Lcom/sun/org/apache/regexp/internal/RETestCase;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sun/org/apache/regexp/internal/RETestCase;->runTest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sun/org/apache/regexp/internal/RETest;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Match time = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    iget p1, p0, Lcom/sun/org/apache/regexp/internal/RETest;->failures:I

    if-lez p1, :cond_2

    const-string p1, "*************** THERE ARE FAILURES! *******************"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tests complete.  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sun/org/apache/regexp/internal/RETest;->testCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " tests, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sun/org/apache/regexp/internal/RETest;->failures:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " failure(s)."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public runInteractiveTests(Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    new-instance v1, Lcom/sun/org/apache/regexp/internal/RE;

    invoke-direct {v1}, Lcom/sun/org/apache/regexp/internal/RE;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RETest;->compiler:Lcom/sun/org/apache/regexp/internal/REDebugCompiler;

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->compile(Ljava/lang/String;)Lcom/sun/org/apache/regexp/internal/REProgram;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/regexp/internal/RE;->setProgram(Lcom/sun/org/apache/regexp/internal/REProgram;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sun/org/apache/regexp/internal/RETest;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    new-instance p1, Ljava/io/PrintWriter;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RETest;->compiler:Lcom/sun/org/apache/regexp/internal/REDebugCompiler;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/regexp/internal/REDebugCompiler;->dumpProgram(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_2

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->flush()V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Match successful."

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "Match failed."

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/RETest;->showParens(Lcom/sun/org/apache/regexp/internal/RE;)V

    goto :goto_0

    :cond_1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public say(Ljava/lang/String;)V
    .locals 0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public showParens(Lcom/sun/org/apache/regexp/internal/RE;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/sun/org/apache/regexp/internal/RE;->getParenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/regexp/internal/RE;->getParen(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public testOther()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/regexp/internal/RE;

    const-string v1, "(a*)b"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;-><init>(Ljava/lang/String;)V

    const-string v1, "Serialized/deserialized (a*)b"

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/regexp/internal/RE;

    const-string v2, "aaab"

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "Did not match \'aaab\' with deserialized RE."

    const-string v5, "aaaab = true"

    if-nez v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v5}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->showParens(Lcom/sun/org/apache/regexp/internal/RE;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    const-string v3, "Deserialized (a*)b"

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/regexp/internal/RE;

    invoke-virtual {v0}, Lcom/sun/org/apache/regexp/internal/RE;->getParenCount()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Has parens after deserialization."

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v2}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v5}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->showParens(Lcom/sun/org/apache/regexp/internal/RE;)V

    :goto_1
    new-instance v0, Lcom/sun/org/apache/regexp/internal/RE;

    const-string v1, "abc(\\w*)"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;-><init>(Ljava/lang/String;)V

    const-string v1, "MATCH_CASEINDEPENDENT abc(\\w*)"

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;->setMatchFlags(I)V

    const-string v2, "abc(d*)"

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    const-string v2, "abcddd"

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Did not match \'abcddd\'."

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v2, "abcddd = true"

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->showParens(Lcom/sun/org/apache/regexp/internal/RE;)V

    :goto_2
    const-string v2, "aBcDDdd"

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "Did not match \'aBcDDdd\'."

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string v2, "aBcDDdd = true"

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->showParens(Lcom/sun/org/apache/regexp/internal/RE;)V

    :goto_3
    const-string v2, "ABCDDDDD"

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v0, "Did not match \'ABCDDDDD\'."

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const-string v2, "ABCDDDDD = true"

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->showParens(Lcom/sun/org/apache/regexp/internal/RE;)V

    :goto_4
    new-instance v0, Lcom/sun/org/apache/regexp/internal/RE;

    const-string v2, "(A*)b\\1"

    invoke-direct {v0, v2}, Lcom/sun/org/apache/regexp/internal/RE;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;->setMatchFlags(I)V

    const-string v2, "AaAaaaBAAAAAA"

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v0, "Did not match \'AaAaaaBAAAAAA\'."

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    const-string v2, "AaAaaaBAAAAAA = true"

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->showParens(Lcom/sun/org/apache/regexp/internal/RE;)V

    :goto_5
    new-instance v0, Lcom/sun/org/apache/regexp/internal/RE;

    const-string v2, "[A-Z]*"

    invoke-direct {v0, v2}, Lcom/sun/org/apache/regexp/internal/RE;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;->setMatchFlags(I)V

    const-string v1, "CaBgDe12"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v0, "Did not match \'CaBgDe12\'."

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    const-string v1, "CaBgDe12 = true"

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/RETest;->say(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->showParens(Lcom/sun/org/apache/regexp/internal/RE;)V

    :goto_6
    new-instance v0, Lcom/sun/org/apache/regexp/internal/RE;

    const-string v1, "^abc$"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/regexp/internal/RE;-><init>(Ljava/lang/String;I)V

    const-string v1, "\nabc"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "\"\\nabc\" doesn\'t match \"^abc$\""

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/String;)V

    :cond_8
    const-string v1, "\rabc"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "\"\\rabc\" doesn\'t match \"^abc$\""

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/String;)V

    :cond_9
    const-string v1, "\r\nabc"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "\"\\r\\nabc\" doesn\'t match \"^abc$\""

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/String;)V

    :cond_a
    const-string v1, "\u0085abc"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "\"\\u0085abc\" doesn\'t match \"^abc$\""

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/String;)V

    :cond_b
    const-string v1, "\u2028abc"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "\"\\u2028abc\" doesn\'t match \"^abc$\""

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/String;)V

    :cond_c
    const-string v1, "\u2029abc"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "\"\\u2029abc\" doesn\'t match \"^abc$\""

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/String;)V

    :cond_d
    new-instance v0, Lcom/sun/org/apache/regexp/internal/RE;

    const-string v1, "^a.*b$"

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/regexp/internal/RE;-><init>(Ljava/lang/String;I)V

    const-string v1, "a\nb"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "\"a\\nb\" matches \"^a.*b$\""

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/String;)V

    :cond_e
    const-string v1, "a\rb"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "\"a\\rb\" matches \"^a.*b$\""

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/String;)V

    :cond_f
    const-string v1, "a\r\nb"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "\"a\\r\\nb\" matches \"^a.*b$\""

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/String;)V

    :cond_10
    const-string v1, "a\u0085b"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "\"a\\u0085b\" matches \"^a.*b$\""

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/String;)V

    :cond_11
    const-string v1, "a\u2028b"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "\"a\\u2028b\" matches \"^a.*b$\""

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/String;)V

    :cond_12
    const-string v1, "a\u2029b"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "\"a\\u2029b\" matches \"^a.*b$\""

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RETest;->fail(Ljava/lang/String;)V

    :cond_13
    return-void
.end method
