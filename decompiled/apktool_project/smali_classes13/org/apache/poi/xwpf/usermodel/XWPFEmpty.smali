.class public Lorg/apache/poi/xwpf/usermodel/XWPFEmpty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/IRunPart;


# instance fields
.field private emptyChar:C


# direct methods
.method public constructor <init>(C)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-char p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFEmpty;->emptyChar:C

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "w:tab"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "tab"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "w:br"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xa

    if-nez v1, :cond_4

    const-string v1, "br"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "w:cr"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "cr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0xa0

    .line 8
    iput-char v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFEmpty;->emptyChar:C

    goto :goto_3

    .line 9
    :cond_3
    :goto_0
    iput-char v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFEmpty;->emptyChar:C

    goto :goto_3

    .line 10
    :cond_4
    :goto_1
    iput-char v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFEmpty;->emptyChar:C

    goto :goto_3

    :cond_5
    :goto_2
    const/16 v0, 0x9

    .line 11
    iput-char v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFEmpty;->emptyChar:C

    .line 12
    :goto_3
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

    iget-char p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFEmpty;->emptyChar:C

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isBr()Z
    .locals 1

    iget-char p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFEmpty;->emptyChar:C

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTab()Z
    .locals 1

    iget-char p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFEmpty;->emptyChar:C

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
