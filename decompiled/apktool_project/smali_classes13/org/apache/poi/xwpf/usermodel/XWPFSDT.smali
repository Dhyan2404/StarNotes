.class public Lorg/apache/poi/xwpf/usermodel/XWPFSDT;
.super Lorg/apache/poi/xwpf/usermodel/XWPFAbstractSDT;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/IBodyElement;
.implements Lorg/apache/poi/xwpf/usermodel/IRunBody;
.implements Lorg/apache/poi/xwpf/usermodel/ISDTContents;
.implements Lorg/apache/poi/xwpf/usermodel/IRunElement;


# instance fields
.field private content:Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;

.field private xmlObject:Lorg/apache/xmlbeans/XmlObject;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;Lorg/apache/poi/xwpf/usermodel/IBody;)V
    .locals 1

    .line 5
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;->getSdtPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 6
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->xmlObject:Lorg/apache/xmlbeans/XmlObject;

    .line 7
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;->getSdtContent()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;

    move-result-object p1

    invoke-direct {v0, p1, p2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;Lorg/apache/poi/xwpf/usermodel/IBody;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->content:Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;

    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->readDocument()V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRow;Lorg/apache/poi/xwpf/usermodel/IBody;)V
    .locals 1

    .line 9
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRow;->getSdtPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 10
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRow;->getSdtContent()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRow;

    move-result-object p1

    invoke-direct {v0, p1, p2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRow;Lorg/apache/poi/xwpf/usermodel/IBody;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->content:Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;

    .line 11
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->readDocument()V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;Lorg/apache/poi/xwpf/usermodel/IBody;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;->getSdtPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 2
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->xmlObject:Lorg/apache/xmlbeans/XmlObject;

    .line 3
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;->getSdtContent()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRun;

    move-result-object p1

    invoke-direct {v0, p1, p2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRun;Lorg/apache/poi/xwpf/usermodel/IBody;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->content:Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->readDocument()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->xmlObject:Lorg/apache/xmlbeans/XmlObject;

    invoke-static {v0}, Lorg/apache/poi/common/XmlBeanUtils;->freeMemory(Lorg/apache/xmlbeans/XmlObject;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->content:Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;

    invoke-static {v0}, Lorg/apache/poi/common/XmlBeanUtils;->close(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->xmlObject:Lorg/apache/xmlbeans/XmlObject;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->content:Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;

    return-void
.end method

.method public getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->content:Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;

    return-object p0
.end method

.method public readDocument()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->content:Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->readDocument()V

    return-void
.end method
