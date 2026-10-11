.class public Lcom/sun/org/apache/regexp/internal/RE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final E_ALNUM:C = 'w'

.field static final E_BOUND:C = 'b'

.field static final E_DIGIT:C = 'd'

.field static final E_NALNUM:C = 'W'

.field static final E_NBOUND:C = 'B'

.field static final E_NDIGIT:C = 'D'

.field static final E_NSPACE:C = 'S'

.field static final E_SPACE:C = 's'

.field public static final MATCH_CASEINDEPENDENT:I = 0x1

.field public static final MATCH_MULTILINE:I = 0x2

.field public static final MATCH_NORMAL:I = 0x0

.field public static final MATCH_SINGLELINE:I = 0x4

.field static final MAX_PAREN:I = 0x10

.field static final OP_ANY:C = '.'

.field static final OP_ANYOF:C = '['

.field static final OP_ATOM:C = 'A'

.field static final OP_BACKREF:C = '#'

.field static final OP_BOL:C = '^'

.field static final OP_BRANCH:C = '|'

.field static final OP_CLOSE:C = ')'

.field static final OP_CLOSE_CLUSTER:C = '>'

.field static final OP_END:C = 'E'

.field static final OP_EOL:C = '$'

.field static final OP_ESCAPE:C = '\\'

.field static final OP_GOTO:C = 'G'

.field static final OP_MAYBE:C = '?'

.field static final OP_NOTHING:C = 'N'

.field static final OP_OPEN:C = '('

.field static final OP_OPEN_CLUSTER:C = '<'

.field static final OP_PLUS:C = '+'

.field static final OP_POSIXCLASS:C = 'P'

.field static final OP_RELUCTANTMAYBE:C = '/'

.field static final OP_RELUCTANTPLUS:C = '='

.field static final OP_RELUCTANTSTAR:C = '8'

.field static final OP_STAR:C = '*'

.field static final POSIX_CLASS_ALNUM:C = 'w'

.field static final POSIX_CLASS_ALPHA:C = 'a'

.field static final POSIX_CLASS_BLANK:C = 'b'

.field static final POSIX_CLASS_CNTRL:C = 'c'

.field static final POSIX_CLASS_DIGIT:C = 'd'

.field static final POSIX_CLASS_GRAPH:C = 'g'

.field static final POSIX_CLASS_JPART:C = 'k'

.field static final POSIX_CLASS_JSTART:C = 'j'

.field static final POSIX_CLASS_LOWER:C = 'l'

.field static final POSIX_CLASS_PRINT:C = 'p'

.field static final POSIX_CLASS_PUNCT:C = '!'

.field static final POSIX_CLASS_SPACE:C = 's'

.field static final POSIX_CLASS_UPPER:C = 'u'

.field static final POSIX_CLASS_XDIGIT:C = 'x'

.field public static final REPLACE_ALL:I = 0x0

.field public static final REPLACE_BACKREFERENCES:I = 0x2

.field public static final REPLACE_FIRSTONLY:I = 0x1

.field static final maxNode:I = 0x10000

.field static final nodeSize:I = 0x3

.field static final offsetNext:I = 0x2

.field static final offsetOpcode:I = 0x0

.field static final offsetOpdata:I = 0x1


# instance fields
.field transient end0:I

.field transient end1:I

.field transient end2:I

