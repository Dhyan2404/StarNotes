.class public Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/IRunPart;


# instance fields
.field private footEndNote:Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;

.field private referenceId:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;->footEndNote:Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;

    iput p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;->referenceId:I

    return-void
.end method

.method private getIBodyElementText(Lorg/apache/poi/xwpf/usermodel/IBodyElement;)Ljava/lang/String;
    .locals 0

    instance-of p0, p1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    if-eqz p0, :cond_0

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p0, p1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    if-eqz p0, :cond_1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p0, p1, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    if-eqz p0, :cond_2

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/xwpf/usermodel/ISDTContent;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;->footEndNote:Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;

    instance-of v0, v0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "footnote_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;->footEndNote:Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->getId()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endnote_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;->footEndNote:Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->getId()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReferenceId()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;->referenceId:I

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;->getTextList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;->footEndNote:Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->getBodyElements()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    invoke-direct {p0, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;->getIBodyElementText(Lorg/apache/poi/xwpf/usermodel/IBodyElement;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public isFootnote()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;->footEndNote:Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;

    instance-of p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;

    return p0
.end method

.method public readDocument()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;->footEndNote:Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->readDocument()V

    return-void
.end method
