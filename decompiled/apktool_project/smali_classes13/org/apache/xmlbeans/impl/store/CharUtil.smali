.class public final Lorg/apache/xmlbeans/impl/store/CharUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;,
        Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CHARUTIL_INITIAL_BUFSIZE:I = 0x8000

.field private static final MAX_COPY:I = 0x40

.field private static final tl_charUtil:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/SoftReference<",
            "Lorg/apache/xmlbeans/impl/store/CharUtil;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public _cchSrc:I

.field private final _charBufSize:I

.field private final _charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

.field private _currentBuffer:[C

.field private _currentOffset:I

.field public _offSrc:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/ard;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ard;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->tl_charUtil:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charBufSize:I

    return-void
.end method

.method public static synthetic a()Ljava/lang/ref/SoftReference;
    .locals 1

    invoke-static {}, Lorg/apache/xmlbeans/impl/store/CharUtil;->lambda$static$0()Ljava/lang/ref/SoftReference;

    move-result-object v0

    return-object v0
.end method

.method private allocate(I)[C
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_currentBuffer:[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charBufSize:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_currentBuffer:[C

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_currentOffset:I

    :cond_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_currentOffset:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_currentBuffer:[C

    array-length v2, v2

    sub-int/2addr v2, v0

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_currentBuffer:[C

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_currentOffset:I

    add-int/2addr v2, p1

    iput v2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_currentOffset:I

    array-length p1, v0

    if-ne v2, p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_currentBuffer:[C

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_currentOffset:I

    :cond_1
    return-object v0
.end method

.method private canAllocate(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_currentBuffer:[C

    if-eqz v0, :cond_1

    array-length v0, v0

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_currentOffset:I

    sub-int/2addr v0, p0

    if-lt v0, p1, :cond_0

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

.method public static clearThreadLocals()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->tl_charUtil:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method public static dump(Ljava/lang/Object;II)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->dumpChars(Ljava/io/PrintStream;Ljava/lang/Object;II)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public static dumpChars(Ljava/io/PrintStream;Ljava/lang/Object;II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "off="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "<null-src>"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    const-string v1, " (Error)"

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/String;

    const-string v0, "String"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p3, v0, :cond_2

    :cond_1
    if-ltz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    add-int v0, p2, p3

    if-ltz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_2

    goto :goto_0

    :cond_2
    add-int/2addr p3, p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/CharUtil;->dumpText(Ljava/io/PrintStream;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void

    :cond_4
    instance-of v0, p1, [C

    if-eqz v0, :cond_8

    check-cast p1, [C

    const-string v0, "char[]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-nez p2, :cond_5

    array-length v0, p1

    if-eq p3, v0, :cond_6

    :cond_5
    if-ltz p2, :cond_7

    array-length v0, p1

    if-gt p2, v0, :cond_7

    add-int v0, p2, p3

    if-ltz v0, :cond_7

    array-length v2, p1

    if-le v0, v2, :cond_6

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/CharUtil;->dumpText(Ljava/io/PrintStream;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void

    :cond_8
    instance-of v0, p1, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    if-eqz v0, :cond_9

    const-string v0, "CharJoin"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    check-cast p1, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    invoke-static {p1, p0, p2, p3}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->access$200(Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;Ljava/io/PrintStream;II)V

    goto :goto_2

    :cond_9
    const-string p1, "Unknown text source"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private static dumpText(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 4

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x24

    if-ne v1, v3, :cond_0

    const-string p1, "..."

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const/16 v3, 0x9

    if-eq v2, v3, :cond_5

    const/16 v3, 0xa

    if-eq v2, v3, :cond_4

    const/16 v3, 0xc

    if-eq v2, v3, :cond_3

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(C)V

    goto :goto_1

    :cond_1
    const-string v2, "\\\""

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v2, "\\r"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "\\f"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "\\n"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v2, "\\t"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static getChars([CILjava/lang/Object;II)V
    .locals 1

    if-nez p4, :cond_0

    return-void

    :cond_0
    instance-of v0, p2, [C

    if-eqz v0, :cond_1

    check-cast p2, [C

    invoke-static {p2, p3, p0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/String;

    add-int/2addr p4, p3

    invoke-virtual {p2, p3, p4, p0, p1}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0

    :cond_2
    check-cast p2, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    invoke-static {p2, p0, p1, p3, p4}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->access$100(Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;[CIII)V

    :goto_0
    return-void
.end method

.method public static getString(Ljava/lang/Object;II)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    const-string p0, ""

    return-object p0

    .line 9
    :cond_0
    instance-of v0, p0, [C

    if-eqz v0, :cond_1

    .line 10
    new-instance v0, Ljava/lang/String;

    check-cast p0, [C

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 11
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 12
    check-cast p0, Ljava/lang/String;

    if-nez p1, :cond_2

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p2, v0, :cond_2

    return-object p0

    :cond_2
    add-int/2addr p2, p1

    .line 14
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 16
    check-cast p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    invoke-static {p0, v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->access$000(Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;Ljava/lang/StringBuffer;II)V

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/StringBuffer;Ljava/lang/Object;II)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    instance-of v0, p1, [C

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, [C

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 4
    check-cast p1, Ljava/lang/String;

    if-nez p2, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p3, v0, :cond_2

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    add-int/2addr p3, p2

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 8
    :cond_3
    check-cast p1, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    invoke-static {p1, p0, p2, p3}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->access$000(Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;Ljava/lang/StringBuffer;II)V

    :goto_0
    return-void
.end method

.method public static getThreadLocalCharUtil()Lorg/apache/xmlbeans/impl/store/CharUtil;
    .locals 3

    sget-object v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->tl_charUtil:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/store/CharUtil;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/xmlbeans/impl/store/CharUtil;

    const v2, 0x8000

    invoke-direct {v1, v2}, Lorg/apache/xmlbeans/impl/store/CharUtil;-><init>(I)V

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static isValid(Ljava/lang/Object;II)Z
    .locals 3

    const/4 v0, 0x0

    if-ltz p2, :cond_7

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-nez p0, :cond_2

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    instance-of v2, p0, [C

    if-eqz v2, :cond_4

    check-cast p0, [C

    array-length v2, p0

    if-gt p1, v2, :cond_3

    add-int/2addr p1, p2

    array-length p0, p0

    if-gt p1, p0, :cond_3

    move v0, v1

    :cond_3
    return v0

    :cond_4
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_6

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p1, v2, :cond_5

    add-int/2addr p1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gt p1, p0, :cond_5

    move v0, v1

    :cond_5
    return v0

    :cond_6
    instance-of v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    if-eqz v1, :cond_7

    check-cast p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->isValid(II)Z

    move-result p0

    return p0

    :cond_7
    :goto_0
    return v0
.end method

.method public static isWhiteSpace(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$static$0()Ljava/lang/ref/SoftReference;
    .locals 3

    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v1, Lorg/apache/xmlbeans/impl/store/CharUtil;

    const v2, 0x8000

    invoke-direct {v1, v2}, Lorg/apache/xmlbeans/impl/store/CharUtil;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getCharIterator(Ljava/lang/Object;II)Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->init(Ljava/lang/Object;II)V

    .line 2
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    return-object p0
.end method

.method public getCharIterator(Ljava/lang/Object;III)Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->init(Ljava/lang/Object;III)V

    .line 4
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    return-object p0
.end method

.method public insertChars(ILjava/lang/Object;IILjava/lang/Object;II)Ljava/lang/Object;
    .locals 8

    if-nez p7, :cond_0

    iput p4, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    iput p3, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    return-object p2

    :cond_0
    if-nez p4, :cond_1

    iput p7, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    iput p6, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    return-object p5

    :cond_1
    add-int v0, p4, p7

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    const/16 v1, 0x40

    if-gt v0, v1, :cond_2

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/CharUtil;->canAllocate(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/CharUtil;->allocate(I)[C

    move-result-object v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    invoke-static {v0, v1, p2, p3, p1}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    add-int/2addr v1, p1

    invoke-static {v0, v1, p5, p6, p7}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    add-int/2addr p0, p1

    add-int/2addr p0, p7

    add-int/2addr p3, p1

    sub-int/2addr p4, p1

    invoke-static {v0, p0, p2, p3, p4}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    if-nez p1, :cond_3

    new-instance p1, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    move-object v2, p1

    move-object v3, p5

    move v4, p6

    move v5, p7

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;-><init>(Ljava/lang/Object;IILjava/lang/Object;I)V

    :goto_0
    move-object v0, p1

    goto :goto_1

    :cond_3
    if-ne p1, p4, :cond_4

    new-instance p1, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v2 .. v7}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;-><init>(Ljava/lang/Object;IILjava/lang/Object;I)V

    goto :goto_0

    :cond_4
    new-instance p4, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    move-object v2, p4

    move-object v3, p2

    move v4, p3

    move v5, p1

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v2 .. v7}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;-><init>(Ljava/lang/Object;IILjava/lang/Object;I)V

    new-instance p5, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    const/4 v4, 0x0

    add-int v5, p1, p7

    add-int v7, p3, p1

    move-object v2, p5

    move-object v3, p4

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;-><init>(Ljava/lang/Object;IILjava/lang/Object;I)V

    move-object v0, p5

    :goto_1
    iget p1, v0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_depth:I

    if-le p1, v1, :cond_5

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    iget p2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->saveChars(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public final isWhiteSpace(Ljava/lang/Object;II)Z
    .locals 3

    const/4 v0, 0x1

    if-gtz p3, :cond_0

    return v0

    .line 2
    :cond_0
    instance-of v1, p1, [C

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 3
    check-cast p1, [C

    :goto_0
    if-lez p3, :cond_2

    add-int/lit8 p0, p2, 0x1

    .line 4
    aget-char p2, p1, p2

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isWhiteSpace(C)Z

    move-result p2

    if-nez p2, :cond_1

    return v2

    :cond_1
    add-int/lit8 p3, p3, -0x1

    move p2, p0

    goto :goto_0

    :cond_2
    return v0

    .line 5
    :cond_3
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 6
    check-cast p1, Ljava/lang/String;

    :goto_1
    if-lez p3, :cond_5

    add-int/lit8 p0, p2, 0x1

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isWhiteSpace(C)Z

    move-result p2

    if-nez p2, :cond_4

    return v2

    :cond_4
    add-int/lit8 p3, p3, -0x1

    move p2, p0

    goto :goto_1

    :cond_5
    return v0

    .line 8
    :cond_6
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->init(Ljava/lang/Object;II)V

    :cond_7
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 9
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->next()C

    move-result p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isWhiteSpace(C)Z

    move-result p1

    if-nez p1, :cond_7

    move v0, v2

    .line 10
    :cond_8
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->release()V

    return v0
.end method

.method public removeChars(IILjava/lang/Object;II)Ljava/lang/Object;
    .locals 9

    sub-int v0, p5, p2

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    add-int/2addr p4, p2

    iput p4, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    goto :goto_0

    :cond_1
    add-int v2, p1, p2

    if-ne v2, p5, :cond_2

    iput p4, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    goto :goto_0

    :cond_2
    const/16 v2, 0x40

    if-gt v0, v2, :cond_3

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/CharUtil;->canAllocate(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/CharUtil;->allocate(I)[C

    move-result-object v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    invoke-static {v0, v1, p3, p4, p1}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    add-int/2addr p0, p1

    add-int/2addr p4, p1

    add-int/2addr p4, p2

    sub-int/2addr p5, p1

    sub-int/2addr p5, p2

    invoke-static {v0, p0, p3, p4, p5}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    move-object p3, v0

    goto :goto_0

    :cond_3
    new-instance p5, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    add-int v0, p4, p1

    add-int v8, v0, p2

    move-object v3, p5

    move-object v4, p3

    move v5, p4

    move v6, p1

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;-><init>(Ljava/lang/Object;IILjava/lang/Object;I)V

    iget p1, p5, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_depth:I

    if-le p1, v2, :cond_4

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    invoke-virtual {p0, p5, v1, p1}, Lorg/apache/xmlbeans/impl/store/CharUtil;->saveChars(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    :cond_4
    iput v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    move-object p3, p5

    :goto_0
    return-object p3
.end method

.method public saveChars(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 1
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/store/CharUtil;->saveChars(Ljava/lang/Object;IILjava/lang/Object;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public saveChars(Ljava/lang/Object;IILjava/lang/Object;II)Ljava/lang/Object;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v5, p4

    .line 2
    invoke-direct {p0, v3}, Lorg/apache/xmlbeans/impl/store/CharUtil;->allocate(I)[C

    move-result-object v8

    .line 3
    iget v9, v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    .line 4
    iget v10, v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    .line 5
    invoke-static {v8, v9, v1, v2, v10}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    add-int v11, v10, p6

    const/16 v12, 0x40

    const/4 v13, 0x0

    if-nez p6, :cond_0

    move-object v14, v8

    goto :goto_1

    :cond_0
    if-ne v5, v8, :cond_1

    add-int v4, p5, p6

    if-ne v4, v9, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    instance-of v4, v5, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    if-eqz v4, :cond_2

    move-object v4, v5

    check-cast v4, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    iget-object v6, v4, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_srcRight:Ljava/lang/Object;

    if-ne v6, v8, :cond_2

    add-int v6, p5, p6

    iget v7, v4, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_cchLeft:I

    sub-int/2addr v6, v7

    iget v4, v4, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_offRight:I

    add-int/2addr v6, v4

    if-ne v6, v9, :cond_2

    :goto_0
    move/from16 v9, p5

    move-object v14, v5

    goto :goto_1

    .line 7
    :cond_2
    new-instance v14, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    move-object v4, v14

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v4 .. v9}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;-><init>(Ljava/lang/Object;IILjava/lang/Object;I)V

    .line 8
    iget v4, v14, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_depth:I

    if-le v4, v12, :cond_3

    invoke-virtual {p0, v14, v13, v11}, Lorg/apache/xmlbeans/impl/store/CharUtil;->saveChars(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    :cond_3
    move v9, v13

    :goto_1
    sub-int v4, v3, v10

    if-lez v4, :cond_5

    .line 9
    invoke-direct {p0, v4}, Lorg/apache/xmlbeans/impl/store/CharUtil;->allocate(I)[C

    move-result-object v5

    .line 10
    iget v6, v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 11
    invoke-static {v5, v6, v1, v2, v4}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    .line 12
    new-instance v1, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    move-object/from16 p1, v1

    move-object/from16 p2, v14

    move/from16 p3, v9

    move/from16 p4, v11

    move-object/from16 p5, v5

    move/from16 p6, v6

    invoke-direct/range {p1 .. p6}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;-><init>(Ljava/lang/Object;IILjava/lang/Object;I)V

    add-int/2addr v11, v4

    .line 13
    iget v2, v1, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_depth:I

    if-le v2, v12, :cond_4

    invoke-virtual {p0, v1, v13, v11}, Lorg/apache/xmlbeans/impl/store/CharUtil;->saveChars(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    :cond_4
    move-object v14, v1

    goto :goto_2

    :cond_5
    move v13, v9

    .line 14
    :goto_2
    iput v13, v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    .line 15
    iput v11, v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    return-object v14
.end method

.method public stripLeft(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-lez p3, :cond_4

    instance-of v1, p1, [C

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, [C

    :goto_0
    if-lez p3, :cond_4

    aget-char v2, v1, p2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isWhiteSpace(C)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :goto_1
    if-lez p3, :cond_4

    invoke-virtual {v1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isWhiteSpace(C)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->init(Ljava/lang/Object;II)V

    move v1, v0

    :goto_2
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->next()C

    move-result v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isWhiteSpace(C)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->release()V

    add-int/2addr p2, v1

    :cond_4
    if-nez p3, :cond_5

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    const/4 p0, 0x0

    return-object p0

    :cond_5
    iput p2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    iput p3, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    return-object p1
.end method

.method public stripRight(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 1

    if-lez p3, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {v0, p1, p2, p3, p3}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->init(Ljava/lang/Object;III)V

    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->hasPrev()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->prev()C

    move-result v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isWhiteSpace(C)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->release()V

    :cond_2
    if-nez p3, :cond_3

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    const/4 p0, 0x0

    return-object p0

    :cond_3
    iput p2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    iput p3, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    return-object p1
.end method
