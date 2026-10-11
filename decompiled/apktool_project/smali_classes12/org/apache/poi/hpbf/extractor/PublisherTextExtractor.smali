.class public final Lorg/apache/poi/hpbf/extractor/PublisherTextExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/extractor/POIOLE2TextExtractor;


# instance fields
.field private doCloseFilesystem:Z

.field private final doc:Lorg/apache/poi/hpbf/HPBFDocument;

.field private hyperlinksByDefault:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hpbf/extractor/PublisherTextExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hpbf/HPBFDocument;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/apache/poi/hpbf/extractor/PublisherTextExtractor;->doCloseFilesystem:Z

    .line 3
    iput-object p1, p0, Lorg/apache/poi/hpbf/extractor/PublisherTextExtractor;->doc:Lorg/apache/poi/hpbf/HPBFDocument;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-instance v0, Lorg/apache/poi/hpbf/HPBFDocument;

    invoke-direct {v0, p1}, Lorg/apache/poi/hpbf/HPBFDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hpbf/extractor/PublisherTextExtractor;-><init>(Lorg/apache/poi/hpbf/HPBFDocument;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    new-instance v0, Lorg/apache/poi/hpbf/HPBFDocument;

    invoke-direct {v0, p1}, Lorg/apache/poi/hpbf/HPBFDocument;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hpbf/extractor/PublisherTextExtractor;-><init>(Lorg/apache/poi/hpbf/HPBFDocument;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getDocument()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hpbf/extractor/PublisherTextExtractor;->getDocument()Lorg/apache/poi/hpbf/HPBFDocument;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDocument()Lorg/apache/poi/POIDocument;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hpbf/extractor/PublisherTextExtractor;->getDocument()Lorg/apache/poi/hpbf/HPBFDocument;

    move-result-object p0

    return-object p0
.end method

.method public getDocument()Lorg/apache/poi/hpbf/HPBFDocument;
    .locals 0

    .line 3
    iget-object p0, p0, Lorg/apache/poi/hpbf/extractor/PublisherTextExtractor;->doc:Lorg/apache/poi/hpbf/HPBFDocument;

    return-object p0
.end method

.method public bridge synthetic getFilesystem()Ljava/io/Closeable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hpbf/extractor/PublisherTextExtractor;->getFilesystem()Lorg/apache/poi/hpbf/HPBFDocument;

    move-result-object p0

    return-object p0
.end method

.method public getFilesystem()Lorg/apache/poi/hpbf/HPBFDocument;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/hpbf/extractor/PublisherTextExtractor;->doc:Lorg/apache/poi/hpbf/HPBFDocument;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hpbf/extractor/PublisherTextExtractor;->doc:Lorg/apache/poi/hpbf/HPBFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/hpbf/HPBFDocument;->getQuillContents()Lorg/apache/poi/hpbf/model/QuillContents;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hpbf/model/QuillContents;->getBits()[Lorg/apache/poi/hpbf/model/qcbits/QCBit;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    instance-of v6, v5, Lorg/apache/poi/hpbf/model/qcbits/QCTextBit;

    if-eqz v6, :cond_0

    check-cast v5, Lorg/apache/poi/hpbf/model/qcbits/QCTextBit;

    invoke-virtual {v5}, Lorg/apache/poi/hpbf/model/qcbits/QCTextBit;->getText()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xd

    const/16 v7, 0xa

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lorg/apache/poi/hpbf/extractor/PublisherTextExtractor;->hyperlinksByDefault:Z

    if-eqz p0, :cond_3

    array-length p0, v1

    move v2, v3

    :goto_1
    if-ge v2, p0, :cond_3

    aget-object v4, v1, v2

    instance-of v5, v4, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit$Type12;

    if-eqz v5, :cond_2

    check-cast v4, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit$Type12;

    move v5, v3

    :goto_2
    invoke-virtual {v4}, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit$Type12;->getNumberOfHyperlinks()I

    move-result v6

    if-ge v5, v6, :cond_2

    const-string v6, "<"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Lorg/apache/poi/hpbf/model/qcbits/QCPLCBit$Type12;->getHyperlink(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ">\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isCloseFilesystem()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hpbf/extractor/PublisherTextExtractor;->doCloseFilesystem:Z

    return p0
.end method

.method public setCloseFilesystem(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hpbf/extractor/PublisherTextExtractor;->doCloseFilesystem:Z

    return-void
.end method

.method public setHyperlinksByDefault(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hpbf/extractor/PublisherTextExtractor;->hyperlinksByDefault:Z

    return-void
.end method
