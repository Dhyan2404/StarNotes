.class public Lcom/twelvemonkeys/util/regex/WildcardStringParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;,
        Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;
    }
.end annotation


# static fields
.field public static final ALPHABET:[C

.field public static final FREE_PASS_CHARACTER:C = '?'

.field public static final FREE_RANGE_CHARACTER:C = '*'


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;

.field public d:I

.field public e:Z

.field public f:Ljava/io/PrintStream;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x47

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->ALPHABET:[C

    return-void

    :array_0
    .array-data 2
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0xe6s
        0xf8s
        0xe5s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4es
        0x4ds
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0xc6s
        0xd8s
        0xc5s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2es
        0x5fs
        0x2ds
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0, p1, p2, v0}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;-><init>(Ljava/lang/String;ZLjava/io/PrintStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/io/PrintStream;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->b:Ljava/lang/String;

    .line 5
    iput-boolean p2, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->e:Z

    .line 6
    iput-object p3, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->f:Ljava/io/PrintStream;

    .line 7
    invoke-virtual {p0}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->a()Z

    move-result p1

    iput-boolean p1, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->a:Z

    return-void
.end method

.method public static isFreePassCharacter(C)Z
    .locals 1

    const/16 v0, 0x3f

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFreeRangeCharacter(C)Z
    .locals 1

    const/16 v0, 0x2a

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isInAlphabet(C)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->ALPHABET:[C

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-char v2, v2, v1

    if-ne p0, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static isWildcardCharacter(C)Z
    .locals 1

    invoke-static {p0}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->isFreeRangeCharacter(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->isFreePassCharacter(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final a()Z
    .locals 7

    iget-object v0, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;

    iget-object v2, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;-><init>(Lcom/twelvemonkeys/util/regex/WildcardStringParser;C)V

    iput v1, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->a:I

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->c:Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->b(Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v0

    :cond_0
    iput-object v0, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->c:Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;

    iput v1, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->a:I

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v5, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->b:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->isInAlphabet(C)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->isWildcardCharacter(C)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "one or more characters in string mask are not legal characters - aborting!"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v1

    :cond_1
    iput-object v2, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->e:Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;

    new-instance v6, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;

    invoke-direct {v6, p0, v5}, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;-><init>(Lcom/twelvemonkeys/util/regex/WildcardStringParser;C)V

    iput v4, v6, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->a:I

    iput-object v0, v6, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->c:Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;

    invoke-virtual {p0, v6}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->b(Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v2, v6

    :cond_2
    iput-object v6, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->d:Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;

    iget v0, v6, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->a:I

    iget-object v5, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    if-ne v0, v5, :cond_3

    iput-object v2, v6, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->e:Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;

    :cond_3
    add-int/lit8 v4, v4, 0x1

    move-object v0, v6

    goto :goto_0

    :cond_4
    iput v1, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->d:I

    return v3

    :cond_5
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "string mask provided are null or empty - aborting!"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v1
.end method

.method public final b(Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;)Z
    .locals 2

    iget-char v0, p1, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->b:C

    invoke-static {v0}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->isFreeRangeCharacter(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-char v0, p1, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->b:C

    invoke-static {v0}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->isFreePassCharacter(C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->c(Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final c(Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;)Z
    .locals 1

    :cond_0
    iget-object p1, p1, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->c:Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    iget-char v0, p1, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->b:C

    invoke-static {v0}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->isFreeRangeCharacter(C)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-char v0, p1, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->b:C

    invoke-static {v0}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->isFreePassCharacter(C)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    return p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;

    iget-object p0, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->b:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->isFreeRangeCharacter(C)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/twelvemonkeys/util/regex/WildcardStringParser;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/twelvemonkeys/util/regex/WildcardStringParser;

    iget-boolean v0, p1, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->a:Z

    iget-boolean v1, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->a:Z

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->b:Ljava/lang/String;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method public getStringMask()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->b:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public parseString(Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->e:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->f:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parsing \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget v2, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->d:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->d:I

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->e:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->f:Ljava/io/PrintStream;

    const-string v1, "string to be parsed is null - rejection!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return v2

    :cond_2
    new-instance v4, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;

    invoke-direct {v4, v0, v1}, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;-><init>(Lcom/twelvemonkeys/util/regex/WildcardStringParser;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->a()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->e:Z

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->f:Ljava/io/PrintStream;

    const-string v1, "one or more characters in string to be parsed are not legal characters - rejection!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    return v2

    :cond_4
    iget-boolean v1, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->a:Z

    if-nez v1, :cond_5

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "automaton is not initialized - rejection!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v2

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->e:Z

    if-eqz v1, :cond_6

    iget-object v0, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->f:Ljava/io/PrintStream;

    const-string v1, "automaton represents a trivial string mask (accepts all strings) - acceptance!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    return v3

    :cond_7
    invoke-virtual {v4}, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->d()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->e:Z

    if-eqz v1, :cond_8

    iget-object v0, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->f:Ljava/io/PrintStream;

    const-string v1, "string to be parsed is empty and not trivial automaton - rejection!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    return v2

    :cond_9
    iget-object v1, v4, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->a:[C

    aget-char v1, v1, v2

    iget-object v5, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->c:Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;

    iget-char v5, v5, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->b:C

    if-eq v1, v5, :cond_c

    invoke-static {v5}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->isWildcardCharacter(C)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    :cond_a
    iget-boolean v1, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->e:Z

    if-eqz v1, :cond_b

    iget-object v0, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->f:Ljava/io/PrintStream;

    const-string v1, "cannot enter first automaton state - rejection!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b
    return v2

    :cond_c
    :goto_0
    iget-object v1, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->c:Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;

    iput v2, v4, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->b:I

    iget-char v5, v1, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->b:C

    invoke-static {v5}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->isFreePassCharacter(C)Z

    move-result v5

    move v6, v2

    move v7, v6

    move v8, v7

    :goto_1
    invoke-virtual {v4}, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->e()I

    move-result v9

    if-ge v6, v9, :cond_30

    iget-boolean v9, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->e:Z

    if-eqz v9, :cond_d

    iget-object v9, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->f:Ljava/io/PrintStream;

    invoke-virtual {v9}, Ljava/io/PrintStream;->println()V

    :cond_d
    iget-boolean v9, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->e:Z

    const-string v10, " number of chars since last free-range state: "

    const-string v11, "\' char string index: "

    const-string v12, ", active char: \'"

    const-string v13, "parsing - index number "

    if-eqz v9, :cond_e

    iget-object v9, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->f:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->b()C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v4, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->b:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_e
    iget-boolean v9, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->e:Z

    const-string v14, "\' - no of free-pass chars read: "

    const-string v15, " \'"

    const-string v3, "parsing - state: "

    if-eqz v9, :cond_f

    iget-object v9, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->f:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p1, v3

    iget v3, v1, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v3, v1, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->b:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_f
    move-object/from16 p1, v3

    :goto_2
    iget-boolean v2, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->e:Z

    const-string v3, "parsing - hasPerformedFreeRangeMovement: "

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->f:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_10
    iget-object v2, v1, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->d:Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;

    if-nez v2, :cond_21

    iget-boolean v2, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->e:Z

    if-eqz v2, :cond_11

    iget-object v2, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->f:Ljava/io/PrintStream;

    const-string v3, "parsing - runnerState.nextState == null"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_11
    iget-char v2, v1, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->b:C

    invoke-static {v2}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->isFreeRangeCharacter(C)Z

    move-result v2

    if-eqz v2, :cond_1b

    if-eqz v8, :cond_19

    invoke-virtual {v4}, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->f()Z

    move-result v2

    if-eqz v2, :cond_15

    if-le v5, v7, :cond_13

    iget-boolean v1, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->e:Z

    if-eqz v1, :cond_12

    iget-object v0, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->f:Ljava/io/PrintStream;

    const-string v1, "no subsequent state (final state) and the state represents \'*\' - end of parsing string, but not enough characters read - rejection!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_12
    const/4 v0, 0x0

    return v0

    :cond_13
    iget-boolean v1, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->e:Z

    if-eqz v1, :cond_14

    iget-object v0, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->f:Ljava/io/PrintStream;

    const-string v1, "no subsequent state (final state) and the state represents \'*\' - end of parsing string and enough characters read - acceptance!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_14
    const/4 v2, 0x1

    return v2

    :cond_15
    const/4 v2, 0x1

    if-le v5, v7, :cond_17

    iget-boolean v3, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->e:Z

    if-eqz v3, :cond_16

    iget-object v3, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->f:Ljava/io/PrintStream;

    const-string v9, "no subsequent state (final state) and the state represents \'*\' - not the end of parsing string and not enough characters read - read next character"

    invoke-virtual {v3, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_16
    iget v3, v4, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->b:I

    add-int/2addr v3, v2

    iput v3, v4, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->b:I

    goto/16 :goto_6

    :cond_17
    iget-boolean v1, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->e:Z

    if-eqz v1, :cond_18

    iget-object v0, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->f:Ljava/io/PrintStream;

    const-string v1, "no subsequent state (final state) and the state represents \'*\' - not the end of parsing string, but enough characters read - acceptance!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_18
    const/4 v1, 0x1

    return v1

    :cond_19
    const/4 v1, 0x1

    iget-boolean v2, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->e:Z

    if-eqz v2, :cond_1a

    iget-object v0, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->f:Ljava/io/PrintStream;

    const-string v2, "no subsequent state (final state) and the state represents \'*\' - no skipping performed - acceptance!"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1a
    return v1

    :cond_1b
    invoke-virtual {v4}, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->f()Z

    move-result v2

    if-eqz v2, :cond_1f

    if-eqz v8, :cond_1d

    if-le v5, v7, :cond_1d

    iget-boolean v1, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->e:Z

    if-eqz v1, :cond_1c

    iget-object v0, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->f:Ljava/io/PrintStream;

    const-string v1, "no subsequent state (final state) and skipping has been performed and end of parsing string, but not enough characters read - rejection!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1c
    const/4 v0, 0x0

    return v0

    :cond_1d
    iget-boolean v1, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->e:Z

    if-eqz v1, :cond_1e

    iget-object v0, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->f:Ljava/io/PrintStream;

    const-string v1, "no subsequent state (final state) and the end of the string to test is reached - acceptance!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1e
    const/4 v0, 0x1

    return v0

    :cond_1f
    iget-boolean v2, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->e:Z

    if-eqz v2, :cond_20

    iget-object v2, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->f:Ljava/io/PrintStream;

    const-string v3, "parsing - escaping process..."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_20
    :goto_3
    const/4 v3, 0x1

    goto/16 :goto_7

    :cond_21
    iget-boolean v2, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->e:Z

    if-eqz v2, :cond_22

    iget-object v2, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->f:Ljava/io/PrintStream;

    const-string v9, "parsing - runnerState.nextState != null"

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_22
    iget-char v2, v1, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->b:C

    invoke-static {v2}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->isFreeRangeCharacter(C)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, v1, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->d:Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;

    const/4 v5, 0x0

    :goto_4
    if-eqz v2, :cond_23

    iget-char v7, v2, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->b:C

    invoke-static {v7}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->isFreePassCharacter(C)Z

    move-result v7

    if-eqz v7, :cond_23

    add-int/lit8 v5, v5, 0x1

    iget-object v1, v2, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->d:Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;

    const/4 v8, 0x1

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    goto :goto_4

    :cond_23
    iget-object v2, v1, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->d:Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;

    if-nez v2, :cond_29

    iget-boolean v2, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->e:Z

    if-eqz v2, :cond_24

    iget-object v2, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->f:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    :cond_24
    iget-boolean v2, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->e:Z

    if-eqz v2, :cond_25

    iget-object v2, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->f:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->b()C

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->b:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_25
    iget-boolean v2, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->e:Z

    if-eqz v2, :cond_26

    iget-object v2, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->f:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, p1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->a:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, v1, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->b:C

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_26
    iget-boolean v1, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->e:Z

    if-eqz v1, :cond_27

    iget-object v0, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->f:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_27
    if-eqz v8, :cond_28

    if-ltz v5, :cond_28

    const/4 v0, 0x1

    return v0

    :cond_28
    const/4 v0, 0x0

    return v0

    :cond_29
    const/4 v7, 0x0

    :cond_2a
    iget-object v2, v1, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->d:Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;

    iget-char v2, v2, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->b:C

    invoke-static {v2}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->isFreeRangeCharacter(C)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v1, v1, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->d:Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;

    iget v2, v4, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->b:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v4, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->b:I

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_2b
    const/4 v3, 0x1

    iget-object v2, v1, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->d:Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;

    iget-char v2, v2, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->b:C

    invoke-static {v2}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->isFreePassCharacter(C)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v1, v1, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->d:Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;

    iget v2, v4, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->b:I

    add-int/2addr v2, v3

    iput v2, v4, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->b:I

    add-int/lit8 v5, v5, 0x1

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_2c
    invoke-virtual {v4}, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->f()Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v2, v1, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->d:Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;

    iget-char v2, v2, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->b:C

    invoke-virtual {v4}, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->c()C

    move-result v3

    if-ne v2, v3, :cond_2d

    iget-object v1, v1, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->d:Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;

    iget v2, v4, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->b:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v4, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->b:I

    goto :goto_5

    :cond_2d
    const/4 v3, 0x1

    iget-object v1, v1, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->e:Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;

    if-eqz v1, :cond_2e

    iget v2, v4, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->b:I

    add-int/2addr v2, v3

    iput v2, v4, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->b:I

    goto :goto_5

    :goto_7
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_2e
    iget-boolean v1, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->e:Z

    if-eqz v1, :cond_2f

    iget-object v0, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->f:Ljava/io/PrintStream;

    const-string v1, "the next state does not represent the same character as the next character in the string to test, and there are no last-free-range-state - rejection!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2f
    const/4 v1, 0x0

    return v1

    :cond_30
    move v1, v2

    iget-boolean v2, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->e:Z

    if-eqz v2, :cond_31

    iget-object v0, v0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->f:Ljava/io/PrintStream;

    const-string v2, "finished reading parsing string and not at any final state - rejection!"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_31
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->a:Z

    const-string v2, "\n"

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":  Not initialized properly!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->c:Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":  String mask "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "      Automaton: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-eqz v1, :cond_3

    iget v3, v1, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v3, v1, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->b:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->e:Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;

    if-eqz v3, :cond_1

    iget v3, v3, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->d:Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;

    if-eqz v3, :cond_2

    const-string v3, "   -->   "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, v1, Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;->d:Lcom/twelvemonkeys/util/regex/WildcardStringParser$b;

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "      Format: <state index>: <character> (<last free state>)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      Number of strings parsed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->d:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
