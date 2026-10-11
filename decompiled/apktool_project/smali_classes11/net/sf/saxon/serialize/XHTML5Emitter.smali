.class public Lnet/sf/saxon/serialize/XHTML5Emitter;
.super Lnet/sf/saxon/serialize/XMLEmitter;
.source "SourceFile"


# static fields
.field public static final q:[Ljava/lang/String;

.field public static r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final t:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 108

    const-string v0, "a"

    const-string v1, "abbr"

    const-string v2, "address"

    const-string v3, "area"

    const-string v4, "article"

    const-string v5, "aside"

    const-string v6, "audio"

    const-string v7, "b"

    const-string v8, "base"

    const-string v9, "bdi"

    const-string v10, "bdo"

    const-string v11, "blockquote"

    const-string v12, "body"

    const-string v13, "br"

    const-string v14, "button"

    const-string v15, "canvas"

    const-string v16, "caption"

    const-string v17, "cite"

    const-string v18, "code"

    const-string v19, "col"

    const-string v20, "colgroup"

    const-string v21, "datalist"

    const-string v22, "dd"

    const-string v23, "del"

    const-string v24, "details"

    const-string v25, "dfn"

    const-string v26, "dialog"

    const-string v27, "div"

    const-string v28, "dl"

    const-string v29, "dt"

    const-string v30, "em"

    const-string v31, "embed"

    const-string v32, "fieldset"

    const-string v33, "figcaption"

    const-string v34, "figure"

    const-string v35, "footer"

    const-string v36, "form"

    const-string v37, "h1"

    const-string v38, "h2"

    const-string v39, "h3"

    const-string v40, "h4"

    const-string v41, "h5"

    const-string v42, "h6"

    const-string v43, "head"

    const-string v44, "header"

    const-string v45, "hgroup"

    const-string v46, "hr"

    const-string v47, "html"

    const-string v48, "i"

    const-string v49, "iframe"

    const-string v50, "img"

    const-string v51, "input"

    const-string v52, "ins"

    const-string v53, "kbd"

    const-string v54, "keygen"

    const-string v55, "label"

    const-string v56, "legend"

    const-string v57, "li"

    const-string v58, "link"

    const-string v59, "map"

    const-string v60, "mark"

    const-string v61, "menu"

    const-string v62, "meta"

    const-string v63, "meter"

    const-string v64, "nav"

    const-string v65, "noscript"

    const-string v66, "object"

    const-string v67, "ol"

    const-string v68, "optgroup"

    const-string v69, "option"

    const-string v70, "output"

    const-string v71, "p"

    const-string v72, "param"

    const-string v73, "pre"

    const-string v74, "progress"

    const-string v75, "q"

    const-string v76, "rp"

    const-string v77, "rt"

    const-string v78, "ruby"

    const-string v79, "s"

    const-string v80, "samp"

    const-string v81, "script"

    const-string v82, "section"

    const-string v83, "select"

    const-string v84, "small"

    const-string v85, "source"

    const-string v86, "span"

    const-string v87, "strong"

    const-string v88, "style"

    const-string v89, "sub"

    const-string v90, "summary"

    const-string v91, "sup"

    const-string v92, "table"

    const-string v93, "tbody"

    const-string v94, "td"

    const-string v95, "textarea"

    const-string v96, "tfoot"

    const-string v97, "th"

    const-string v98, "thead"

    const-string v99, "time"

    const-string v100, "title"

    const-string v101, "tr"

    const-string v102, "track"

    const-string v103, "u"

    const-string v104, "ul"

    const-string v105, "var"

    const-string v106, "video"

    const-string v107, "wbr"

    filled-new-array/range {v0 .. v107}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/serialize/XHTML5Emitter;->q:[Ljava/lang/String;

    new-instance v1, Ljava/util/HashSet;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    sput-object v1, Lnet/sf/saxon/serialize/XHTML5Emitter;->r:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    sput-object v1, Lnet/sf/saxon/serialize/XHTML5Emitter;->s:Ljava/util/Set;

    const-string v3, "area"

    const-string v4, "base"

    const-string v5, "br"

    const-string v6, "col"

    const-string v7, "embed"

    const-string v8, "hr"

    const-string v9, "img"

    const-string v10, "input"

    const-string v11, "keygen"

    const-string v12, "link"

    const-string v13, "meta"

    const-string v14, "param"

    const-string v15, "source"

    const-string v16, "track"

    const-string v17, "wbr"

    filled-new-array/range {v3 .. v17}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lnet/sf/saxon/serialize/XHTML5Emitter;->t:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sget-object v1, Lnet/sf/saxon/serialize/XHTML5Emitter;->r:Ljava/util/Set;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/serialize/XMLEmitter;-><init>()V

    return-void
.end method


# virtual methods
.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->started:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/serialize/XMLEmitter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :goto_0
    return-void
.end method

.method public final l(Lnet/sf/saxon/om/NodeName;)Z
    .locals 0

    const-string p0, "http://www.w3.org/1999/xhtml"

    invoke-interface {p1, p0}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ""

    invoke-interface {p1, p0}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lnet/sf/saxon/serialize/XHTML5Emitter;->r:Ljava/util/Set;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

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

.method public writeDocType(Lnet/sf/saxon/om/NodeName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-nez p3, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/XHTML5Emitter;->l(Lnet/sf/saxon/om/NodeName;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object p3, Lnet/sf/saxon/serialize/XMLEmitter;->DOCTYPE:[B

    invoke-interface {p1, p3}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p1, p2}, Lnet/sf/saxon/str/UnicodeWriter;->write(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    const/16 p1, 0x3e

    invoke-interface {p0, p1}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    if-eqz p3, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Lnet/sf/saxon/serialize/XMLEmitter;->writeDocType(Lnet/sf/saxon/om/NodeName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public writeDocTypeWithNullSystemId()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public writeEmptyElementTagCloser(Ljava/lang/String;Lnet/sf/saxon/om/NodeName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lnet/sf/saxon/serialize/XHTML5Emitter;->l(Lnet/sf/saxon/om/NodeName;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/sf/saxon/serialize/XHTML5Emitter;->s:Ljava/util/Set;

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object p1, Lnet/sf/saxon/str/StringConstants;->EMPTY_TAG_END:[B

    invoke-interface {p0, p1}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v0, Lnet/sf/saxon/str/StringConstants;->EMPTY_TAG_MIDDLE:[B

    invoke-interface {p2, v0}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    iget-object p2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p2, p1}, Lnet/sf/saxon/str/UnicodeWriter;->write(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    const/16 p1, 0x3e

    invoke-interface {p0, p1}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    :goto_0
    return-void
.end method
