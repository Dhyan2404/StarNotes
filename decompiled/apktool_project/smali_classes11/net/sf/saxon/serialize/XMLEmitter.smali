.class public Lnet/sf/saxon/serialize/XMLEmitter;
.super Lnet/sf/saxon/serialize/Emitter;
.source "SourceFile"


# static fields
.field protected static final DOCTYPE:[B

.field protected static final RIGHT_ANGLE_NEWLINE:[B

.field public static final j:[B

.field public static final k:[B

.field public static final l:[B

.field public static final m:[B

.field public static final n:[B

.field public static final o:[B

.field public static final synthetic p:Z

.field protected static specialInAtt:[Z

.field protected static specialInAttSingle:[Z

.field protected static specialInText:[Z


# instance fields
.field protected attSpecials:[Z

.field protected canonical:Z

.field protected characterReferenceGenerator:Lnet/sf/saxon/serialize/CharacterReferenceGenerator;

.field protected declarationIsWritten:Z

.field protected delimiter:C

.field protected elementCode:Lnet/sf/saxon/om/NodeName;

.field protected elementStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:Z

.field public h:Ljava/util/function/IntPredicate;

.field public i:Ljava/util/function/IntPredicate;

.field protected indentForNextAttribute:I

.field protected internalSubset:Ljava/lang/String;

.field protected openStartTag:Z

.field protected started:Z

.field protected startedElement:Z

.field protected undeclareNamespaces:Z

.field protected unfailing:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const/16 v0, 0x80

    new-array v1, v0, [Z

    sput-object v1, Lnet/sf/saxon/serialize/XMLEmitter;->specialInText:[Z

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x1f

    const/4 v4, 0x1

    if-gt v2, v3, :cond_0

    sget-object v3, Lnet/sf/saxon/serialize/XMLEmitter;->specialInText:[Z

    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x20

    move v5, v2

    :goto_1
    const/16 v6, 0x7f

    if-gt v5, v6, :cond_1

    sget-object v6, Lnet/sf/saxon/serialize/XMLEmitter;->specialInText:[Z

    aput-boolean v1, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    sget-object v5, Lnet/sf/saxon/serialize/XMLEmitter;->specialInText:[Z

    const/16 v7, 0xa

    aput-boolean v1, v5, v7

    const/16 v8, 0x9

    aput-boolean v1, v5, v8

    const/16 v9, 0xd

    aput-boolean v4, v5, v9

    const/16 v10, 0x3c

    aput-boolean v4, v5, v10

    const/16 v11, 0x3e

    aput-boolean v4, v5, v11

    const/16 v12, 0x26

    aput-boolean v4, v5, v12

    new-array v5, v0, [Z

    sput-object v5, Lnet/sf/saxon/serialize/XMLEmitter;->specialInAtt:[Z

    move v5, v1

    :goto_2
    if-gt v5, v3, :cond_2

    sget-object v13, Lnet/sf/saxon/serialize/XMLEmitter;->specialInAtt:[Z

    aput-boolean v4, v13, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-gt v2, v6, :cond_3

    sget-object v3, Lnet/sf/saxon/serialize/XMLEmitter;->specialInAtt:[Z

    aput-boolean v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    sget-object v2, Lnet/sf/saxon/serialize/XMLEmitter;->specialInAtt:[Z

    aput-boolean v4, v2, v1

    aput-boolean v4, v2, v9

    aput-boolean v4, v2, v7

    aput-boolean v4, v2, v8

    aput-boolean v4, v2, v10

    aput-boolean v4, v2, v11

    aput-boolean v4, v2, v12

    const/16 v3, 0x22

    aput-boolean v4, v2, v3

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/serialize/XMLEmitter;->specialInAttSingle:[Z

    aput-boolean v1, v0, v3

    const/16 v1, 0x27

    aput-boolean v4, v0, v1

    const-string v0, "<?xml version=\""

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/serialize/XMLEmitter;->j:[B

    const-string v0, "encoding=\""

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/serialize/XMLEmitter;->k:[B

    const-string v0, " standalone=\""

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/serialize/XMLEmitter;->l:[B

    const-string v0, "\" "

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/serialize/XMLEmitter;->m:[B

    const-string v0, "<!DOCTYPE "

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/serialize/XMLEmitter;->DOCTYPE:[B

    const-string v0, "  SYSTEM "

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/serialize/XMLEmitter;->n:[B

    const-string v0, "  PUBLIC \""

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/serialize/XMLEmitter;->o:[B

    const-string v0, ">\n"

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/serialize/XMLEmitter;->RIGHT_ANGLE_NEWLINE:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/serialize/Emitter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->canonical:Z

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->started:Z

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->startedElement:Z

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->openStartTag:Z

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->declarationIsWritten:Z

    const/4 v1, -0x1

    iput v1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->indentForNextAttribute:I

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->undeclareNamespaces:Z

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->unfailing:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->internalSubset:Ljava/lang/String;

    const/16 v1, 0x22

    iput-char v1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->delimiter:C

    sget-object v1, Lnet/sf/saxon/serialize/XMLEmitter;->specialInAtt:[Z

    iput-object v1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->attSpecials:[Z

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->elementStack:Ljava/util/Stack;

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->f:Z

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->g:Z

    sget-object v0, Lnet/sf/saxon/serialize/HexCharacterReferenceGenerator;->THE_INSTANCE:Lnet/sf/saxon/serialize/HexCharacterReferenceGenerator;

    iput-object v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->characterReferenceGenerator:Lnet/sf/saxon/serialize/CharacterReferenceGenerator;

    return-void
.end method

.method public static synthetic c(I)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/serialize/XMLEmitter;->h(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lnet/sf/saxon/serialize/XMLEmitter;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/serialize/XMLEmitter;->j(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lnet/sf/saxon/serialize/XMLEmitter;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/serialize/XMLEmitter;->i(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lnet/sf/saxon/serialize/XMLEmitter;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/serialize/XMLEmitter;->k(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(I)Z
    .locals 1

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_0

    sget-object v0, Lnet/sf/saxon/serialize/XMLEmitter;->specialInText:[Z

    aget-boolean p0, v0, p0

    goto :goto_1

    :cond_0
    const/16 v0, 0xa0

    if-lt p0, v0, :cond_2

    const/16 v0, 0x2028

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic i(I)Z
    .locals 1

    const/16 v0, 0x7f

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->attSpecials:[Z

    aget-boolean p0, p0, p1

    goto :goto_1

    :cond_0
    const/16 p0, 0xa0

    if-lt p1, p0, :cond_2

    const/16 p0, 0x2028

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic j(I)Z
    .locals 1

    const/16 v0, 0x7f

    if-ge p1, v0, :cond_0

    sget-object p0, Lnet/sf/saxon/serialize/XMLEmitter;->specialInText:[Z

    aget-boolean p0, p0, p1

    goto :goto_1

    :cond_0
    const/16 v0, 0xa0

    if-lt p1, v0, :cond_2

    const/16 v0, 0x2028

    if-eq p1, v0, :cond_2

    const v0, 0xffff

    if-gt p1, v0, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/serialize/Emitter;->characterSet:Lnet/sf/saxon/serialize/charcode/CharacterSet;

    invoke-interface {p0, p1}, Lnet/sf/saxon/serialize/charcode/CharacterSet;->inCharset(I)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic k(I)Z
    .locals 1

    const/16 v0, 0x7f

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->attSpecials:[Z

    aget-boolean p0, p0, p1

    goto :goto_1

    :cond_0
    const/16 v0, 0xa0

    if-lt p1, v0, :cond_2

    const/16 v0, 0x2028

    if-eq p1, v0, :cond_2

    const v0, 0xffff

    if-gt p1, v0, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/serialize/Emitter;->characterSet:Lnet/sf/saxon/serialize/charcode/CharacterSet;

    invoke-interface {p0, p1}, Lnet/sf/saxon/serialize/charcode/CharacterSet;->inCharset(I)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean p2, p0, Lnet/sf/saxon/serialize/XMLEmitter;->started:Z

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/XMLEmitter;->openDocument()V

    :cond_0
    iget-boolean p2, p0, Lnet/sf/saxon/serialize/XMLEmitter;->g:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lnet/sf/saxon/serialize/XMLEmitter;->elementStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lnet/sf/saxon/serialize/XMLEmitter;->unfailing:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "When \'standalone\' or \'doctype-system\' is specified, the document must be well-formed; but this document contains a top-level text node"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "SEPM0004"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    :try_start_0
    iget-boolean p2, p0, Lnet/sf/saxon/serialize/XMLEmitter;->openStartTag:Z

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/XMLEmitter;->closeStartTag()V

    :cond_3
    instance-of p2, p1, Lnet/sf/saxon/str/WhitespaceString;

    if-eqz p2, :cond_4

    check-cast p1, Lnet/sf/saxon/str/WhitespaceString;

    iget-object p2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/str/WhitespaceString;->write(Lnet/sf/saxon/str/UnicodeWriter;)V

    goto/16 :goto_3

    :cond_4
    const/4 p2, 0x4

    invoke-static {p3, p2}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p2, p1}, Lnet/sf/saxon/str/UnicodeWriter;->write(Lnet/sf/saxon/str/UnicodeString;)V

    goto :goto_3

    :cond_5
    const/4 p2, 0x1

    invoke-static {p3, p2}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_6

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/serialize/XMLEmitter;->writeEscape(Lnet/sf/saxon/str/UnicodeString;Z)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/XMLEmitter;->testCharacters(Lnet/sf/saxon/str/UnicodeString;)I

    move-result p2

    if-nez p2, :cond_9

    const/16 p2, 0x100

    invoke-static {p3, p2}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p2, p1}, Lnet/sf/saxon/str/UnicodeWriter;->write(Lnet/sf/saxon/str/UnicodeString;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p1

    :cond_8
    :goto_1
    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result p2

    if-eqz p2, :cond_8

    iget-object p3, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p3, p2}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p1

    :cond_a
    :goto_2
    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result p2

    if-eqz p2, :cond_a

    iget-object p3, p0, Lnet/sf/saxon/serialize/Emitter;->characterSet:Lnet/sf/saxon/serialize/charcode/CharacterSet;

    invoke-interface {p3, p2}, Lnet/sf/saxon/serialize/charcode/CharacterSet;->inCharset(I)Z

    move-result p3

    if-eqz p3, :cond_b

    iget-object p3, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p3, p2}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    goto :goto_2

    :cond_b
    new-instance p3, Lnet/sf/saxon/str/UnicodeChar;

    invoke-direct {p3, p2}, Lnet/sf/saxon/str/UnicodeChar;-><init>(I)V

    invoke-virtual {p0, p3, v0}, Lnet/sf/saxon/serialize/XMLEmitter;->writeEscape(Lnet/sf/saxon/str/UnicodeString;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_c
    :goto_3
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failure writing to "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->started:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/XMLEmitter;->openDocument()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lnet/sf/saxon/str/UnicodeWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-super {p0}, Lnet/sf/saxon/serialize/Emitter;->close()V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure writing to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public closeStartTag()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->openStartTag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    const/16 v1, 0x3e

    invoke-interface {v0, v1}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->openStartTag:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure writing to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean p2, p0, Lnet/sf/saxon/serialize/XMLEmitter;->started:Z

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/XMLEmitter;->openDocument()V

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/XMLEmitter;->testCharacters(Lnet/sf/saxon/str/UnicodeString;)I

    move-result p2

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lnet/sf/saxon/serialize/XMLEmitter;->unfailing:Z

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/XMLEmitter;->convertToAscii(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Character in comment cannot be represented in the selected encoding (code "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "SERE0008"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    :try_start_0
    iget-boolean p2, p0, Lnet/sf/saxon/serialize/XMLEmitter;->openStartTag:Z

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/XMLEmitter;->closeStartTag()V

    :cond_3
    iget-object p2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object p3, Lnet/sf/saxon/str/StringConstants;->COMMENT_START:[B

    invoke-interface {p2, p3}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    iget-object p2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p2, p1}, Lnet/sf/saxon/str/UnicodeWriter;->write(Lnet/sf/saxon/str/UnicodeString;)V

    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object p2, Lnet/sf/saxon/str/StringConstants;->COMMENT_END:[B

    invoke-interface {p1, p2}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failure writing to "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public convertToAscii(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 3

    new-instance p0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {p0}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7f

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public endElement()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->elementStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-boolean v1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->openStartTag:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->elementCode:Lnet/sf/saxon/om/NodeName;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/serialize/XMLEmitter;->writeEmptyElementTagCloser(Ljava/lang/String;Lnet/sf/saxon/om/NodeName;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->openStartTag:Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v2, Lnet/sf/saxon/str/StringConstants;->END_TAG_START:[B

    invoke-interface {v1, v2}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    iget-object v1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {v1, v0}, Lnet/sf/saxon/str/UnicodeWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    const/16 v1, 0x3e

    invoke-interface {v0, v1}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure writing to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final g(Lnet/sf/saxon/om/NodeName;Ljava/lang/String;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/Emitter;->allCharactersEncodable:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/XMLEmitter;->testCharacters(Lnet/sf/saxon/str/UnicodeString;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->unfailing:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/XMLEmitter;->convertToAscii(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attribute name contains a character (decimal + "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") not available in the selected encoding"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "SERE0008"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    :try_start_0
    iget-object p4, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    const/16 v0, 0x20

    invoke-interface {p4, v0}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/serialize/XMLEmitter;->writeAttributeIndentString()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object p4, p0, Lnet/sf/saxon/serialize/XMLEmitter;->elementCode:Lnet/sf/saxon/om/NodeName;

    invoke-virtual {p0, p4, p1, p2, p3}, Lnet/sf/saxon/serialize/XMLEmitter;->writeAttribute(Lnet/sf/saxon/om/NodeName;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failure writing to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public isStarted()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->started:Z

    return p0
.end method

.method public namespace(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p1, v2}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/serialize/XMLEmitter;->writeAttributeIndentString()V

    :goto_0
    iget-object p1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->elementCode:Lnet/sf/saxon/om/NodeName;

    const-string p3, "xmlns"

    invoke-virtual {p0, p1, p3, p2, v1}, Lnet/sf/saxon/serialize/XMLEmitter;->writeAttribute(Lnet/sf/saxon/om/NodeName;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_1
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/XMLEmitter;->testCharacters(Lnet/sf/saxon/str/UnicodeString;)I

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->undeclareNamespaces:Z

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    if-eqz p3, :cond_4

    iget-object p3, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p3, v2}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/serialize/XMLEmitter;->writeAttributeIndentString()V

    :goto_1
    iget-object p3, p0, Lnet/sf/saxon/serialize/XMLEmitter;->elementCode:Lnet/sf/saxon/om/NodeName;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xmlns:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1, p2, v1}, Lnet/sf/saxon/serialize/XMLEmitter;->writeAttribute(Lnet/sf/saxon/om/NodeName;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Namespace prefix contains a character (decimal + "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") not available in the selected encoding"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p2, "SERE0008"

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failure writing to "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public open()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public openDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->characterSet:Lnet/sf/saxon/serialize/charcode/CharacterSet;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/serialize/charcode/UTF8CharacterSet;->getInstance()Lnet/sf/saxon/serialize/charcode/UTF8CharacterSet;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->characterSet:Lnet/sf/saxon/serialize/charcode/CharacterSet;

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    const-string v1, "undeclare-prefixes"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->undeclareNamespaces:Z

    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    const-string v2, "{http://saxon.sf.net/}canonical"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->canonical:Z

    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    const-string v2, "{http://saxon.sf.net/}unfailing"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->unfailing:Z

    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    const-string v2, "{http://saxon.sf.net/}internal-dtd-subset"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->internalSubset:Ljava/lang/String;

    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    const-string v2, "{http://saxon.sf.net/}single-quotes"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x27

    iput-char v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->delimiter:C

    sget-object v0, Lnet/sf/saxon/serialize/XMLEmitter;->specialInAttSingle:[Z

    iput-object v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->attSpecials:[Z

    :cond_2
    iget-boolean v0, p0, Lnet/sf/saxon/serialize/Emitter;->allCharactersEncodable:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/sunia/HTREnginev2/klo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/klo;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->h:Ljava/util/function/IntPredicate;

    new-instance v0, Lcom/sunia/HTREnginev2/llo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/llo;-><init>(Lnet/sf/saxon/serialize/XMLEmitter;)V

    iput-object v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->i:Ljava/util/function/IntPredicate;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/sunia/HTREnginev2/mlo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/mlo;-><init>(Lnet/sf/saxon/serialize/XMLEmitter;)V

    iput-object v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->h:Ljava/util/function/IntPredicate;

    new-instance v0, Lcom/sunia/HTREnginev2/nlo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/nlo;-><init>(Lnet/sf/saxon/serialize/XMLEmitter;)V

    iput-object v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->i:Ljava/util/function/IntPredicate;

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/serialize/XMLEmitter;->writeDeclaration()V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean p3, p0, Lnet/sf/saxon/serialize/XMLEmitter;->started:Z

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/XMLEmitter;->openDocument()V

    :cond_0
    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p3

    invoke-virtual {p0, p3}, Lnet/sf/saxon/serialize/XMLEmitter;->testCharacters(Lnet/sf/saxon/str/UnicodeString;)I

    move-result p3

    const-string p4, "SERE0008"

    const/16 v0, 0x29

    if-eqz p3, :cond_2

    iget-boolean v1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->unfailing:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/XMLEmitter;->convertToAscii(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Character in processing instruction name cannot be represented in the selected encoding (code "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lnet/sf/saxon/serialize/XMLEmitter;->testCharacters(Lnet/sf/saxon/str/UnicodeString;)I

    move-result p3

    if-eqz p3, :cond_4

    iget-boolean v1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->unfailing:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, p2}, Lnet/sf/saxon/serialize/XMLEmitter;->convertToAscii(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    goto :goto_1

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Character in processing instruction data cannot be represented in the selected encoding (code "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    :try_start_0
    iget-boolean p3, p0, Lnet/sf/saxon/serialize/XMLEmitter;->openStartTag:Z

    if-eqz p3, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/XMLEmitter;->closeStartTag()V

    :cond_5
    iget-object p3, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object p4, Lnet/sf/saxon/str/StringConstants;->PI_START:[B

    invoke-interface {p3, p4}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    iget-object p3, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p3, p1}, Lnet/sf/saxon/str/UnicodeWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    const/16 p3, 0x20

    invoke-interface {p1, p3}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p1, p2}, Lnet/sf/saxon/str/UnicodeWriter;->write(Lnet/sf/saxon/str/UnicodeString;)V

    :cond_6
    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object p2, Lnet/sf/saxon/str/StringConstants;->PI_END:[B

    invoke-interface {p1, p2}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failure writing to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setCharacterReferenceGenerator(Lnet/sf/saxon/serialize/CharacterReferenceGenerator;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->characterReferenceGenerator:Lnet/sf/saxon/serialize/CharacterReferenceGenerator;

    return-void
.end method

.method public setEscapeNonAscii(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public setIndentForNextAttribute(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->indentForNextAttribute:I

    return-void
.end method

.method public startDocument(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p2, ""

    const/4 p5, 0x0

    iput-boolean p5, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    iget-boolean p6, p0, Lnet/sf/saxon/serialize/XMLEmitter;->started:Z

    if-nez p6, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/XMLEmitter;->openDocument()V

    goto :goto_0

    :cond_0
    iget-boolean p6, p0, Lnet/sf/saxon/serialize/XMLEmitter;->g:Z

    if-eqz p6, :cond_2

    iget-object p6, p0, Lnet/sf/saxon/serialize/XMLEmitter;->elementStack:Ljava/util/Stack;

    invoke-virtual {p6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_2

    iget-boolean p6, p0, Lnet/sf/saxon/serialize/XMLEmitter;->startedElement:Z

    if-eqz p6, :cond_2

    iget-boolean p6, p0, Lnet/sf/saxon/serialize/XMLEmitter;->unfailing:Z

    if-eqz p6, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "When \'standalone\' or \'doctype-system\' is specified, the document must be well-formed; but this document contains more than one top-level element"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "SEPM0004"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const/4 p6, 0x1

    iput-boolean p6, p0, Lnet/sf/saxon/serialize/XMLEmitter;->startedElement:Z

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lnet/sf/saxon/serialize/Emitter;->allCharactersEncodable:Z

    if-nez v1, :cond_4

    invoke-static {v0}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/serialize/XMLEmitter;->testCharacters(Lnet/sf/saxon/str/UnicodeString;)I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Element name contains a character (decimal + "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") not available in the selected encoding"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "SERE0008"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    iget-object v1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->elementStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->elementCode:Lnet/sf/saxon/om/NodeName;

    :try_start_0
    iget-boolean v1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->started:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    const-string v2, "doctype-system"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    const-string v3, "doctype-public"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    move-object v1, v4

    :cond_5
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    move-object v2, v4

    :cond_6
    if-eqz v1, :cond_7

    iput-boolean p6, p0, Lnet/sf/saxon/serialize/XMLEmitter;->g:Z

    invoke-virtual {p0, p1, v0, v1, v2}, Lnet/sf/saxon/serialize/XMLEmitter;->writeDocType(Lnet/sf/saxon/om/NodeName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lnet/sf/saxon/serialize/XMLEmitter;->writeDocTypeWithNullSystemId()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p0, p1, v0, v4, v2}, Lnet/sf/saxon/serialize/XMLEmitter;->writeDocType(Lnet/sf/saxon/om/NodeName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    iput-boolean p6, p0, Lnet/sf/saxon/serialize/XMLEmitter;->started:Z

    :cond_9
    iget-boolean p1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->openStartTag:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/XMLEmitter;->closeStartTag()V

    :cond_a
    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    const/16 p2, 0x3c

    invoke-interface {p1, p2}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p1, v0}, Lnet/sf/saxon/str/UnicodeWriter;->write(Ljava/lang/String;)V

    iget p1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->indentForNextAttribute:I

    if-ltz p1, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->indentForNextAttribute:I

    :cond_b
    invoke-virtual {p4}, Lnet/sf/saxon/om/NamespaceMap;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, p6

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {p4}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, v0, p4, p2}, Lnet/sf/saxon/serialize/XMLEmitter;->namespace(Ljava/lang/String;Ljava/lang/String;Z)V

    move p2, p5

    goto :goto_3

    :cond_c
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {p3}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object p4

    invoke-virtual {p3}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lnet/sf/saxon/om/AttributeInfo;->getProperties()I

    move-result p3

    invoke-virtual {p0, p4, v0, p3, p2}, Lnet/sf/saxon/serialize/XMLEmitter;->g(Lnet/sf/saxon/om/NodeName;Ljava/lang/String;IZ)V

    move p2, p5

    goto :goto_4

    :cond_d
    iput-boolean p6, p0, Lnet/sf/saxon/serialize/XMLEmitter;->openStartTag:Z

    const/4 p1, -0x1

    iput p1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->indentForNextAttribute:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failure writing to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public testCharacters(Lnet/sf/saxon/str/UnicodeString;)I
    .locals 2

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v0

    const/16 v1, 0x7f

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/serialize/Emitter;->characterSet:Lnet/sf/saxon/serialize/charcode/CharacterSet;

    invoke-interface {v1, v0}, Lnet/sf/saxon/serialize/charcode/CharacterSet;->inCharset(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public usesTypeAnnotations()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeAttribute(Lnet/sf/saxon/om/NodeName;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p1, p2}, Lnet/sf/saxon/str/UnicodeWriter;->write(Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-static {p4, p1}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result p1

    const/16 p2, 0x3d

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p1, p2}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    iget-char p2, p0, Lnet/sf/saxon/serialize/XMLEmitter;->delimiter:C

    invoke-interface {p1, p2}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p1, p3}, Lnet/sf/saxon/str/UnicodeWriter;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    iget-char p2, p0, Lnet/sf/saxon/serialize/XMLEmitter;->delimiter:C

    invoke-interface {p1, p2}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    goto :goto_2

    :cond_0
    const/16 p1, 0x100

    invoke-static {p4, p1}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p1, p2}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    const/16 p1, 0x22

    invoke-virtual {p3, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_1

    const/16 p1, 0x27

    invoke-virtual {p3, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-char p1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->delimiter:C

    :goto_0
    iget-object p2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p2, p1}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    invoke-static {p3}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Lnet/sf/saxon/serialize/XMLEmitter;->writeEscape(Lnet/sf/saxon/str/UnicodeString;Z)V

    iget-object p2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p2, p1}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p1, p2}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    iget-char p2, p0, Lnet/sf/saxon/serialize/XMLEmitter;->delimiter:C

    invoke-interface {p1, p2}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    invoke-static {p4, v0}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p1, p3}, Lnet/sf/saxon/str/UnicodeWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/serialize/XMLEmitter;->writeEscape(Lnet/sf/saxon/str/UnicodeString;Z)V

    :goto_1
    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    iget-char p2, p0, Lnet/sf/saxon/serialize/XMLEmitter;->delimiter:C

    invoke-interface {p1, p2}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failure writing to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeAttributeIndentString()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->indentForNextAttribute:I

    const/16 v1, 0x20

    if-gez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p0, v1}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    iget p0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->indentForNextAttribute:I

    invoke-interface {v0, v1, p0}, Lnet/sf/saxon/str/UnicodeWriter;->writeRepeatedAscii(BI)V

    :goto_0
    return-void
.end method

.method public writeCodePoint(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p0, p1}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    return-void
.end method

.method public writeDeclaration()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "yes"

    iget-boolean v1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->declarationIsWritten:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->declarationIsWritten:Z

    :try_start_0
    iget-object v2, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    const-string v3, "indent"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lnet/sf/saxon/serialize/XMLEmitter;->f:Z

    iget-object v2, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    const-string v3, "byte-order-mark"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    const-string v4, "encoding"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "UTF-8"

    if-eqz v3, :cond_1

    :try_start_1
    const-string v5, "utf8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lnet/sf/saxon/serialize/XMLEmitter;->canonical:Z

    if-eqz v5, :cond_2

    :cond_1
    move-object v3, v4

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lnet/sf/saxon/serialize/XMLEmitter;->canonical:Z

    if-nez v2, :cond_4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "UTF-16LE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "UTF-16BE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    const v4, 0xfeff

    invoke-interface {v2, v4}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    :cond_4
    iget-object v2, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    const-string v4, "omit-xml-declaration"

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "no"

    if-nez v2, :cond_5

    move-object v2, v4

    :cond_5
    :try_start_2
    iget-boolean v5, p0, Lnet/sf/saxon/serialize/XMLEmitter;->canonical:Z

    if-eqz v5, :cond_6

    move-object v2, v0

    :cond_6
    iget-object v5, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    const-string v6, "version"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v6, "SEPM0009"

    const-string v7, "doctype-system"

    const-string v8, "1.1"

    const-string v9, "1.0"

    if-nez v5, :cond_7

    :try_start_3
    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/Configuration;->getXMLVersion()I

    move-result v5

    const/16 v10, 0xa

    if-ne v5, v10, :cond_c

    move-object v8, v9

    goto :goto_2

    :cond_7
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    iget-boolean v5, p0, Lnet/sf/saxon/serialize/XMLEmitter;->unfailing:Z

    if-eqz v5, :cond_8

    move-object v5, v9

    goto :goto_0

    :cond_8
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "XML version must be 1.0 or 1.1"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string v1, "SESU0013"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_0
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    invoke-virtual {v8, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    iget-boolean v8, p0, Lnet/sf/saxon/serialize/XMLEmitter;->unfailing:Z

    if-eqz v8, :cond_a

    goto :goto_1

    :cond_a
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Values of \'version\', \'omit-xml-declaration\', and \'doctype-system\' conflict"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_1
    move-object v8, v5

    :cond_c
    :goto_2
    iget-object v5, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    const-string v10, "undeclare-prefixes"

    invoke-virtual {v5, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iput-boolean v1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->undeclareNamespaces:Z

    :cond_d
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-boolean v5, p0, Lnet/sf/saxon/serialize/XMLEmitter;->undeclareNamespaces:Z

    if-eqz v5, :cond_f

    iget-boolean v5, p0, Lnet/sf/saxon/serialize/XMLEmitter;->unfailing:Z

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    iput-boolean v5, p0, Lnet/sf/saxon/serialize/XMLEmitter;->undeclareNamespaces:Z

    goto :goto_3

    :cond_e
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Cannot undeclare namespaces with XML version 1.0"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string v1, "SEPM0010"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_3
    iget-object v5, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    const-string v9, "standalone"

    invoke-virtual {v5, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "omit"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    const/4 v5, 0x0

    :cond_10
    if-eqz v5, :cond_12

    iput-boolean v1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->g:Z

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->unfailing:Z

    if-eqz v0, :cond_11

    goto :goto_4

    :cond_11
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Values of \'standalone\' and \'omit-xml-declaration\' conflict"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_4
    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    invoke-virtual {v0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v6, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iput-boolean v1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->g:Z

    :cond_13
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v1, Lnet/sf/saxon/serialize/XMLEmitter;->j:[B

    invoke-interface {v0, v1}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {v0, v8}, Lnet/sf/saxon/str/UnicodeWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v1, Lnet/sf/saxon/serialize/XMLEmitter;->m:[B

    invoke-interface {v0, v1}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v1, Lnet/sf/saxon/serialize/XMLEmitter;->k:[B

    invoke-interface {v0, v1}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {v0, v3}, Lnet/sf/saxon/str/UnicodeWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    const/16 v1, 0x22

    invoke-interface {v0, v1}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    if-eqz v5, :cond_14

    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v2, Lnet/sf/saxon/serialize/XMLEmitter;->l:[B

    invoke-interface {v0, v2}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {v0, v5}, Lnet/sf/saxon/str/UnicodeWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {v0, v1}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    :cond_14
    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v1, Lnet/sf/saxon/str/StringConstants;->PI_END:[B

    invoke-interface {v0, v1}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_15
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure writing to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeDocType(Lnet/sf/saxon/om/NodeName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p1, "\'"

    :try_start_0
    iget-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->canonical:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->declarationIsWritten:Z

    const/16 v1, 0xa

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {v0, v1}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v2, Lnet/sf/saxon/serialize/XMLEmitter;->DOCTYPE:[B

    invoke-interface {v0, v2}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {v0, p2}, Lnet/sf/saxon/str/UnicodeWriter;->write(Ljava/lang/String;)V

    iget-object p2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p2, v1}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    const/16 p2, 0x22

    if-eqz p3, :cond_2

    const-string v0, "\""

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p3, :cond_3

    if-nez p4, :cond_3

    iget-object p2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object p3, Lnet/sf/saxon/serialize/XMLEmitter;->n:[B

    invoke-interface {p2, p3}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    iget-object p2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p2, p1}, Lnet/sf/saxon/str/UnicodeWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-nez p3, :cond_4

    if-eqz p4, :cond_4

    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object p3, Lnet/sf/saxon/serialize/XMLEmitter;->o:[B

    invoke-interface {p1, p3}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p1, p4}, Lnet/sf/saxon/str/UnicodeWriter;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p1, p2}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    goto :goto_1

    :cond_4
    if-eqz p4, :cond_5

    iget-object p2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object p3, Lnet/sf/saxon/serialize/XMLEmitter;->o:[B

    invoke-interface {p2, p3}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    iget-object p2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p2, p4}, Lnet/sf/saxon/str/UnicodeWriter;->write(Ljava/lang/String;)V

    iget-object p2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object p3, Lnet/sf/saxon/serialize/XMLEmitter;->m:[B

    invoke-interface {p2, p3}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    iget-object p2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p2, p1}, Lnet/sf/saxon/str/UnicodeWriter;->write(Ljava/lang/String;)V

    :cond_5
    :goto_1
    iget-object p1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->internalSubset:Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    const/16 p2, 0x5b

    invoke-interface {p1, p2}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p1, v1}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    iget-object p2, p0, Lnet/sf/saxon/serialize/XMLEmitter;->internalSubset:Ljava/lang/String;

    invoke-interface {p1, p2}, Lnet/sf/saxon/str/UnicodeWriter;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p1, v1}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    const/16 p2, 0x5d

    invoke-interface {p1, p2}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    :cond_6
    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object p2, Lnet/sf/saxon/serialize/XMLEmitter;->RIGHT_ANGLE_NEWLINE:[B

    invoke-interface {p1, p2}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failure writing to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeDocTypeWithNullSystemId()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->internalSubset:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public writeEmptyElementTagCloser(Ljava/lang/String;Lnet/sf/saxon/om/NodeName;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean p2, p0, Lnet/sf/saxon/serialize/XMLEmitter;->canonical:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    const/16 v0, 0x3e

    invoke-interface {p2, v0}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    iget-object p2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v1, Lnet/sf/saxon/str/StringConstants;->END_TAG_START:[B

    invoke-interface {p2, v1}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    iget-object p2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p2, p1}, Lnet/sf/saxon/str/UnicodeWriter;->write(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p0, v0}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object p1, Lnet/sf/saxon/str/StringConstants;->EMPTY_TAG_END:[B

    invoke-interface {p0, p1}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    :goto_0
    return-void
.end method

.method public writeEscape(Lnet/sf/saxon/str/UnicodeString;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->attSpecials:[Z

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/sf/saxon/serialize/XMLEmitter;->specialInText:[Z

    :goto_0
    instance-of v1, p1, Lnet/sf/saxon/str/WhitespaceString;

    if-eqz v1, :cond_1

    check-cast p1, Lnet/sf/saxon/str/WhitespaceString;

    iget-object p0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/str/WhitespaceString;->writeEscape([ZLnet/sf/saxon/str/UnicodeWriter;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object p2, p0, Lnet/sf/saxon/serialize/XMLEmitter;->i:Ljava/util/function/IntPredicate;

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lnet/sf/saxon/serialize/XMLEmitter;->h:Ljava/util/function/IntPredicate;

    :goto_1
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_2
    cmp-long v7, v5, v0

    if-gez v7, :cond_18

    invoke-virtual {p1, p2, v5, v6}, Lnet/sf/saxon/str/UnicodeString;->indexWhere(Ljava/util/function/IntPredicate;J)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v9, v7, v9

    if-nez v9, :cond_3

    move-wide v9, v0

    goto :goto_3

    :cond_3
    move-wide v9, v7

    :goto_3
    cmp-long v7, v7, v2

    if-gez v7, :cond_5

    cmp-long p2, v5, v2

    if-nez p2, :cond_4

    iget-object p0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p0, p1}, Lnet/sf/saxon/str/UnicodeWriter;->write(Lnet/sf/saxon/str/UnicodeString;)V

    goto :goto_4

    :cond_4
    iget-object p0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-virtual {p1, v5, v6, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-interface {p0, p1}, Lnet/sf/saxon/str/UnicodeWriter;->write(Lnet/sf/saxon/str/UnicodeString;)V

    :goto_4
    return-void

    :cond_5
    cmp-long v7, v9, v5

    if-lez v7, :cond_6

    iget-object v7, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-virtual {p1, v5, v6, v9, v10}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v5

    invoke-interface {v7, v5}, Lnet/sf/saxon/str/UnicodeWriter;->write(Lnet/sf/saxon/str/UnicodeString;)V

    :cond_6
    invoke-virtual {p1, v9, v10}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v5

    if-nez v5, :cond_7

    xor-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    :cond_7
    const/16 v6, 0x7f

    if-eqz v4, :cond_a

    if-le v5, v6, :cond_9

    iget-object v6, p0, Lnet/sf/saxon/serialize/Emitter;->characterSet:Lnet/sf/saxon/serialize/charcode/CharacterSet;

    invoke-interface {v6, v5}, Lnet/sf/saxon/serialize/charcode/CharacterSet;->inCharset(I)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Character "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") is not available in the chosen encoding"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "SERE0008"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_5
    invoke-virtual {p0, v5}, Lnet/sf/saxon/serialize/XMLEmitter;->writeCodePoint(I)V

    goto/16 :goto_7

    :cond_a
    if-ge v5, v6, :cond_13

    const/16 v6, 0x9

    if-eq v5, v6, :cond_12

    const/16 v6, 0xa

    if-eq v5, v6, :cond_11

    const/16 v6, 0xd

    if-eq v5, v6, :cond_10

    const/16 v6, 0x22

    if-eq v5, v6, :cond_f

    const/16 v6, 0x3c

    if-eq v5, v6, :cond_e

    const/16 v6, 0x3e

    if-eq v5, v6, :cond_d

    const/16 v6, 0x26

    if-eq v5, v6, :cond_c

    const/16 v6, 0x27

    if-eq v5, v6, :cond_b

    iget-object v6, p0, Lnet/sf/saxon/serialize/XMLEmitter;->characterReferenceGenerator:Lnet/sf/saxon/serialize/CharacterReferenceGenerator;

    iget-object v7, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {v6, v5, v7}, Lnet/sf/saxon/serialize/CharacterReferenceGenerator;->outputCharacterReference(ILnet/sf/saxon/str/UnicodeWriter;)V

    goto/16 :goto_7

    :cond_b
    iget-object v5, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v6, Lnet/sf/saxon/str/StringConstants;->ESCAPE_APOS:[B

    invoke-interface {v5, v6}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    goto/16 :goto_7

    :cond_c
    iget-object v5, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v6, Lnet/sf/saxon/str/StringConstants;->ESCAPE_AMP:[B

    invoke-interface {v5, v6}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    goto :goto_7

    :cond_d
    iget-object v5, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v6, Lnet/sf/saxon/str/StringConstants;->ESCAPE_GT:[B

    invoke-interface {v5, v6}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    goto :goto_7

    :cond_e
    iget-object v5, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v6, Lnet/sf/saxon/str/StringConstants;->ESCAPE_LT:[B

    invoke-interface {v5, v6}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    goto :goto_7

    :cond_f
    iget-object v5, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v6, Lnet/sf/saxon/str/StringConstants;->ESCAPE_QUOT:[B

    invoke-interface {v5, v6}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    goto :goto_7

    :cond_10
    iget-object v5, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v6, Lnet/sf/saxon/str/StringConstants;->ESCAPE_CR:[B

    invoke-interface {v5, v6}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    goto :goto_7

    :cond_11
    iget-object v5, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v6, Lnet/sf/saxon/str/StringConstants;->ESCAPE_NL:[B

    invoke-interface {v5, v6}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    goto :goto_7

    :cond_12
    iget-object v5, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v6, Lnet/sf/saxon/str/StringConstants;->ESCAPE_TAB:[B

    invoke-interface {v5, v6}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    goto :goto_7

    :cond_13
    const/16 v6, 0xa0

    if-lt v5, v6, :cond_17

    const/16 v6, 0x2028

    if-ne v5, v6, :cond_14

    goto :goto_6

    :cond_14
    const v6, 0xffff

    if-le v5, v6, :cond_16

    iget-object v6, p0, Lnet/sf/saxon/serialize/Emitter;->characterSet:Lnet/sf/saxon/serialize/charcode/CharacterSet;

    invoke-interface {v6, v5}, Lnet/sf/saxon/serialize/charcode/CharacterSet;->inCharset(I)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {p0, v5}, Lnet/sf/saxon/serialize/XMLEmitter;->writeCodePoint(I)V

    goto :goto_7

    :cond_15
    iget-object v6, p0, Lnet/sf/saxon/serialize/XMLEmitter;->characterReferenceGenerator:Lnet/sf/saxon/serialize/CharacterReferenceGenerator;

    iget-object v7, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {v6, v5, v7}, Lnet/sf/saxon/serialize/CharacterReferenceGenerator;->outputCharacterReference(ILnet/sf/saxon/str/UnicodeWriter;)V

    goto :goto_7

    :cond_16
    iget-object v6, p0, Lnet/sf/saxon/serialize/XMLEmitter;->characterReferenceGenerator:Lnet/sf/saxon/serialize/CharacterReferenceGenerator;

    iget-object v7, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {v6, v5, v7}, Lnet/sf/saxon/serialize/CharacterReferenceGenerator;->outputCharacterReference(ILnet/sf/saxon/str/UnicodeWriter;)V

    goto :goto_7

    :cond_17
    :goto_6
    iget-object v6, p0, Lnet/sf/saxon/serialize/XMLEmitter;->characterReferenceGenerator:Lnet/sf/saxon/serialize/CharacterReferenceGenerator;

    iget-object v7, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {v6, v5, v7}, Lnet/sf/saxon/serialize/CharacterReferenceGenerator;->outputCharacterReference(ILnet/sf/saxon/str/UnicodeWriter;)V

    :goto_7
    const-wide/16 v5, 0x1

    add-long/2addr v5, v9

    goto/16 :goto_2

    :cond_18
    return-void
.end method
