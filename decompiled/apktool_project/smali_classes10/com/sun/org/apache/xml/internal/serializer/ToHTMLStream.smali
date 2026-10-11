.class public final Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;
.super Lcom/sun/org/apache/xml/internal/serializer/ToStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;
    }
.end annotation


# static fields
.field private static final m_dummy:Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

.field static final m_elementFlags:Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;

.field private static final m_htmlcharInfo:Lcom/sun/org/apache/xml/internal/serializer/CharInfo;


# instance fields
.field private m_htmlInfo:Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;

.field private m_inBlockElem:Z

.field protected m_inDTD:Z

.field private m_omitMetaTag:Z

.field private m_specialEscapeURLs:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "com.sun.org.apache.xml.internal.serializer.HTMLEntities"

    const-string v1, "html"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->getCharInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_htmlcharInfo:Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_elementFlags:Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->initTagReference(Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;)V

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    sput-object v0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_dummy:Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_inDTD:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_inBlockElem:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_omitMetaTag:Z

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;

    sget-object v1, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_elementFlags:Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;-><init>(Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_htmlInfo:Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;

    sget-object v0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_htmlcharInfo:Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_charInfo:Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_prefixMap:Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    return-void
.end method

.method public static final getElemDesc(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_elementFlags:Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    return-object p0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_dummy:Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    return-object p0
.end method

.method private getElemDesc2(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_htmlInfo:Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get2(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    return-object p0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_dummy:Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    return-object p0
.end method

.method private final getOmitMetaTag()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_omitMetaTag:Z

    return p0
.end method

.method private final getSpecialEscapeURLs()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    return p0
.end method

.method public static initTagReference(Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;)V
    .locals 13

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v2, "BASEFONT"

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v3, "FRAME"

    invoke-virtual {p0, v3, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const/16 v4, 0x8

    invoke-direct {v0, v4}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v5, "FRAMESET"

    invoke-virtual {p0, v5, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v4}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v5, "NOFRAMES"

    invoke-virtual {p0, v5, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v2}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v5, "ISINDEX"

    invoke-virtual {p0, v5, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const/high16 v5, 0x200000

    invoke-direct {v0, v5}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v5, "APPLET"

    invoke-virtual {p0, v5, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v4}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v5, "CENTER"

    invoke-virtual {p0, v5, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v4}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v5, "DIR"

    invoke-virtual {p0, v5, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v4}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v6, "MENU"

    invoke-virtual {p0, v6, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const/16 v7, 0x1000

    invoke-direct {v0, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v8, "TT"

    invoke-virtual {p0, v8, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v8, "I"

    invoke-virtual {p0, v8, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v8, "B"

    invoke-virtual {p0, v8, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v8, "BIG"

    invoke-virtual {p0, v8, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v8, "SMALL"

    invoke-virtual {p0, v8, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const/16 v8, 0x2000

    invoke-direct {v0, v8}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v9, "EM"

    invoke-virtual {p0, v9, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v8}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v9, "STRONG"

    invoke-virtual {p0, v9, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v8}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v9, "DFN"

    invoke-virtual {p0, v9, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v8}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v9, "CODE"

    invoke-virtual {p0, v9, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v8}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v9, "SAMP"

    invoke-virtual {p0, v9, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v8}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v9, "KBD"

    invoke-virtual {p0, v9, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v8}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v9, "VAR"

    invoke-virtual {p0, v9, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v8}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v9, "CITE"

    invoke-virtual {p0, v9, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v8}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v10, "ABBR"

    invoke-virtual {p0, v10, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v8}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v8, "ACRONYM"

    invoke-virtual {p0, v8, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const v8, 0x18000

    invoke-direct {v0, v8}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v10, "SUP"

    invoke-virtual {p0, v10, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v8}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v10, "SUB"

    invoke-virtual {p0, v10, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v8}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v10, "SPAN"

    invoke-virtual {p0, v10, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v8}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v10, "BDO"

    invoke-virtual {p0, v10, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const v10, 0x1800a

    invoke-direct {v0, v10}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v10, "BR"

    invoke-virtual {p0, v10, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v4}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v10, "BODY"

    invoke-virtual {p0, v10, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const/16 v10, 0x38

    invoke-direct {v0, v10}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "ADDRESS"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v10}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "DIV"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const v11, 0x8000

    invoke-direct {v0, v11}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "A"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const v11, 0x18008

    invoke-direct {v0, v11}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "MAP"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v2}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "AREA"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const v11, 0x2000a

    invoke-direct {v0, v11}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "LINK"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const v11, 0x218002

    invoke-direct {v0, v11}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "IMG"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const v11, 0x238000

    invoke-direct {v0, v11}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "OBJECT"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "PARAM"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const/16 v11, 0x3a

    invoke-direct {v0, v11}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "HR"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v10}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "P"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const v11, 0x40008

    invoke-direct {v0, v11}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v12, "H1"

    invoke-virtual {p0, v12, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v11}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v12, "H2"

    invoke-virtual {p0, v12, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v11}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v12, "H3"

    invoke-virtual {p0, v12, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v11}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v12, "H4"

    invoke-virtual {p0, v12, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v11}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v12, "H5"

    invoke-virtual {p0, v12, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v11}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "H6"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const v11, 0x100008

    invoke-direct {v0, v11}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "PRE"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v8}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v8, "Q"

    invoke-virtual {p0, v8, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v10}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v8, "BLOCKQUOTE"

    invoke-virtual {p0, v8, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const/4 v8, 0x0

    invoke-direct {v0, v8}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "INS"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v8}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "DEL"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v10}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "DL"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v4}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "DT"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v4}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "DD"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const v11, 0x80008

    invoke-direct {v0, v11}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "OL"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const v11, 0x80008

    invoke-direct {v0, v11}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "UL"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v4}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "LI"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v4}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "FORM"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const/16 v11, 0x4000

    invoke-direct {v0, v11}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "LABEL"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const/16 v11, 0x4802

    invoke-direct {v0, v11}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "INPUT"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const/16 v11, 0x4800

    invoke-direct {v0, v11}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v12, "SELECT"

    invoke-virtual {p0, v12, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v8}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v12, "OPTGROUP"

    invoke-virtual {p0, v12, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v8}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v12, "OPTION"

    invoke-virtual {p0, v12, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v11}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v12, "TEXTAREA"

    invoke-virtual {p0, v12, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const/16 v12, 0x18

    invoke-direct {v0, v12}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v12, "FIELDSET"

    invoke-virtual {p0, v12, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v8}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v12, "LEGEND"

    invoke-virtual {p0, v12, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v11}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "BUTTON"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v10}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "TABLE"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v4}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "CAPTION"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v4}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "THEAD"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v4}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "TFOOT"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v4}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "TBODY"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v4}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "COLGROUP"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v2}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "COL"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v4}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "TR"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v8}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v11, "TH"

    invoke-virtual {p0, v11, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v8}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v8, "TD"

    invoke-virtual {p0, v8, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const v8, 0x400008

    invoke-direct {v0, v8}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v8, "HEAD"

    invoke-virtual {p0, v8, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v4}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v8, "TITLE"

    invoke-virtual {p0, v8, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v2}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v2, "BASE"

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const v2, 0x2000a

    invoke-direct {v0, v2}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v2, "META"

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const v2, 0x20108

    invoke-direct {v0, v2}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v2, "STYLE"

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const v2, 0x38100

    invoke-direct {v0, v2}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v2, "SCRIPT"

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v10}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v2, "NOSCRIPT"

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v4}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v2, "HTML"

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v2, "FONT"

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v2, "S"

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v2, "STRIKE"

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v2, "U"

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v2, "NOBR"

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v10}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v2, "IFRAME"

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v10}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v2, "LAYER"

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-direct {v0, v10}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;-><init>(I)V

    const-string v2, "ILAYER"

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "A"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const-string v2, "HREF"

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v4, "NAME"

    invoke-virtual {v0, v4, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "AREA"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v4, "NOHREF"

    const/4 v7, 0x4

    invoke-virtual {v0, v4, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "BASE"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "BUTTON"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const-string v4, "DISABLED"

    invoke-virtual {v0, v4, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "BLOCKQUOTE"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-virtual {v0, v9, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "DEL"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-virtual {v0, v9, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    invoke-virtual {p0, v5}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const-string v5, "COMPACT"

    invoke-virtual {v0, v5, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "DIV"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const-string v8, "SRC"

    invoke-virtual {v0, v8, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v10, "NOWRAP"

    invoke-virtual {v0, v10, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "DL"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-virtual {v0, v5, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "FORM"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const-string v11, "ACTION"

    invoke-virtual {v0, v11, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-virtual {v0, v8, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v3, "LONGDESC"

    invoke-virtual {v0, v3, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v11, "NORESIZE"

    invoke-virtual {v0, v11, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "HEAD"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const-string v11, "PROFILE"

    invoke-virtual {v0, v11, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "HR"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const-string v11, "NOSHADE"

    invoke-virtual {v0, v11, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "IFRAME"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-virtual {v0, v8, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    invoke-virtual {v0, v3, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "ILAYER"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-virtual {v0, v8, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "IMG"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-virtual {v0, v8, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    invoke-virtual {v0, v3, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v3, "USEMAP"

    invoke-virtual {v0, v3, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v11, "ISMAP"

    invoke-virtual {v0, v11, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "INPUT"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-virtual {v0, v8, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    invoke-virtual {v0, v3, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v11, "CHECKED"

    invoke-virtual {v0, v11, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    invoke-virtual {v0, v4, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v11, "ISMAP"

    invoke-virtual {v0, v11, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v11, "READONLY"

    invoke-virtual {v0, v11, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "INS"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-virtual {v0, v9, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "LAYER"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-virtual {v0, v8, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "LINK"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    invoke-virtual {p0, v6}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-virtual {v0, v5, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "OBJECT"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const-string v2, "CLASSID"

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v2, "CODEBASE"

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v2, "DATA"

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v2, "ARCHIVE"

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    invoke-virtual {v0, v3, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v2, "DECLARE"

    invoke-virtual {v0, v2, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "OL"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-virtual {v0, v5, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "OPTGROUP"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-virtual {v0, v4, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "OPTION"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    const-string v2, "SELECTED"

    invoke-virtual {v0, v2, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    invoke-virtual {v0, v4, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "Q"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-virtual {v0, v9, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "SCRIPT"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-virtual {v0, v8, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v2, "FOR"

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "DEFER"

    invoke-virtual {v0, v1, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "SELECT"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-virtual {v0, v4, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "MULTIPLE"

    invoke-virtual {v0, v1, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "TABLE"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-virtual {v0, v10, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "TD"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-virtual {v0, v10, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "TEXTAREA"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-virtual {v0, v4, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "READONLY"

    invoke-virtual {v0, v1, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "TH"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-virtual {v0, v10, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "TR"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-virtual {v0, v10, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v0, "UL"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-virtual {p0, v5, v7}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    return-void
.end method

.method private initToHTMLStream()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_inBlockElem:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_inDTD:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_omitMetaTag:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    return-void
.end method

.method private isASCIIDigit(C)Z
    .locals 0

    const/16 p0, 0x30

    if-lt p1, p0, :cond_0

    const/16 p0, 0x39

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isHHSign(Ljava/lang/String;)Z
    .locals 0

    const/16 p0, 0x10

    :try_start_0
    invoke-static {p1, p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static makeHHString(I)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, p3, 0x1

    const/16 v2, 0x22

    const-string v3, "=\""

    const/16 v4, 0x20

    if-lez v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_htmlcharInfo:Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    iget-boolean v1, v1, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->onlyQuotAmpLtGt:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(I)V

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_0
    and-int/lit8 v1, p3, 0x2

    if-lez v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(I)V

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(I)V

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x4

    if-lez p1, :cond_3

    iget-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    invoke-virtual {p0, v0, p2, p1}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->writeAttrURI(Ljava/io/Writer;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public final cdata([CII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, "SCRIPT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    const-string v1, "STYLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-boolean v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->closeStartTag()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_ispreserve:Z

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->shouldIndent()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->indent()V

    :cond_2
    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepUse:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->writeNormalizedChars([CIIZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    sget-object p2, Lcom/sun/org/apache/xml/internal/serializer/utils/Utils;->messages:Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;

    const-string p3, "ER_OIERROR"

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->cdata([CII)V

    :goto_0
    return-void
.end method

.method public final characters([CII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_isRaw:Z

    if-eqz v1, :cond_2

    :try_start_0
    iget-boolean v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->closeStartTag()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_ispreserve:Z

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepUse:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->writeNormalizedChars([CIIZZ)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireCharEvent([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    sget-object p2, Lcom/sun/org/apache/xml/internal/serializer/utils/Utils;->messages:Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;

    const-string p3, "ER_OIERROR"

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->characters([CII)V

    return-void
.end method

.method public closeStartTag()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-super {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->processAttributes(Ljava/io/Writer;I)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataSectionElements:Ljava/util/Vector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->isCdataSection()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_isCdataSection:Z

    :cond_2
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_isprevtext:Z

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_preserves:Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_ispreserve:Z

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;->push(Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public comment([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_inDTD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->comment([CII)V

    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endDTD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_inDTD:Z

    return-void
.end method

.method public final endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->flushPending()V

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_isprevtext:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->outputLineSep()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->flushWriter()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireEndDoc()V

    :cond_1
    return-void
.end method

.method public final endElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0, v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->closeCDATA()V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    .line 6
    iget-object p2, p1, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementDesc:Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    .line 7
    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->getFlags()I

    move-result p2

    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 8
    :goto_0
    iget-boolean v3, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v3, :cond_9

    and-int/lit8 v4, p2, 0x8

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v1

    .line 9
    :goto_1
    iget-boolean v5, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_ispreserve:Z

    if-eqz v5, :cond_4

    .line 10
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_ispreserve:Z

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_6

    .line 11
    iget-boolean v3, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_inBlockElem:Z

    if-eqz v3, :cond_5

    if-eqz v4, :cond_6

    .line 12
    :cond_5
    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_startNewLine:Z

    move v3, v2

    goto :goto_3

    :cond_6
    :goto_2
    move v3, v1

    .line 13
    :goto_3
    iget-boolean v5, p1, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    if-nez v5, :cond_7

    if-eqz v3, :cond_7

    .line 14
    iget v3, p1, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_currentElemDepth:I

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->indent(I)V

    :cond_7
    if-nez v4, :cond_8

    move v3, v2

    goto :goto_4

    :cond_8
    move v3, v1

    .line 15
    :goto_4
    iput-boolean v3, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_inBlockElem:Z

    .line 16
    :cond_9
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    .line 17
    iget-boolean v4, p1, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    const/16 v5, 0x3e

    if-nez v4, :cond_a

    const-string v4, "</"

    .line 18
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(I)V

    goto :goto_5

    .line 21
    :cond_a
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v4, :cond_b

    .line 22
    invoke-super {p0, p3}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    .line 23
    :cond_b
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    invoke-virtual {v4}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v4

    if-lez v4, :cond_c

    .line 24
    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p0, v6, v4}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->processAttributes(Ljava/io/Writer;I)V

    .line 25
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    invoke-virtual {v4}, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->clear()V

    :cond_c
    if-nez v0, :cond_d

    const-string v4, "></"

    .line 26
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v3, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(I)V

    goto :goto_5

    .line 29
    :cond_d
    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(I)V

    :goto_5
    const/high16 v3, 0x200000

    and-int/2addr p2, v3

    if-eqz p2, :cond_e

    .line 30
    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_ispreserve:Z

    .line 31
    :cond_e
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_isprevtext:Z

    .line 32
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz p2, :cond_f

    .line 33
    invoke-super {p0, p3}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireEndElem(Ljava/lang/String;)V

    :cond_f
    if-eqz v0, :cond_10

    .line 34
    iget-object p1, p1, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_prev:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    return-void

    .line 35
    :cond_10
    iget-boolean p2, p1, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    if-nez p2, :cond_11

    .line 36
    iget-boolean p2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_doIndent:Z

    if-eqz p2, :cond_11

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_preserves:Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;

    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_11

    .line 37
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_preserves:Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;

    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;->pop()Z

    .line 38
    :cond_11
    iget-object p1, p1, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_prev:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 39
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public final entityReference(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p1, 0x3b

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

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized init(Ljava/io/OutputStream;Ljava/util/Properties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    const-string p2, "html"

    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object p2

    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->init(Ljava/io/OutputStream;Ljava/util/Properties;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-object v1, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iput-object p2, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method public processAttribute(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p4, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p4, p2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->isAttrFlagSet(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "=\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p4, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p4, p2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->isAttrFlagSet(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    invoke-virtual {p0, p1, p3, p2}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->writeAttrURI(Ljava/io/Writer;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/16 p0, 0x22

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(I)V

    :goto_1
    return-void
.end method

.method public processAttributes(Ljava/io/Writer;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    invoke-virtual {v1, v0}, Lorg/xml/sax/helpers/AttributesImpl;->getQName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    invoke-virtual {v2, v0}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-object v3, v3, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementDesc:Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->processAttribute(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->flushPending()V

    const-string v0, "javax.xml.transform.disable-output-escaping"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->startNonEscaping()V

    goto :goto_1

    :cond_0
    const-string v0, "javax.xml.transform.enable-output-escaping"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->endNonEscaping()V

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-boolean v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->closeStartTag()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iput-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->startDocumentInternal()V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->shouldIndent()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->indent()V

    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v2, "<?"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    :cond_5
    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_currentElemDepth:I

    if-gtz v0, :cond_6

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->outputLineSep()V

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_startNewLine:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_7

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public reset()Z
    .locals 1

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->reset()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->initToHTMLStream()V

    const/4 p0, 0x1

    return p0
.end method

.method public setOmitMetaTag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_omitMetaTag:Z

    return-void
.end method

.method public setOutputFormat(Ljava/util/Properties;)V
    .locals 1

    const-string v0, "{http://xml.apache.org/xalan}use-url-escaping"

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertyUtils;->getBooleanProperty(Ljava/lang/String;Ljava/util/Properties;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    const-string v0, "{http://xml.apache.org/xalan}omit-meta-tag"

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertyUtils;->getBooleanProperty(Ljava/lang/String;Ljava/util/Properties;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_omitMetaTag:Z

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->setOutputFormat(Ljava/util/Properties;)V

    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_format:Ljava/util/Properties;

    if-nez v0, :cond_0

    const-string v0, "html"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->init(Ljava/io/OutputStream;Ljava/util/Properties;Z)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setSpecialEscapeURLs(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_inDTD:Z

    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startDocumentInternal()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->startDocumentInternal()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallStartDocument:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_startNewLine:Z

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setOmitXMLDeclaration(Z)V

    iget-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getDoctypePublic()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    if-eqz v2, :cond_4

    :cond_0
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    :try_start_0
    const-string v4, "<!DOCTYPE html"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v4, 0x22

    if-eqz v2, :cond_1

    const-string v5, " PUBLIC \""

    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    :cond_1
    if-eqz v1, :cond_3

    if-nez v2, :cond_2

    const-string v2, " SYSTEM \""

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, " \""

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    :cond_3
    const/16 v1, 0x3e

    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->outputLineSep()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_4
    :goto_1
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->closeStartTag()V

    iput-boolean v2, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->closeCDATA()V

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataTagOpen:Z

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->startDocumentInternal()V

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallStartDocument:Z

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void

    :cond_3
    :try_start_0
    invoke-direct {p0, p3}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->getElemDesc2(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->getFlags()I

    move-result v3

    iget-boolean v4, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_doIndent:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_9

    and-int/lit8 v4, v3, 0x8

    if-eqz v4, :cond_4

    move v4, v5

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    iget-boolean v6, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_ispreserve:Z

    if-eqz v6, :cond_5

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_ispreserve:Z

    goto :goto_2

    :cond_5
    iget-object v6, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_inBlockElem:Z

    if-eqz v6, :cond_6

    if-eqz v4, :cond_7

    :cond_6
    iput-boolean v5, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_startNewLine:Z

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->indent()V

    :cond_7
    :goto_2
    if-nez v4, :cond_8

    move v4, v5

    goto :goto_3

    :cond_8
    move v4, v2

    :goto_3
    iput-boolean v4, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_inBlockElem:Z

    :cond_9
    if-eqz p4, :cond_a

    invoke-virtual {p0, p4}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->addAttributes(Lorg/xml/sax/Attributes;)V

    :cond_a
    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_isprevtext:Z

    iget-object p4, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const/16 v4, 0x3c

    invoke-virtual {p4, v4}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p4, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->firePseudoAttributes()V

    :cond_b
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_c

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->push()Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iput-object p3, p1, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    iput-object v1, p1, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementDesc:Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    return-void

    :cond_c
    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iput-object v1, p1, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementDesc:Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    and-int/lit16 p2, v3, 0x100

    if-eqz p2, :cond_d

    goto :goto_4

    :cond_d
    move v5, v2

    :goto_4
    iput-boolean v5, p1, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_isRaw:Z

    const/high16 p2, 0x400000

    and-int/2addr p2, v3

    if-eqz p2, :cond_f

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->closeStartTag()V

    iput-boolean v2, p1, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    iget-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->m_omitMetaTag:Z

    if-nez p1, :cond_f

    iget-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_doIndent:Z

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->indent()V

    :cond_e
    const-string p1, "<META http-equiv=\"Content-Type\" content=\"text/html; charset="

    invoke-virtual {p4, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p0, "\">"

    invoke-virtual {p4, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v10

    iget-object v0, v8, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attrBuff:[C

    array-length v0, v0

    const/4 v11, 0x1

    if-le v10, v0, :cond_0

    mul-int/lit8 v0, v10, 0x2

    add-int/2addr v0, v11

    new-array v0, v0, [C

    iput-object v0, v8, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attrBuff:[C

    :cond_0
    iget-object v0, v8, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attrBuff:[C

    const/4 v12, 0x0

    move-object/from16 v13, p2

    invoke-virtual {v13, v12, v10, v0, v12}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v14, v8, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attrBuff:[C

    move v0, v12

    move v1, v0

    move v2, v1

    move v15, v2

    :goto_0
    if-ge v15, v10, :cond_a

    aget-char v7, v14, v15

    invoke-virtual {v8, v7}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->escapingNotNeeded(C)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v8, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_charInfo:Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    invoke-virtual {v2, v7}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->isSpecialAttrChar(I)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v7

    goto/16 :goto_5

    :cond_1
    const/16 v2, 0x3c

    if-eq v2, v7, :cond_9

    const/16 v2, 0x3e

    if-ne v2, v7, :cond_2

    goto/16 :goto_4

    :cond_2
    const/16 v2, 0x26

    if-ne v2, v7, :cond_3

    add-int/lit8 v2, v15, 0x1

    if-ge v2, v10, :cond_3

    const/16 v3, 0x7b

    aget-char v2, v14, v2

    if-ne v3, v2, :cond_3

    goto :goto_1

    :cond_3
    if-lez v0, :cond_4

    invoke-virtual {v9, v14, v1, v0}, Ljava/io/Writer;->write([CII)V

    move/from16 v16, v12

    goto :goto_2

    :cond_4
    move/from16 v16, v0

    :goto_2
    const/4 v6, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v7

    move v3, v15

    move-object v4, v14

    move v5, v10

    move/from16 p3, v7

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->accumDefaultEntity(Ljava/io/Writer;CI[CIZZ)I

    move-result v0

    if-eq v15, v0, :cond_5

    add-int/lit8 v0, v0, -0x1

    move/from16 v2, p3

    move v15, v0

    goto :goto_3

    :cond_5
    invoke-static/range {p3 .. p3}, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    move-result v0

    move/from16 v2, p3

    if-eqz v0, :cond_6

    invoke-virtual {v8, v2, v14, v15, v10}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->writeUTF16Surrogate(C[CII)I

    add-int/lit8 v15, v15, 0x1

    :cond_6
    iget-object v0, v8, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_charInfo:Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->getOutputStringForChar(C)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v8, v2}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->escapingNotNeeded(C)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v9, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_3

    :cond_8
    const-string v0, "&#"

    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x3b

    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(I)V

    :goto_3
    add-int/lit8 v1, v15, 0x1

    move/from16 v0, v16

    goto :goto_5

    :cond_9
    :goto_4
    move v2, v7

    add-int/lit8 v0, v0, 0x1

    :goto_5
    add-int/2addr v15, v11

    goto/16 :goto_0

    :cond_a
    if-le v0, v11, :cond_c

    if-nez v1, :cond_b

    invoke-virtual/range {p1 .. p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    invoke-virtual {v9, v14, v1, v0}, Ljava/io/Writer;->write([CII)V

    goto :goto_6

    :cond_c
    if-ne v0, v11, :cond_d

    invoke-virtual {v9, v2}, Ljava/io/Writer;->write(I)V

    :cond_d
    :goto_6
    return-void
.end method

.method public writeAttrURI(Ljava/io/Writer;Ljava/lang/String;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, v0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attrBuff:[C

    array-length v3, v3

    const/4 v4, 0x1

    if-le v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v4

    new-array v3, v3, [C

    iput-object v3, v0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attrBuff:[C

    :cond_0
    iget-object v3, v0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attrBuff:[C

    const/4 v5, 0x0

    move-object/from16 v6, p2

    invoke-virtual {v6, v5, v2, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v3, v0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attrBuff:[C

    move v7, v5

    move v8, v7

    move v9, v8

    move v10, v9

    :goto_0
    if-ge v7, v2, :cond_c

    aget-char v10, v3, v7

    const/16 v11, 0x20

    if-lt v10, v11, :cond_5

    const/16 v11, 0x7e

    if-le v10, v11, :cond_1

    goto :goto_1

    :cond_1
    const/16 v11, 0x22

    if-ne v10, v11, :cond_4

    if-lez v8, :cond_2

    invoke-virtual {v1, v3, v9, v8}, Ljava/io/Writer;->write([CII)V

    move v8, v5

    :cond_2
    if-eqz p3, :cond_3

    const-string v9, "%22"

    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    const-string v9, "&quot;"

    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :cond_5
    :goto_1
    if-lez v8, :cond_6

    invoke-virtual {v1, v3, v9, v8}, Ljava/io/Writer;->write([CII)V

    move v8, v5

    :cond_6
    if-eqz p3, :cond_a

    const/16 v9, 0x7f

    const/16 v11, 0x25

    if-gt v10, v9, :cond_7

    invoke-virtual {v1, v11}, Ljava/io/Writer;->write(I)V

    invoke-static {v10}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const/16 v9, 0x7ff

    if-gt v10, v9, :cond_8

    shr-int/lit8 v9, v10, 0x6

    or-int/lit16 v9, v9, 0xc0

    and-int/lit8 v12, v10, 0x3f

    or-int/lit16 v12, v12, 0x80

    invoke-virtual {v1, v11}, Ljava/io/Writer;->write(I)V

    invoke-static {v9}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/Writer;->write(I)V

    invoke-static {v12}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    invoke-static {v10}, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    move-result v9

    if-eqz v9, :cond_9

    and-int/lit16 v9, v10, 0x3ff

    and-int/lit16 v10, v9, 0x3c0

    shr-int/lit8 v10, v10, 0x6

    add-int/2addr v10, v4

    and-int/lit8 v12, v9, 0x3c

    shr-int/lit8 v12, v12, 0x2

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x4

    and-int/lit8 v9, v9, 0x30

    add-int/lit8 v7, v7, 0x1

    aget-char v13, v3, v7

    and-int/lit16 v14, v13, 0x3ff

    and-int/lit16 v15, v14, 0x3c0

    shr-int/lit8 v15, v15, 0x6

    or-int/2addr v9, v15

    and-int/lit8 v14, v14, 0x3f

    shr-int/lit8 v15, v10, 0x2

    or-int/lit16 v15, v15, 0xf0

    and-int/lit8 v10, v10, 0x3

    shl-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0x30

    or-int/lit16 v10, v10, 0x80

    or-int/2addr v10, v12

    or-int/lit16 v9, v9, 0x80

    or-int/lit16 v12, v14, 0x80

    invoke-virtual {v1, v11}, Ljava/io/Writer;->write(I)V

    invoke-static {v15}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/Writer;->write(I)V

    invoke-static {v10}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/Writer;->write(I)V

    invoke-static {v9}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/Writer;->write(I)V

    invoke-static {v12}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v10, v13

    goto :goto_2

    :cond_9
    shr-int/lit8 v9, v10, 0xc

    or-int/lit16 v9, v9, 0xe0

    and-int/lit16 v12, v10, 0xfc0

    shr-int/lit8 v12, v12, 0x6

    or-int/lit16 v12, v12, 0x80

    and-int/lit8 v13, v10, 0x3f

    or-int/lit16 v13, v13, 0x80

    invoke-virtual {v1, v11}, Ljava/io/Writer;->write(I)V

    invoke-static {v9}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/Writer;->write(I)V

    invoke-static {v12}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/Writer;->write(I)V

    invoke-static {v13}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    invoke-virtual {v0, v10}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->escapingNotNeeded(C)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v1, v10}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    :cond_b
    const-string v9, "&#"

    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v9, 0x3b

    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(I)V

    :goto_2
    add-int/lit8 v9, v7, 0x1

    :goto_3
    add-int/2addr v7, v4

    goto/16 :goto_0

    :cond_c
    if-le v8, v4, :cond_e

    if-nez v9, :cond_d

    invoke-virtual/range {p1 .. p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    invoke-virtual {v1, v3, v9, v8}, Ljava/io/Writer;->write([CII)V

    goto :goto_4

    :cond_e
    if-ne v8, v4, :cond_f

    invoke-virtual {v1, v10}, Ljava/io/Writer;->write(I)V

    :cond_f
    :goto_4
    return-void
.end method
