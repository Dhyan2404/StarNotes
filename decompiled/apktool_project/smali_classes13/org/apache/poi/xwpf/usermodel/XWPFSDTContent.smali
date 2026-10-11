.class public Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/ISDTContent;
.implements Ljava/io/Closeable;


# instance fields
.field private block:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;

.field private final bodyElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/ISDTContents;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Z

.field private parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

.field private part:Lorg/apache/poi/xwpf/usermodel/IBody;

.field private sdtContentRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRow;

.field private sdtRun:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRun;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;Lorg/apache/poi/xwpf/usermodel/IBody;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    .line 8
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->block:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;

    .line 9
    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    .line 10
    iput-object p3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRow;Lorg/apache/poi/xwpf/usermodel/IBody;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    .line 13
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->sdtContentRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRow;

    .line 14
    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    .line 15
    iput-object p3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRun;Lorg/apache/poi/xwpf/usermodel/IBody;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->sdtRun:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRun;

    .line 4
    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    .line 5
    iput-object p3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    return-void
.end method

.method private appendParagraph(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/IRunElement;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private appendTable(Lorg/apache/poi/xwpf/usermodel/XWPFTable;Ljava/lang/StringBuilder;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRows()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTableICells()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/ICell;

    instance-of v2, v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getTextRecursively()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    instance-of v2, v1, Lorg/apache/poi/xwpf/usermodel/XWPFSDTCell;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFSDTCell;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTCell;->getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/xwpf/usermodel/ISDTContent;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    const-string v1, "\t"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    return-void
.end method

.method private readCTSdtContentBlock(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1

    :try_start_0
    const-string v0, "./*"

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v1, :cond_3

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    if-eqz v1, :cond_4

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_6

    :try_start_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw v0
.end method

.method private readCTSdtContentRow(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRow;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1

    :try_start_0
    const-string v0, "./*"

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRow;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRow;

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRow;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v0, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_3

    :try_start_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v0
.end method

.method private readCTSdtContentRun(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRun;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1

    :try_start_0
    const-string v0, "./*"

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_4

    :try_start_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->sdtRun:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRun;

    invoke-static {v0}, Lorg/apache/poi/common/XmlBeanUtils;->freeMemory(Lorg/apache/xmlbeans/XmlObject;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->block:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;

    invoke-static {v0}, Lorg/apache/poi/common/XmlBeanUtils;->freeMemory(Lorg/apache/xmlbeans/XmlObject;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->sdtContentRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRow;

    invoke-static {v0}, Lorg/apache/poi/common/XmlBeanUtils;->freeMemory(Lorg/apache/xmlbeans/XmlObject;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->sdtRun:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRun;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->block:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->sdtContentRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRow;

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/ISDTContents;

    instance-of v2, v1, Ljava/io/Closeable;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/io/Closeable;

    invoke-static {v1}, Lorg/apache/poi/common/XmlBeanUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getBodyElements()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/ISDTContents;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {p0, v4, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->appendParagraph(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Ljava/lang/StringBuilder;)V

    :goto_1
    move v3, v6

    goto :goto_2

    :cond_0
    instance-of v5, v4, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    if-eqz v5, :cond_1

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-direct {p0, v4, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->appendTable(Lorg/apache/poi/xwpf/usermodel/XWPFTable;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_1
    instance-of v5, v4, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    if-eqz v5, :cond_2

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    invoke-virtual {v4}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/poi/xwpf/usermodel/ISDTContent;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    instance-of v5, v4, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    if-eqz v5, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v3, v1

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    if-ge v2, v4, :cond_4

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readDocument()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/common/XmlBeanUtils;->parseDocument()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->initialized:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->initialized:Z

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->sdtRun:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRun;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->readCTSdtContentRun(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRun;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->block:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->readCTSdtContentBlock(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->sdtContentRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRow;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->readCTSdtContentRow(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRow;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
