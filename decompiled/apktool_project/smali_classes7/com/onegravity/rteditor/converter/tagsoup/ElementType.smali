.class public Lcom/onegravity/rteditor/converter/tagsoup/ElementType;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;

.field public h:Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

.field public i:Lcom/onegravity/rteditor/converter/tagsoup/Schema;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILcom/onegravity/rteditor/converter/tagsoup/Schema;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->a:Ljava/lang/String;

    iput p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->d:I

    iput p3, p0, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->e:I

    iput p4, p0, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->f:I

    new-instance p2, Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;

    invoke-direct {p2}, Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;-><init>()V

    iput-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->g:Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;

    iput-object p5, p0, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->i:Lcom/onegravity/rteditor/converter/tagsoup/Schema;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->namespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->localName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->c:Ljava/lang/String;

    return-void
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_3

    if-nez v4, :cond_2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public atts()Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->g:Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;

    return-object p0
.end method

.method public canContain(Lcom/onegravity/rteditor/converter/tagsoup/ElementType;)Z
    .locals 0

    iget p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->d:I

    iget p1, p1, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->e:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public flags()I
    .locals 0

    iget p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->f:I

    return p0
.end method

.method public localName()Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->c:Ljava/lang/String;

    return-object p0
.end method

.method public localName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 p0, 0x3a

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public memberOf()I
    .locals 0

    iget p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->e:I

    return p0
.end method

.method public model()I
    .locals 0

    iget p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->d:I

    return p0
.end method

.method public name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->a:Ljava/lang/String;

    return-object p0
.end method

.method public namespace()Ljava/lang/String;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->b:Ljava/lang/String;

    return-object p0
.end method

.method public namespace(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3a

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->i:Lcom/onegravity/rteditor/converter/tagsoup/Schema;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->getURI()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    .line 3
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "xml"

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "http://www.w3.org/XML/1998/namespace"

    return-object p0

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "urn:x-prefix:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public parent()Lcom/onegravity/rteditor/converter/tagsoup/ElementType;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->h:Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    return-object p0
.end method

.method public schema()Lcom/onegravity/rteditor/converter/tagsoup/Schema;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->i:Lcom/onegravity/rteditor/converter/tagsoup/Schema;

    return-object p0
.end method

.method public setAttribute(Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "xmlns"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "xmlns:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p2, v0}, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->namespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {p0, p2}, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->localName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {p1, p2}, Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v2

    const/4 p0, -0x1

    const-string v0, "CDATA"

    if-ne v2, p0, :cond_3

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    if-nez p3, :cond_1

    move-object v5, v0

    goto :goto_0

    :cond_1
    move-object v5, p3

    .line 6
    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 7
    invoke-static {p4}, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_2
    move-object v6, p4

    move-object v1, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    .line 8
    invoke-virtual/range {v1 .. v6}, Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-nez p3, :cond_4

    .line 9
    invoke-virtual {p1, v2}, Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;->getType(I)Ljava/lang/String;

    move-result-object p3

    :cond_4
    move-object v6, p3

    .line 10
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 11
    invoke-static {p4}, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_5
    move-object v7, p4

    move-object v1, p1

    move-object v5, p2

    .line 12
    invoke-virtual/range {v1 .. v7}, Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;->setAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->g:Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->setAttribute(Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFlags(I)V
    .locals 0

    iput p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->f:I

    return-void
.end method

.method public setMemberOf(I)V
    .locals 0

    iput p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->e:I

    return-void
.end method

.method public setModel(I)V
    .locals 0

    iput p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->d:I

    return-void
.end method

.method public setParent(Lcom/onegravity/rteditor/converter/tagsoup/ElementType;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->h:Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    return-void
.end method