.field transient endBackref:[I

.field transient endn:[I

.field matchFlags:I

.field maxParen:I

.field transient parenCount:I

.field program:Lcom/sun/org/apache/regexp/internal/REProgram;

.field transient search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

.field transient start0:I

.field transient start1:I

.field transient start2:I

.field transient startBackref:[I

.field transient startn:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;-><init>(Lcom/sun/org/apache/regexp/internal/REProgram;I)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/regexp/internal/REProgram;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/regexp/internal/RE;-><init>(Lcom/sun/org/apache/regexp/internal/REProgram;I)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/regexp/internal/REProgram;I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 5
    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RE;->maxParen:I

    .line 6
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/RE;->setProgram(Lcom/sun/org/apache/regexp/internal/REProgram;)V

    .line 7
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/regexp/internal/RE;->setMatchFlags(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/regexp/internal/RESyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/regexp/internal/RE;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/regexp/internal/RESyntaxException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sun/org/apache/regexp/internal/RECompiler;

    invoke-direct {v0}, Lcom/sun/org/apache/regexp/internal/RECompiler;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->compile(Ljava/lang/String;)Lcom/sun/org/apache/regexp/internal/REProgram;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/regexp/internal/RE;-><init>(Lcom/sun/org/apache/regexp/internal/REProgram;)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/regexp/internal/RE;->setMatchFlags(I)V

    return-void
.end method

.method private final allocParens()V
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/regexp/internal/RE;->maxParen:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sun/org/apache/regexp/internal/RE;->startn:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/org/apache/regexp/internal/RE;->endn:[I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/regexp/internal/RE;->maxParen:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/RE;->startn:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/RE;->endn:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private compareChars(CCZ)I
    .locals 0

    if-eqz p3, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    :cond_0
    sub-int/2addr p1, p2

    return p1
.end method

.method private isNewline(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result p0

    const/16 p1, 0xa

    if-eq p0, p1, :cond_1

    const/16 p1, 0xd

    if-eq p0, p1, :cond_1

    const/16 p1, 0x85

    if-eq p0, p1, :cond_1

    const/16 p1, 0x2028

    if-eq p0, p1, :cond_1

    const/16 p1, 0x2029

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static simplePatternToFullRegularExpression(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x24

    if-eq v2, v3, :cond_0

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_0

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    goto :goto_1

    :pswitch_0
    const-string v2, ".*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_0
    :pswitch_1
    const/16 v3, 0x5c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7b
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getMatchFlags()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/regexp/internal/RE;->matchFlags:I

    return p0
.end method

.method public getParen(I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/regexp/internal/RE;->parenCount:I

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/RE;->getParenStart(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/RE;->getParenEnd(I)I

    move-result p0

    invoke-interface {v1, v0, p0}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getParenCount()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/regexp/internal/RE;->parenCount:I

    return p0
.end method

.method public final getParenEnd(I)I
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/regexp/internal/RE;->parenCount:I

    if-ge p1, v0, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RE;->endn:[I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/regexp/internal/RE;->allocParens()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/RE;->endn:[I

    aget p0, p0, p1

    return p0

    :cond_1
    iget p0, p0, Lcom/sun/org/apache/regexp/internal/RE;->end2:I

    return p0

    :cond_2
    iget p0, p0, Lcom/sun/org/apache/regexp/internal/RE;->end1:I

    return p0

    :cond_3
    iget p0, p0, Lcom/sun/org/apache/regexp/internal/RE;->end0:I

    return p0

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method public final getParenLength(I)I
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/regexp/internal/RE;->parenCount:I

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/RE;->getParenEnd(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/RE;->getParenStart(I)I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final getParenStart(I)I
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/regexp/internal/RE;->parenCount:I

    if-ge p1, v0, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RE;->startn:[I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/regexp/internal/RE;->allocParens()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/RE;->startn:[I

    aget p0, p0, p1

    return p0

    :cond_1
    iget p0, p0, Lcom/sun/org/apache/regexp/internal/RE;->start2:I

    return p0

    :cond_2
    iget p0, p0, Lcom/sun/org/apache/regexp/internal/RE;->start1:I

    return p0

    :cond_3
    iget p0, p0, Lcom/sun/org/apache/regexp/internal/RE;->start0:I

    return p0

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method public getProgram()Lcom/sun/org/apache/regexp/internal/REProgram;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/RE;->program:Lcom/sun/org/apache/regexp/internal/REProgram;

    return-object p0
.end method

.method public grep([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object p0
.end method

.method public internalError(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    new-instance p0, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RE internal error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public match(Lcom/sun/org/apache/regexp/internal/CharacterIterator;I)Z
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RE;->program:Lcom/sun/org/apache/regexp/internal/REProgram;

    if-nez v0, :cond_0

    const-string v0, "No RE program to run!"

    .line 3
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RE;->internalError(Ljava/lang/String;)V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    .line 5
    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RE;->program:Lcom/sun/org/apache/regexp/internal/REProgram;

    iget-object v0, v0, Lcom/sun/org/apache/regexp/internal/REProgram;->prefix:[C

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    :goto_0
    add-int/lit8 v0, p2, -0x1

    .line 6
    invoke-interface {p1, v0}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->isEnd(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/regexp/internal/RE;->matchAt(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return v1

    .line 8
    :cond_3
    iget v3, p0, Lcom/sun/org/apache/regexp/internal/RE;->matchFlags:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    move v3, v1

    .line 9
    :goto_1
    array-length v4, v0

    add-int/2addr v4, p2

    sub-int/2addr v4, v2

    invoke-interface {p1, v4}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->isEnd(I)Z

    move-result v4

    if-nez v4, :cond_9

    move v4, p2

    move v5, v1

    :goto_2
    add-int/lit8 v6, v4, 0x1

    .line 10
    invoke-interface {p1, v4}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result v4

    add-int/lit8 v7, v5, 0x1

    aget-char v5, v0, v5

    invoke-direct {p0, v4, v5, v3}, Lcom/sun/org/apache/regexp/internal/RE;->compareChars(CCZ)I

    move-result v4

    if-nez v4, :cond_5

    move v4, v2

    goto :goto_3

    :cond_5
    move v4, v1

    :goto_3
    if-eqz v4, :cond_7

    .line 11
    array-length v4, v0

    if-lt v7, v4, :cond_6

    goto :goto_4

    :cond_6
    move v4, v6

    move v5, v7

    goto :goto_2

    .line 12
    :cond_7
    :goto_4
    array-length v4, v0

    if-ne v7, v4, :cond_8

    .line 13
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/regexp/internal/RE;->matchAt(I)Z

    move-result v4

    if-eqz v4, :cond_8

    return v2

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_9
    return v1
.end method

.method public match(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public match(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/sun/org/apache/regexp/internal/StringCharacterIterator;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/regexp/internal/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/regexp/internal/RE;->match(Lcom/sun/org/apache/regexp/internal/CharacterIterator;I)Z

    move-result p0

    return p0
.end method

.method public matchAt(I)Z
    .locals 5

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RE;->start0:I

    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RE;->end0:I

    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RE;->start1:I

    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RE;->end1:I

    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RE;->start2:I

    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RE;->end2:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/org/apache/regexp/internal/RE;->startn:[I

    iput-object v1, p0, Lcom/sun/org/apache/regexp/internal/RE;->endn:[I

    const/4 v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/regexp/internal/RE;->parenCount:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/sun/org/apache/regexp/internal/RE;->setParenStart(II)V

    iget-object v3, p0, Lcom/sun/org/apache/regexp/internal/RE;->program:Lcom/sun/org/apache/regexp/internal/REProgram;

    iget v3, v3, Lcom/sun/org/apache/regexp/internal/REProgram;->flags:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sun/org/apache/regexp/internal/RE;->maxParen:I

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/sun/org/apache/regexp/internal/RE;->startBackref:[I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/sun/org/apache/regexp/internal/RE;->endBackref:[I

    :cond_0
    const/high16 v3, 0x10000

    invoke-virtual {p0, v2, v3, p1}, Lcom/sun/org/apache/regexp/internal/RE;->matchNodes(III)I

    move-result p1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, v2, p1}, Lcom/sun/org/apache/regexp/internal/RE;->setParenEnd(II)V

    return v1

    :cond_1
    iput v2, p0, Lcom/sun/org/apache/regexp/internal/RE;->parenCount:I

    return v2
.end method

.method public matchNodes(III)I
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sun/org/apache/regexp/internal/RE;->program:Lcom/sun/org/apache/regexp/internal/REProgram;

    iget-object v1, v1, Lcom/sun/org/apache/regexp/internal/REProgram;->instruction:[C

    move/from16 v2, p1

    move/from16 v3, p3

    :goto_0
    const/4 v4, -0x1

    move/from16 v5, p2

    if-ge v2, v5, :cond_4c

    add-int/lit8 v6, v2, 0x0

    aget-char v6, v1, v6

    add-int/lit8 v7, v2, 0x2

    aget-char v7, v1, v7

    int-to-short v7, v7

    add-int/2addr v7, v2

    add-int/lit8 v8, v2, 0x1

    aget-char v8, v1, v8

    const/16 v9, 0x23

    const/4 v11, 0x1

    if-eq v6, v9, :cond_44

    const/16 v9, 0x24

    const/4 v12, 0x2

    if-eq v6, v9, :cond_42

    const/16 v9, 0x28

    const/high16 v13, 0x10000

    if-eq v6, v9, :cond_3e

    const/16 v9, 0x29

    if-eq v6, v9, :cond_3a

    const/16 v9, 0x2e

    if-eq v6, v9, :cond_36

    const/16 v9, 0x2f

    if-eq v6, v9, :cond_32

    const/16 v9, 0x38

    if-eq v6, v9, :cond_30

    const/16 v9, 0x41

    if-eq v6, v9, :cond_2b

    const/16 v14, 0x45

    if-eq v6, v14, :cond_2a

    const/16 v14, 0x47

    if-eq v6, v14, :cond_4a

    const/16 v14, 0x4e

    if-eq v6, v14, :cond_4a

    const/16 v14, 0x50

    const/16 v15, 0x77

    const/16 v10, 0x73

    if-eq v6, v14, :cond_1d

    const/16 v9, 0x5e

    if-eq v6, v9, :cond_1b

    const/16 v9, 0x7c

    if-eq v6, v9, :cond_17

    const/16 v9, 0x5b

    if-eq v6, v9, :cond_12

    const/16 v9, 0x5c

    const-string v12, "\'"

    if-eq v6, v9, :cond_2

    packed-switch v6, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid opcode \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/regexp/internal/RE;->internalError(Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_0
    :pswitch_0
    add-int/lit8 v1, v2, 0x3

    invoke-virtual {v0, v1, v7, v3}, Lcom/sun/org/apache/regexp/internal/RE;->matchNodes(III)I

    move-result v3

    if-eq v3, v4, :cond_1

    invoke-virtual {v0, v7, v13, v3}, Lcom/sun/org/apache/regexp/internal/RE;->matchNodes(III)I

    move-result v1

    if-eq v1, v4, :cond_0

    return v1

    :cond_1
    return v4

    :pswitch_1
    invoke-virtual {v0, v7, v13, v3}, Lcom/sun/org/apache/regexp/internal/RE;->matchNodes(III)I

    move-result v0

    return v0

    :cond_2
    const/16 v2, 0x42

    const/16 v6, 0x62

    if-eq v8, v2, :cond_d

    const/16 v2, 0x57

    const/16 v9, 0x53

    const/16 v13, 0x44

    const/16 v14, 0x64

    if-eq v8, v13, :cond_3

    if-eq v8, v9, :cond_3

    if-eq v8, v2, :cond_3

    if-eq v8, v6, :cond_d

    if-eq v8, v14, :cond_3

    if-eq v8, v10, :cond_3

    if-eq v8, v15, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized escape \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/regexp/internal/RE;->internalError(Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_3
    iget-object v6, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v6, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->isEnd(I)Z

    move-result v6

    if-eqz v6, :cond_4

    return v4

    :cond_4
    iget-object v6, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v6, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result v6

    if-eq v8, v13, :cond_b

    if-eq v8, v9, :cond_9

    if-eq v8, v2, :cond_5

    if-eq v8, v14, :cond_b

    if-eq v8, v10, :cond_9

    if-eq v8, v15, :cond_5

    goto/16 :goto_12

    :cond_5
    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_7

    const/16 v2, 0x5f

    if-ne v6, v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    move v2, v11

    :goto_2
    if-ne v8, v15, :cond_8

    move v10, v11

    goto :goto_3

    :cond_8
    const/4 v10, 0x0

    :goto_3
    if-eq v2, v10, :cond_38

    return v4

    :cond_9
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-ne v8, v10, :cond_a

    move v10, v11

    goto :goto_4

    :cond_a
    const/4 v10, 0x0

    :goto_4
    if-eq v2, v10, :cond_38

    return v4

    :cond_b
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-ne v8, v14, :cond_c

    move v10, v11

    goto :goto_5

    :cond_c
    const/4 v10, 0x0

    :goto_5
    if-eq v2, v10, :cond_38

    return v4

    :cond_d
    const/16 v2, 0xa

    if-nez v3, :cond_e

    move v9, v2

    goto :goto_6

    :cond_e
    iget-object v9, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    add-int/lit8 v10, v3, -0x1

    invoke-interface {v9, v10}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result v9

    :goto_6
    iget-object v10, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v10, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->isEnd(I)Z

    move-result v10

    if-eqz v10, :cond_f

    goto :goto_7

    :cond_f
    iget-object v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v2, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result v2

    :goto_7
    invoke-static {v9}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v9

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-ne v9, v2, :cond_10

    move v2, v11

    goto :goto_8

    :cond_10
    const/4 v2, 0x0

    :goto_8
    if-ne v8, v6, :cond_11

    move v10, v11

    goto :goto_9

    :cond_11
    const/4 v10, 0x0

    :goto_9
    if-ne v2, v10, :cond_4a

    return v4

    :cond_12
    iget-object v6, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v6, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->isEnd(I)Z

    move-result v6

    if-eqz v6, :cond_13

    return v4

    :cond_13
    iget-object v6, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v6, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result v6

    iget v9, v0, Lcom/sun/org/apache/regexp/internal/RE;->matchFlags:I

    and-int/2addr v9, v11

    if-eqz v9, :cond_14

    move v9, v11

    goto :goto_a

    :cond_14
    const/4 v9, 0x0

    :goto_a
    add-int/lit8 v2, v2, 0x3

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v2

    move v10, v2

    const/4 v2, 0x0

    :goto_b
    if-nez v2, :cond_16

    if-ge v10, v8, :cond_16

    add-int/lit8 v2, v10, 0x1

    aget-char v10, v1, v10

    add-int/lit8 v12, v2, 0x1

    aget-char v2, v1, v2

    invoke-direct {v0, v6, v10, v9}, Lcom/sun/org/apache/regexp/internal/RE;->compareChars(CCZ)I

    move-result v10

    if-ltz v10, :cond_15

    invoke-direct {v0, v6, v2, v9}, Lcom/sun/org/apache/regexp/internal/RE;->compareChars(CCZ)I

    move-result v2

    if-gtz v2, :cond_15

    move v2, v11

    goto :goto_c

    :cond_15
    const/4 v2, 0x0

    :goto_c
    move v10, v12

    goto :goto_b

    :cond_16
    if-nez v2, :cond_38

    return v4

    :cond_17
    add-int/lit8 v7, v7, 0x0

    aget-char v6, v1, v7

    if-eq v6, v9, :cond_18

    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_18
    add-int/lit8 v5, v2, 0x3

    invoke-virtual {v0, v5, v13, v3}, Lcom/sun/org/apache/regexp/internal/RE;->matchNodes(III)I

    move-result v5

    if-eq v5, v4, :cond_19

    return v5

    :cond_19
    add-int/lit8 v5, v2, 0x2

    aget-char v5, v1, v5

    int-to-short v5, v5

    add-int/2addr v2, v5

    if-eqz v5, :cond_1a

    add-int/lit8 v5, v2, 0x0

    aget-char v5, v1, v5

    if-eq v5, v9, :cond_18

    :cond_1a
    return v4

    :cond_1b
    if-eqz v3, :cond_4a

    iget v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->matchFlags:I

    and-int/2addr v2, v12

    if-ne v2, v12, :cond_1c

    if-lez v3, :cond_1c

    add-int/lit8 v2, v3, -0x1

    invoke-direct {v0, v2}, Lcom/sun/org/apache/regexp/internal/RE;->isNewline(I)Z

    move-result v2

    if-nez v2, :cond_4a

    :cond_1c
    return v4

    :cond_1d
    iget-object v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v2, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->isEnd(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    return v4

    :cond_1e
    const/16 v2, 0x21

    if-eq v8, v2, :cond_29

    const/16 v2, 0x67

    if-eq v8, v2, :cond_28

    const/16 v2, 0x70

    const/16 v6, 0xf

    if-eq v8, v2, :cond_27

    if-eq v8, v10, :cond_26

    const/16 v2, 0x75

    if-eq v8, v2, :cond_25

    if-eq v8, v15, :cond_24

    const/16 v2, 0x78

    if-eq v8, v2, :cond_1f

    packed-switch v8, :pswitch_data_1

    packed-switch v8, :pswitch_data_2

    const-string v2, "Bad posix class"

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/regexp/internal/RE;->internalError(Ljava/lang/String;)V

    goto/16 :goto_12

    :pswitch_2
    iget-object v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v2, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getType(C)I

    move-result v2

    if-eq v2, v12, :cond_38

    return v4

    :pswitch_3
    iget-object v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v2, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_38

    return v4

    :pswitch_4
    iget-object v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v2, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v2

    if-nez v2, :cond_38

    return v4

    :pswitch_5
    iget-object v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v2, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_38

    return v4

    :pswitch_6
    iget-object v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v2, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getType(C)I

    move-result v2

    if-eq v2, v6, :cond_38

    return v4

    :pswitch_7
    iget-object v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v2, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-nez v2, :cond_38

    return v4

    :pswitch_8
    iget-object v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v2, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_38

    return v4

    :cond_1f
    iget-object v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v2, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result v2

    const/16 v6, 0x30

    if-lt v2, v6, :cond_20

    iget-object v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v2, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result v2

    const/16 v6, 0x39

    if-le v2, v6, :cond_22

    :cond_20
    iget-object v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v2, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result v2

    const/16 v6, 0x61

    if-lt v2, v6, :cond_21

    iget-object v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v2, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result v2

    const/16 v6, 0x66

    if-le v2, v6, :cond_22

    :cond_21
    iget-object v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v2, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result v2

    if-lt v2, v9, :cond_23

    iget-object v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v2, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result v2

    const/16 v6, 0x46

    if-gt v2, v6, :cond_23

    :cond_22
    move v10, v11

    goto :goto_d

    :cond_23
    const/4 v10, 0x0

    :goto_d
    if-nez v10, :cond_38

    return v4

    :cond_24
    iget-object v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v2, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_38

    return v4

    :cond_25
    iget-object v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v2, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getType(C)I

    move-result v2

    if-eq v2, v11, :cond_38

    return v4

    :cond_26
    iget-object v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v2, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_38

    return v4

    :cond_27
    iget-object v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v2, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getType(C)I

    move-result v2

    if-ne v2, v6, :cond_38

    return v4

    :cond_28
    iget-object v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v2, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getType(C)I

    move-result v2

    packed-switch v2, :pswitch_data_3

    return v4

    :cond_29
    iget-object v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v2, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getType(C)I

    move-result v2

    packed-switch v2, :pswitch_data_4

    return v4

    :cond_2a
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sun/org/apache/regexp/internal/RE;->setParenEnd(II)V

    return v3

    :cond_2b
    iget-object v6, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v6, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->isEnd(I)Z

    move-result v6

    if-eqz v6, :cond_2c

    return v4

    :cond_2c
    add-int/lit8 v2, v2, 0x3

    iget-object v6, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    add-int v9, v8, v3

    sub-int/2addr v9, v11

    invoke-interface {v6, v9}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->isEnd(I)Z

    move-result v6

    if-eqz v6, :cond_2d

    return v4

    :cond_2d
    iget v6, v0, Lcom/sun/org/apache/regexp/internal/RE;->matchFlags:I

    and-int/2addr v6, v11

    if-eqz v6, :cond_2e

    goto :goto_e

    :cond_2e
    const/4 v11, 0x0

    :goto_e
    const/4 v10, 0x0

    :goto_f
    if-ge v10, v8, :cond_4a

    iget-object v6, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    add-int/lit8 v9, v3, 0x1

    invoke-interface {v6, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result v3

    add-int v6, v2, v10

    aget-char v6, v1, v6

    invoke-direct {v0, v3, v6, v11}, Lcom/sun/org/apache/regexp/internal/RE;->compareChars(CCZ)I

    move-result v3

    if-eqz v3, :cond_2f

    return v4

    :cond_2f
    add-int/lit8 v10, v10, 0x1

    move v3, v9

    goto :goto_f

    :cond_30
    invoke-virtual {v0, v7, v13, v3}, Lcom/sun/org/apache/regexp/internal/RE;->matchNodes(III)I

    move-result v1

    if-eq v1, v4, :cond_31

    return v1

    :cond_31
    add-int/lit8 v1, v2, 0x3

    invoke-virtual {v0, v1, v7, v3}, Lcom/sun/org/apache/regexp/internal/RE;->matchNodes(III)I

    move-result v3

    if-ne v3, v4, :cond_30

    return v4

    :cond_32
    const/4 v10, 0x0

    :goto_10
    invoke-virtual {v0, v7, v13, v3}, Lcom/sun/org/apache/regexp/internal/RE;->matchNodes(III)I

    move-result v1

    if-eq v1, v4, :cond_33

    return v1

    :cond_33
    add-int/lit8 v1, v10, 0x1

    if-nez v10, :cond_35

    add-int/lit8 v5, v2, 0x3

    invoke-virtual {v0, v5, v7, v3}, Lcom/sun/org/apache/regexp/internal/RE;->matchNodes(III)I

    move-result v3

    if-ne v3, v4, :cond_34

    goto :goto_11

    :cond_34
    move v10, v1

    goto :goto_10

    :cond_35
    :goto_11
    return v4

    :cond_36
    iget v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->matchFlags:I

    const/4 v6, 0x4

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_37

    iget-object v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v2, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->isEnd(I)Z

    move-result v2

    if-eqz v2, :cond_38

    return v4

    :cond_37
    iget-object v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v2, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->isEnd(I)Z

    move-result v2

    if-nez v2, :cond_39

    invoke-direct {v0, v3}, Lcom/sun/org/apache/regexp/internal/RE;->isNewline(I)Z

    move-result v2

    if-eqz v2, :cond_38

    goto :goto_13

    :cond_38
    :goto_12
    :pswitch_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_16

    :cond_39
    :goto_13
    return v4

    :cond_3a
    iget-object v1, v0, Lcom/sun/org/apache/regexp/internal/RE;->program:Lcom/sun/org/apache/regexp/internal/REProgram;

    iget v1, v1, Lcom/sun/org/apache/regexp/internal/REProgram;->flags:I

    and-int/2addr v1, v11

    if-eqz v1, :cond_3b

    iget-object v1, v0, Lcom/sun/org/apache/regexp/internal/RE;->endBackref:[I

    aput v3, v1, v8

    :cond_3b
    invoke-virtual {v0, v7, v13, v3}, Lcom/sun/org/apache/regexp/internal/RE;->matchNodes(III)I

    move-result v1

    if-eq v1, v4, :cond_3d

    add-int/lit8 v2, v8, 0x1

    iget v5, v0, Lcom/sun/org/apache/regexp/internal/RE;->parenCount:I

    if-le v2, v5, :cond_3c

    iput v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->parenCount:I

    :cond_3c
    invoke-virtual {v0, v8}, Lcom/sun/org/apache/regexp/internal/RE;->getParenEnd(I)I

    move-result v2

    if-ne v2, v4, :cond_3d

    invoke-virtual {v0, v8, v3}, Lcom/sun/org/apache/regexp/internal/RE;->setParenEnd(II)V

    :cond_3d
    return v1

    :cond_3e
    iget-object v1, v0, Lcom/sun/org/apache/regexp/internal/RE;->program:Lcom/sun/org/apache/regexp/internal/REProgram;

    iget v1, v1, Lcom/sun/org/apache/regexp/internal/REProgram;->flags:I

    and-int/2addr v1, v11

    if-eqz v1, :cond_3f

    iget-object v1, v0, Lcom/sun/org/apache/regexp/internal/RE;->startBackref:[I

    aput v3, v1, v8

    :cond_3f
    invoke-virtual {v0, v7, v13, v3}, Lcom/sun/org/apache/regexp/internal/RE;->matchNodes(III)I

    move-result v1

    if-eq v1, v4, :cond_41

    add-int/lit8 v2, v8, 0x1

    iget v5, v0, Lcom/sun/org/apache/regexp/internal/RE;->parenCount:I

    if-le v2, v5, :cond_40

    iput v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->parenCount:I

    :cond_40
    invoke-virtual {v0, v8}, Lcom/sun/org/apache/regexp/internal/RE;->getParenStart(I)I

    move-result v2

    if-ne v2, v4, :cond_41

    invoke-virtual {v0, v8, v3}, Lcom/sun/org/apache/regexp/internal/RE;->setParenStart(II)V

    :cond_41
    return v1

    :cond_42
    iget-object v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->isEnd(I)Z

    move-result v2

    if-nez v2, :cond_4a

    iget-object v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    invoke-interface {v2, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->isEnd(I)Z

    move-result v2

    if-nez v2, :cond_4a

    iget v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->matchFlags:I

    and-int/2addr v2, v12

    if-ne v2, v12, :cond_43

    invoke-direct {v0, v3}, Lcom/sun/org/apache/regexp/internal/RE;->isNewline(I)Z

    move-result v2

    if-nez v2, :cond_4a

    :cond_43
    return v4

    :cond_44
    const/4 v6, 0x0

    iget-object v2, v0, Lcom/sun/org/apache/regexp/internal/RE;->startBackref:[I

    aget v2, v2, v8

    iget-object v9, v0, Lcom/sun/org/apache/regexp/internal/RE;->endBackref:[I

    aget v8, v9, v8

    if-eq v2, v4, :cond_4b

    if-ne v8, v4, :cond_45

    goto :goto_17

    :cond_45
    if-ne v2, v8, :cond_46

    goto :goto_16

    :cond_46
    sub-int/2addr v8, v2

    iget-object v9, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    add-int v10, v3, v8

    sub-int/2addr v10, v11

    invoke-interface {v9, v10}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->isEnd(I)Z

    move-result v9

    if-eqz v9, :cond_47

    return v4

    :cond_47
    iget v9, v0, Lcom/sun/org/apache/regexp/internal/RE;->matchFlags:I

    and-int/2addr v9, v11

    if-eqz v9, :cond_48

    goto :goto_14

    :cond_48
    move v11, v6

    :goto_14
    move v10, v6

    :goto_15
    if-ge v10, v8, :cond_4a

    iget-object v6, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    add-int/lit8 v9, v3, 0x1

    invoke-interface {v6, v3}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result v3

    iget-object v6, v0, Lcom/sun/org/apache/regexp/internal/RE;->search:Lcom/sun/org/apache/regexp/internal/CharacterIterator;

    add-int v12, v2, v10

    invoke-interface {v6, v12}, Lcom/sun/org/apache/regexp/internal/CharacterIterator;->charAt(I)C

    move-result v6

    invoke-direct {v0, v3, v6, v11}, Lcom/sun/org/apache/regexp/internal/RE;->compareChars(CCZ)I

    move-result v3

    if-eqz v3, :cond_49

    return v4

    :cond_49
    add-int/lit8 v10, v10, 0x1

    move v3, v9

    goto :goto_15

    :cond_4a
    :goto_16
    move v2, v7

    goto/16 :goto_0

    :cond_4b
    :goto_17
    return v4

    :cond_4c
    const-string v1, "Corrupt program"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/regexp/internal/RE;->internalError(Ljava/lang/String;)V

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6a
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x19
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x14
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public setMatchFlags(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/regexp/internal/RE;->matchFlags:I

    return-void
.end method

.method public final setParenEnd(II)V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/regexp/internal/RE;->parenCount:I

    if-ge p1, v0, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RE;->endn:[I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/regexp/internal/RE;->allocParens()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/RE;->endn:[I

    aput p2, p0, p1

    goto :goto_0

    :cond_1
    iput p2, p0, Lcom/sun/org/apache/regexp/internal/RE;->end2:I

    goto :goto_0

    :cond_2
    iput p2, p0, Lcom/sun/org/apache/regexp/internal/RE;->end1:I

    goto :goto_0

    :cond_3
    iput p2, p0, Lcom/sun/org/apache/regexp/internal/RE;->end0:I

    :cond_4
    :goto_0
    return-void
.end method

.method public final setParenStart(II)V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/regexp/internal/RE;->parenCount:I

    if-ge p1, v0, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RE;->startn:[I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/regexp/internal/RE;->allocParens()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/RE;->startn:[I

    aput p2, p0, p1

    goto :goto_0

    :cond_1
    iput p2, p0, Lcom/sun/org/apache/regexp/internal/RE;->start2:I

    goto :goto_0

    :cond_2
    iput p2, p0, Lcom/sun/org/apache/regexp/internal/RE;->start1:I

    goto :goto_0

    :cond_3
    iput p2, p0, Lcom/sun/org/apache/regexp/internal/RE;->start0:I

    :cond_4
    :goto_0
    return-void
.end method

.method public setProgram(Lcom/sun/org/apache/regexp/internal/REProgram;)V
    .locals 1

    iput-object p1, p0, Lcom/sun/org/apache/regexp/internal/RE;->program:Lcom/sun/org/apache/regexp/internal/REProgram;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/sun/org/apache/regexp/internal/REProgram;->maxParens:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/sun/org/apache/regexp/internal/RE;->maxParen:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    iput p1, p0, Lcom/sun/org/apache/regexp/internal/RE;->maxParen:I

    :goto_0
    return-void
.end method

.method public split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0, p1, v3}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/regexp/internal/RE;->getParenStart(I)I

    move-result v4

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/regexp/internal/RE;->getParenEnd(I)I

    move-result v5

    if-ne v5, v3, :cond_0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    move v3, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object p0
.end method

.method public subst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/regexp/internal/RE;->subst(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public subst(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 10

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    if-ge v3, v1, :cond_7

    .line 4
    invoke-virtual {p0, p1, v3}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/regexp/internal/RE;->getParenStart(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit8 v4, p3, 0x2

    if-eqz v4, :cond_5

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, -0x2

    move v6, v2

    move v7, v6

    :goto_0
    const-string v8, "$"

    .line 7
    invoke-virtual {p2, v8, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ltz v6, :cond_4

    if-eqz v6, :cond_1

    add-int/lit8 v8, v6, -0x1

    .line 8
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5c

    if-eq v8, v9, :cond_3

    :cond_1
    add-int/lit8 v8, v6, 0x1

    if-ge v8, v4, :cond_3

    .line 9
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-lt v8, v9, :cond_3

    const/16 v9, 0x39

    if-gt v8, v9, :cond_3

    if-nez v7, :cond_2

    .line 10
    invoke-virtual {p2, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x2

    .line 11
    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v8, v8, -0x30

    .line 12
    invoke-virtual {p0, v8}, Lcom/sun/org/apache/regexp/internal/RE;->getParen(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v5, v6

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v5, 0x2

    .line 13
    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 14
    :cond_5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    :goto_2
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/regexp/internal/RE;->getParenEnd(I)I

    move-result v4

    if-ne v4, v3, :cond_6

    add-int/lit8 v4, v4, 0x1

    :cond_6
    move v3, v4

    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_0

    :cond_7
    if-ge v3, v1, :cond_8

    .line 16
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
