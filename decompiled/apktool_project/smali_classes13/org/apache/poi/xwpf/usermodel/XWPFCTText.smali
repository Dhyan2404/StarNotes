.class public Lorg/apache/poi/xwpf/usermodel/XWPFCTText;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/IRunPart;


# instance fields
.field private reviseState:Lorg/apache/poi/xwpf/usermodel/ReviseState;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/ReviseState;->NORMAL:Lorg/apache/poi/xwpf/usermodel/ReviseState;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFCTText;->reviseState:Lorg/apache/poi/xwpf/usermodel/ReviseState;

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFCTText;->text:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "w:instrText"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/ReviseState;->INSTR:Lorg/apache/poi/xwpf/usermodel/ReviseState;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFCTText;->reviseState:Lorg/apache/poi/xwpf/usermodel/ReviseState;

    goto :goto_0

    :cond_0
    const-string v1, "w:delText"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/ReviseState;->DELETE:Lorg/apache/poi/xwpf/usermodel/ReviseState;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFCTText;->reviseState:Lorg/apache/poi/xwpf/usermodel/ReviseState;

    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/apache/poi/common/XmlBeanUtils;->freeMemory(Lorg/apache/xmlbeans/XmlObject;)V

    return-void
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

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFCTText;->text:Ljava/lang/String;

    return-object p0
.end method

.method public isDelete()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFCTText;->reviseState:Lorg/apache/poi/xwpf/usermodel/ReviseState;

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/ReviseState;->DELETE:Lorg/apache/poi/xwpf/usermodel/ReviseState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInstr()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFCTText;->reviseState:Lorg/apache/poi/xwpf/usermodel/ReviseState;

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/ReviseState;->INSTR:Lorg/apache/poi/xwpf/usermodel/ReviseState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isText()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFCTText;->isInstr()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFCTText;->isDelete()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
