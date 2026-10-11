.class public Lnet/sf/saxon/serialize/HTMLIndenter;
.super Lnet/sf/saxon/event/ProxyReceiver;
.source "SourceFile"


# static fields
.field public static final m:[Ljava/lang/String;

.field public static final n:[Ljava/lang/String;

.field public static final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final q:I = 0x1

.field public static final r:I = 0x2

.field public static final s:I = 0x4


# instance fields
.field public e:Ljava/lang/String;

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field protected indentChars:[C

.field public j:Z

.field public k:[I

.field public l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 61

    const-string v0, "pre"

    const-string v1, "script"

    const-string v2, "style"

    const-string v3, "textarea"

    const-string v4, "title"

    const-string v5, "xmp"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/serialize/HTMLIndenter;->m:[Ljava/lang/String;

    const-string v1, "a"

    const-string v2, "abbr"

    const-string v3, "acronym"

    const-string v4, "applet"

    const-string v5, "area"

    const-string v6, "audio"

    const-string v7, "b"

    const-string v8, "basefont"

    const-string v9, "bdi"

    const-string v10, "bdo"

    const-string v11, "big"

    const-string v12, "br"

    const-string v13, "button"

    const-string v14, "canvas"

    const-string v15, "cite"

    const-string v16, "code"

    const-string v17, "data"

    const-string v18, "datalist"

    const-string v19, "del"

    const-string v20, "dfn"

    const-string v21, "em"

    const-string v22, "embed"

    const-string v23, "font"

    const-string v24, "i"

    const-string v25, "iframe"

    const-string v26, "img"

    const-string v27, "input"

    const-string v28, "ins"

    const-string v29, "kbd"

    const-string v30, "label"

    const-string v31, "map"

    const-string v32, "mark"

    const-string v33, "math"

    const-string v34, "meter"

    const-string v35, "noscript"

    const-string v36, "object"

    const-string v37, "output"

    const-string v38, "picture"

    const-string v39, "progress"

    const-string v40, "q"

    const-string v41, "ruby"

    const-string v42, "s"

    const-string v43, "samp"

    const-string v44, "script"

    const-string v45, "select"

    const-string v46, "small"

    const-string v47, "span"

    const-string v48, "strike"

    const-string v49, "strong"

    const-string v50, "sub"

    const-string v51, "sup"

    const-string v52, "svg"

    const-string v53, "template"

    const-string v54, "textarea"

    const-string v55, "time"

    const-string v56, "tt"

    const-string v57, "u"

    const-string v58, "var"

    const-string v59, "video"

    const-string v60, "wbr"

    filled-new-array/range {v1 .. v60}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/serialize/HTMLIndenter;->n:[Ljava/lang/String;

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x46

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    sput-object v2, Lnet/sf/saxon/serialize/HTMLIndenter;->o:Ljava/util/Set;

    new-instance v3, Ljava/util/HashSet;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    sput-object v3, Lnet/sf/saxon/serialize/HTMLIndenter;->p:Ljava/util/Set;

    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-static {v3, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/event/Receiver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/ProxyReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    const/16 p1, 0x10

    new-array p1, p1, [C

    fill-array-data p1, :array_0

    iput-object p1, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->indentChars:[C

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->f:I

    iput-boolean p1, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->g:Z

    iput-boolean p1, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->h:Z

    iput-boolean p1, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->i:Z

    iput-boolean p1, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->j:Z

    const/16 p1, 0x14

    new-array p1, p1, [I

    iput-object p1, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->k:[I

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->l:Ljava/util/Set;

    return-void

    nop

    :array_0
    .array-data 2
        0xas
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
    .end array-data
.end method


# virtual methods
.method public final c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->f:I

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/HTMLIndenter;->getIndentation()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lnet/sf/saxon/str/IndentWhitespace;->of(II)Lnet/sf/saxon/str/IndentWhitespace;

    move-result-object v0

    sget-object v2, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    iput-boolean v3, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->g:Z

    return-void
.end method

.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->f:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->k:[I

    sub-int/2addr v0, v1

    aget v0, v3, v0

    and-int/lit8 v0, v0, 0x4

    :goto_0
    iget-boolean v3, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->h:Z

    if-nez v3, :cond_5

    if-gtz v0, :cond_5

    const/16 v0, 0x100

    invoke-static {p3, v0}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p3, v1}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    move v1, v2

    move v3, v1

    :goto_1
    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v4

    const/16 v5, 0xa

    const/16 v6, 0x20

    if-eq v4, v5, :cond_2

    sub-int v5, v3, v1

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/HTMLIndenter;->getLineLength()I

    move-result v7

    if-le v5, v7, :cond_3

    if-ne v4, v6, :cond_3

    :cond_2
    iput-boolean v2, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->g:Z

    iget-object v4, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    int-to-long v7, v1

    int-to-long v9, v3

    invoke-virtual {p1, v7, v8, v9, v10}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-interface {v4, v1, p2, p3}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/HTMLIndenter;->c()V

    add-int/lit8 v1, v3, 0x1

    :goto_2
    int-to-long v4, v1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v7

    cmp-long v7, v4, v7

    if-gez v7, :cond_3

    invoke-virtual {p1, v4, v5}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v4

    if-ne v4, v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    int-to-long v0, v1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_6

    iget-object v3, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v4

    invoke-virtual {p1, v0, v1, v4, v5}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-interface {v3, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :cond_6
    :goto_4
    iput-boolean v2, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->i:Z

    iput-boolean v2, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->j:Z

    return-void
.end method

.method public classifyTag(Lnet/sf/saxon/om/NodeName;)I
    .locals 3

    sget-object v0, Lnet/sf/saxon/serialize/HTMLIndenter;->o:Ljava/util/Set;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Lnet/sf/saxon/serialize/HTMLIndenter;->p:Ljava/util/Set;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->l:Ljava/util/Set;

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    return v0
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->j:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->f:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->k:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/HTMLIndenter;->c()V

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->j:Z

    return-void
.end method

.method public endElement()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->f:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->f:I

    iget-object v2, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->k:[I

    aget v0, v2, v0

    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    iget-boolean v5, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->j:Z

    if-eqz v5, :cond_3

    if-nez v2, :cond_3

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->i:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->g:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->h:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/HTMLIndenter;->c()V

    iput-boolean v3, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->i:Z

    goto :goto_3

    :cond_3
    iput-boolean v2, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->i:Z

    :goto_3
    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->endElement()V

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->h:Z

    if-eqz v0, :cond_4

    if-nez v4, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v3

    :goto_4
    iput-boolean v0, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->h:Z

    iput-boolean v3, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->g:Z

    iput-boolean v1, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->j:Z

    return-void
.end method

.method public getIndentation()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getLineLength()I
    .locals 0

    const/16 p0, 0x50

    return p0
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->j:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->f:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->k:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/HTMLIndenter;->c()V

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/sf/saxon/event/Receiver;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->j:Z

    return-void
.end method

.method public setOutputProperties(Ljava/util/Properties;)V
    .locals 2

    const-string v0, "suppress-indentation"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->l:Ljava/util/Set;

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, " \t\r\n"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lnet/sf/saxon/serialize/HTMLIndenter;->l:Ljava/util/Set;

    invoke-static {p1}, Lnet/sf/saxon/om/FingerprintedQName;->fromEQName(Ljava/lang/String;)Lnet/sf/saxon/om/FingerprintedQName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/FingerprintedQName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object v0, p0

    iget v1, v0, Lnet/sf/saxon/serialize/HTMLIndenter;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lnet/sf/saxon/serialize/HTMLIndenter;->k:[I

    sub-int/2addr v1, v3

    aget v1, v4, v1

    and-int/lit8 v1, v1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/HTMLIndenter;->classifyTag(Lnet/sf/saxon/om/NodeName;)I

    move-result v4

    or-int/2addr v4, v1

    iget v5, v0, Lnet/sf/saxon/serialize/HTMLIndenter;->f:I

    iget-object v6, v0, Lnet/sf/saxon/serialize/HTMLIndenter;->k:[I

    array-length v7, v6

    if-lt v5, v7, :cond_1

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    iput-object v5, v0, Lnet/sf/saxon/serialize/HTMLIndenter;->k:[I

    :cond_1
    iget-object v5, v0, Lnet/sf/saxon/serialize/HTMLIndenter;->k:[I

    iget v6, v0, Lnet/sf/saxon/serialize/HTMLIndenter;->f:I

    aput v4, v5, v6

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    if-nez v5, :cond_3

    iget-boolean v5, v0, Lnet/sf/saxon/serialize/HTMLIndenter;->h:Z

    if-nez v5, :cond_3

    iget-boolean v5, v0, Lnet/sf/saxon/serialize/HTMLIndenter;->i:Z

    if-nez v5, :cond_3

    if-nez v1, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/HTMLIndenter;->c()V

    :cond_3
    iget-object v7, v0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    move-object v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    invoke-interface/range {v7 .. v13}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    iget-boolean v1, v0, Lnet/sf/saxon/serialize/HTMLIndenter;->h:Z

    if-nez v1, :cond_5

    and-int/lit8 v1, v4, 0x2

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v1, v3

    :goto_3
    iput-boolean v1, v0, Lnet/sf/saxon/serialize/HTMLIndenter;->h:Z

    iget v1, v0, Lnet/sf/saxon/serialize/HTMLIndenter;->f:I

    add-int/2addr v1, v3

    iput v1, v0, Lnet/sf/saxon/serialize/HTMLIndenter;->f:I

    iput-boolean v3, v0, Lnet/sf/saxon/serialize/HTMLIndenter;->g:Z

    iput-boolean v2, v0, Lnet/sf/saxon/serialize/HTMLIndenter;->i:Z

    iput-boolean v2, v0, Lnet/sf/saxon/serialize/HTMLIndenter;->j:Z

    return-void
.end method
