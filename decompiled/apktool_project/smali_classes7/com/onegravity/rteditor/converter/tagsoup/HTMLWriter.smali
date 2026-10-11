.class public Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;
.super Lorg/xml/sax/helpers/XMLFilterImpl;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field public static final CDATA_SECTION_ELEMENTS:Ljava/lang/String; = "cdata-section-elements"

.field public static final DOCTYPE_PUBLIC:Ljava/lang/String; = "doctype-public"

.field public static final DOCTYPE_SYSTEM:Ljava/lang/String; = "doctype-system"

.field public static final ENCODING:Ljava/lang/String; = "encoding"

.field public static final INDENT:Ljava/lang/String; = "indent"

.field public static J:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final MEDIA_TYPE:Ljava/lang/String; = "media-type"

.field public static final METHOD:Ljava/lang/String; = "method"

.field public static final O:[Ljava/lang/String;

.field public static final OMIT_XML_DECLARATION:Ljava/lang/String; = "omit-xml-declaration"

.field public static final Q:Landroid/text/util/Linkify$MatchFilter;

.field public static final STANDALONE:Ljava/lang/String; = "standalone"

.field public static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field public e:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:Ljava/io/Writer;

.field public j:Lorg/xml/sax/helpers/NamespaceSupport;

.field public k:I

.field public l:Ljava/util/Properties;

.field public m:Ljava/lang/String;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Z

.field public v:Z

.field public w:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public x:[Ljava/lang/String;

.field public y:Z

.field public z:Ljava/lang/StringBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->J:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "http-equiv"

    const-string v2, "Refresh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->J:Ljava/util/Map;

    const-string v2, "meta"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->J:Ljava/util/Map;

    const-string v2, "iframe"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "autoplay"

    const-string v2, "autoplay#true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->J:Ljava/util/Map;

    const-string v2, "audio"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->J:Ljava/util/Map;

    const-string v2, "video"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "https://"

    const-string v1, "rtsp://"

    const-string v2, "http://"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->O:[Ljava/lang/String;

    new-instance v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter$a;

    invoke-direct {v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter$a;-><init>()V

    sput-object v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->Q:Landroid/text/util/Linkify$MatchFilter;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h:I

    iput v1, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->k:I

    const-string v2, ""

    iput-object v2, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->m:Ljava/lang/String;

    iput-boolean v1, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->n:Z

    iput-boolean v1, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->o:Z

    iput-boolean v1, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->p:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->q:Ljava/lang/String;

    iput-object v2, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->r:Ljava/lang/String;

    iput-object v2, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->s:Ljava/lang/String;

    iput-object v2, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->t:Ljava/lang/String;

    iput-boolean v1, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->u:Z

    const-string v3, "checked"

    const-string v4, "compact"

    const-string v5, "declare"

    const-string v6, "defer"

    const-string v7, "disabled"

    const-string v8, "ismap"

    const-string v9, "multiple"

    const-string v10, "nohref"

    const-string v11, "noresize"

    const-string v12, "noshade"

    const-string v13, "nowrap"

    const-string v14, "readonly"

    const-string v15, "selected"

    filled-new-array/range {v3 .. v15}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->x:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->z:Ljava/lang/StringBuffer;

    new-instance v1, Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-direct {v1}, Lorg/xml/sax/helpers/NamespaceSupport;-><init>()V

    iput-object v1, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->j:Lorg/xml/sax/helpers/NamespaceSupport;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->e:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->f:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->g:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->l:Ljava/util/Properties;

    const-string v1, "method"

    const-string v2, "html"

    invoke-virtual {v0, v1, v2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "omit-xml-declaration"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v1, p1

    iput-boolean v1, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->v:Z

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->w:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/16 v1, 0x3a

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v1, v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_1

    return p3

    :cond_1
    move p2, p3

    :goto_0
    iget-object v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->x:[Ljava/lang/String;

    array-length v2, v1

    if-ge p2, v2, :cond_3

    aget-object v1, v1, p2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return p3
.end method

.method public final b([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->z:Ljava/lang/StringBuffer;

    invoke-static {p1, p2, p3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->j:Lorg/xml/sax/helpers/NamespaceSupport;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->j:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {p0, v1, v1}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-object v3

    :cond_1
    if-eqz p3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->j:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v2, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    iget-object v2, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->g:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_7

    if-eqz p3, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->j:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v4, v2}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    :cond_6
    move-object v2, v3

    :cond_7
    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->e:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_a

    if-eqz p3, :cond_8

    if-eqz v0, :cond_9

    :cond_8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    :cond_9
    iget-object v4, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->j:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v4, v2}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    goto :goto_1

    :cond_a
    move-object v3, v2

    :cond_b
    :goto_1
    if-nez v3, :cond_d

    if-eqz p2, :cond_d

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const/16 v2, 0x3a

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_c

    if-eqz p3, :cond_d

    if-nez v0, :cond_d

    goto :goto_2

    :cond_c
    const/4 p3, 0x0

    invoke-virtual {p2, p3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_d
    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_f

    iget-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->j:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {p2, v1}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_e

    goto :goto_3

    :cond_e
    iget-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->j:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {p2, v1, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->g:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_f
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "__NS"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->k:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->k:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->u:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->y:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->n()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->k(Ljava/lang/String;IIZ)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->b([CII)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->n()V

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_2

    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->characters([CII)V

    return-void
.end method

.method public comment([CII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "<!--"

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    aget-char v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h(C)V

    aget-char v2, p1, v0

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, 0x1

    if-gt v2, v1, :cond_0

    aget-char v1, p1, v2

    if-ne v1, v3, :cond_0

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h(C)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "-->"

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->c(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Z
    .locals 8

    sget-object p1, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->J:Ljava/util/Map;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v4, p2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->f(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->w:Ljava/util/Stack;

    invoke-virtual {p0, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method public endCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endDTD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->n()V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h(C)V

    invoke-super {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->endDocument()V

    :try_start_0
    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->n()V

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->w:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->w:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->w:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto/16 :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->n:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v0, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "area"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "base"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "basefont"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "br"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "col"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "frame"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "hr"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "img"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "input"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "isindex"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "link"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "meta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "param"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "</"

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h(C)V

    :cond_3
    iget v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h:I

    if-ne v0, v1, :cond_4

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h(C)V

    :cond_4
    iget-boolean v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->n:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const-string v0, "a"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->y:Z

    :cond_5
    iput-boolean v2, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->u:Z

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->j:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {p1}, Lorg/xml/sax/helpers/NamespaceSupport;->popContext()V

    iget p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h:I

    :goto_0
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

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

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->n()V

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public forceNSDecl(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->f:Ljava/util/Hashtable;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public forceNSDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->forceNSDecl(Ljava/lang/String;)V

    return-void
.end method

.method public final g(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;)Ljava/lang/String;
    .locals 7

    const/4 p0, 0x0

    move p3, p0

    :goto_0
    array-length v0, p2

    if-ge p3, v0, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    aget-object v4, p2, p3

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v4, p2, p3

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p2, p3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p3, p2, p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    move v1, p0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p0, p2, p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    const-string p0, "\u00a0"

    const-string p2, ""

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOutputProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->l:Ljava/util/Properties;

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->e:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final h(C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i:Ljava/io/Writer;

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i:Ljava/io/Writer;

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public ignorableWhitespace([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->n()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->k(Ljava/lang/String;IIZ)V

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->ignorableWhitespace([CII)V

    return-void
.end method

.method public final j(Lorg/xml/sax/Attributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h(C)V

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5, v1}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v3, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->n:Z

    if-eqz v3, :cond_0

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "=\""

    invoke-virtual {p0, v3}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v1, v4, v5}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->k(Ljava/lang/String;IIZ)V

    const/16 v3, 0x22

    invoke-virtual {p0, v3}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h(C)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final k(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    add-int/2addr p3, p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/onegravity/rteditor/converter/tagsoup/util/StringEscapeUtils;->escapeHtml4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final l()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->j:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->getDeclaredPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->j:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v2, v1}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    :cond_0
    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h(C)V

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "xmlns=\""

    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v3, "xmlns:"

    invoke-virtual {p0, v3}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    const-string v1, "=\""

    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v1, v3}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->k(Ljava/lang/String;IIZ)V

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h(C)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p1, p3, p4}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->c(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const/16 p4, 0x3a

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h(C)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p4}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p3, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final n()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->z:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->z:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i:Ljava/io/Writer;

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    iput-object v2, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i:Ljava/io/Writer;

    sget-object v2, Lcom/onegravity/rteditor/converter/tagsoup/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    iget-object v3, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->z:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->Q:Landroid/text/util/Linkify$MatchFilter;

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->z:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-interface {v5, v6, v7, v8}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {p0, v0, v4, v5, v3}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->k(Ljava/lang/String;IIZ)V

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->O:[Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->g(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i:Ljava/io/Writer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<a href=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\">"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v3, v5, v3}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->k(Ljava/lang/String;IIZ)V

    iget-object v4, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i:Ljava/io/Writer;

    const-string v5, "</a>"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v4, v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {p0, v0, v4, v2, v3}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->k(Ljava/lang/String;IIZ)V

    :cond_3
    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i:Ljava/io/Writer;

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->z:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_4
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->n()V

    const-string v0, "<?"

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h(C)V

    invoke-virtual {p0, p2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    const-string v0, "?>"

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    iget v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h(C)V

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->n()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h:I

    iput v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->k:I

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->j:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {p0}, Lorg/xml/sax/helpers/NamespaceSupport;->reset()V

    return-void
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/io/OutputStreamWriter;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i:Ljava/io/Writer;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i:Ljava/io/Writer;

    :goto_0
    return-void
.end method

.method public setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->l:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "encoding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->m:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "method"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "html"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->n:Z

    goto :goto_0

    :cond_1
    const-string v0, "doctype-public"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iput-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->q:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->o:Z

    goto :goto_0

    :cond_2
    const-string v0, "doctype-system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->r:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->o:Z

    goto :goto_0

    :cond_3
    const-string v0, "version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->s:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "standalone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iput-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->t:Ljava/lang/String;

    :cond_5
    :goto_0
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->e:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->p:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->p:Z

    const-string v0, "<!DOCTYPE "

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    const-string p1, ""

    if-nez p3, :cond_2

    move-object p3, p1

    :cond_2
    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->r:Ljava/lang/String;

    if-eqz v0, :cond_3

    move-object p3, v0

    :cond_3
    const/16 v0, 0x22

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x27

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_0
    iget-object v4, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->q:Ljava/lang/String;

    if-eqz v4, :cond_5

    move-object p2, v4

    :cond_5
    if-eqz p2, :cond_7

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-eq p1, v3, :cond_6

    move v0, v2

    :cond_6
    const-string p1, " PUBLIC "

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h(C)V

    invoke-virtual {p0, p2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h(C)V

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h(C)V

    goto :goto_1

    :cond_7
    const-string p1, " SYSTEM "

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h(C)V

    invoke-virtual {p0, p3}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h(C)V

    const-string p1, ">\n"

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    return-void
.end method

.method public startDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->n()V

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->reset()V

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->l:Ljava/util/Properties;

    const-string v1, "omit-xml-declaration"

    const-string v2, "no"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "<?xml"

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->s:Ljava/lang/String;

    const-string v1, "\""

    if-nez v0, :cond_0

    const-string v0, " version=\"1.0\""

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, " version=\""

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->s:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v2, ""

    if-eq v0, v2, :cond_1

    const-string v0, " encoding=\""

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->t:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, " standalone=\"yes\"?>\n"

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, " standalone=\""

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->t:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->i(Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-super {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->startDocument()V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->n()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h:I

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->j:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    iget-boolean v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->o:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->p:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    const-string v2, ""

    invoke-virtual {p0, v0, v2, v2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h(C)V

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, p4}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->j(Lorg/xml/sax/Attributes;)V

    iget v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->d()V

    :cond_2
    iget-boolean v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->v:Z

    if-eqz v0, :cond_3

    const-string v0, "html"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->l()V

    :cond_4
    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->h(C)V

    iget-boolean v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->n:Z

    if-eqz v0, :cond_6

    const-string v0, "script"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "style"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iput-boolean v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->u:Z

    :cond_6
    iget-boolean v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->n:Z

    if-eqz v0, :cond_7

    const-string v0, "a"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLWriter;->y:Z

    :cond_7
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_8
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method
