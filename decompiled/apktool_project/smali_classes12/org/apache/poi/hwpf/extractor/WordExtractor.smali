.class public final Lorg/apache/poi/hwpf/extractor/WordExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/extractor/POIOLE2TextExtractor;


# instance fields
.field private doCloseFilesystem:Z

.field private final doc:Lorg/apache/poi/hwpf/HWPFDocument;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/poi/hwpf/HWPFDocumentCore;->verifyAndBuildPOIFS(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hwpf/extractor/WordExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hwpf/HWPFDocument;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/apache/poi/hwpf/extractor/WordExtractor;->doCloseFilesystem:Z

    .line 6
    iput-object p1, p0, Lorg/apache/poi/hwpf/extractor/WordExtractor;->doc:Lorg/apache/poi/hwpf/HWPFDocument;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-direct {v0, p1}, Lorg/apache/poi/hwpf/HWPFDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hwpf/extractor/WordExtractor;-><init>(Lorg/apache/poi/hwpf/HWPFDocument;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-direct {v0, p1}, Lorg/apache/poi/hwpf/HWPFDocument;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hwpf/extractor/WordExtractor;-><init>(Lorg/apache/poi/hwpf/HWPFDocument;)V

    return-void
.end method

.method private appendHeaderFooter(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0xd

    const/16 v0, 0xa

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    const-string p1, "\n\n"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    return-void

    :cond_2
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_0
    return-void
.end method

.method public static getParagraphText(Lorg/apache/poi/hwpf/usermodel/Range;)[Ljava/lang/String;
    .locals 5

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/Range;->numParagraphs()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    invoke-virtual {p0, v2}, Lorg/apache/poi/hwpf/usermodel/Range;->getParagraph(I)Lorg/apache/poi/hwpf/usermodel/Paragraph;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lorg/apache/poi/hwpf/usermodel/Range;->text()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v4, "\r"

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static stripFields(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hwpf/usermodel/Range;->stripFields(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCommentsText()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/extractor/WordExtractor;->doc:Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/HWPFDocument;->getCommentsRange()Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/hwpf/extractor/WordExtractor;->getParagraphText(Lorg/apache/poi/hwpf/usermodel/Range;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDocument()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/extractor/WordExtractor;->getDocument()Lorg/apache/poi/hwpf/HWPFDocument;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDocument()Lorg/apache/poi/POIDocument;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/extractor/WordExtractor;->getDocument()Lorg/apache/poi/hwpf/HWPFDocument;

    move-result-object p0

    return-object p0
.end method

.method public getDocument()Lorg/apache/poi/hwpf/HWPFDocument;
    .locals 0

    .line 3
    iget-object p0, p0, Lorg/apache/poi/hwpf/extractor/WordExtractor;->doc:Lorg/apache/poi/hwpf/HWPFDocument;

    return-object p0
.end method

.method public getEndnoteText()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/extractor/WordExtractor;->doc:Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/HWPFDocument;->getEndnoteRange()Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/hwpf/extractor/WordExtractor;->getParagraphText(Lorg/apache/poi/hwpf/usermodel/Range;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getFilesystem()Ljava/io/Closeable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/extractor/WordExtractor;->getFilesystem()Lorg/apache/poi/hwpf/HWPFDocument;

    move-result-object p0

    return-object p0
.end method

.method public getFilesystem()Lorg/apache/poi/hwpf/HWPFDocument;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/hwpf/extractor/WordExtractor;->doc:Lorg/apache/poi/hwpf/HWPFDocument;

    return-object p0
.end method

.method public getFooterText()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/apache/poi/hwpf/usermodel/HeaderStories;

    iget-object v1, p0, Lorg/apache/poi/hwpf/extractor/WordExtractor;->doc:Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-direct {v0, v1}, Lorg/apache/poi/hwpf/usermodel/HeaderStories;-><init>(Lorg/apache/poi/hwpf/HWPFDocument;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/HeaderStories;->getFirstFooter()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/HeaderStories;->getFirstFooter()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/apache/poi/hwpf/extractor/WordExtractor;->appendHeaderFooter(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/HeaderStories;->getEvenFooter()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/HeaderStories;->getEvenFooter()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/apache/poi/hwpf/extractor/WordExtractor;->appendHeaderFooter(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/HeaderStories;->getOddFooter()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/HeaderStories;->getOddFooter()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hwpf/extractor/WordExtractor;->appendHeaderFooter(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFootnoteText()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/extractor/WordExtractor;->doc:Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/HWPFDocument;->getFootnoteRange()Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/hwpf/extractor/WordExtractor;->getParagraphText(Lorg/apache/poi/hwpf/usermodel/Range;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHeaderText()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/apache/poi/hwpf/usermodel/HeaderStories;

    iget-object v1, p0, Lorg/apache/poi/hwpf/extractor/WordExtractor;->doc:Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-direct {v0, v1}, Lorg/apache/poi/hwpf/usermodel/HeaderStories;-><init>(Lorg/apache/poi/hwpf/HWPFDocument;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/HeaderStories;->getFirstHeader()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/HeaderStories;->getFirstHeader()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/apache/poi/hwpf/extractor/WordExtractor;->appendHeaderFooter(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/HeaderStories;->getEvenHeader()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/HeaderStories;->getEvenHeader()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/apache/poi/hwpf/extractor/WordExtractor;->appendHeaderFooter(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/HeaderStories;->getOddHeader()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/HeaderStories;->getOddHeader()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hwpf/extractor/WordExtractor;->appendHeaderFooter(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMainTextboxText()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/extractor/WordExtractor;->doc:Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/HWPFDocument;->getMainTextboxRange()Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/hwpf/extractor/WordExtractor;->getParagraphText(Lorg/apache/poi/hwpf/usermodel/Range;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParagraphText()[Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/hwpf/extractor/WordExtractor;->doc:Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/HWPFDocument;->getRange()Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lorg/apache/poi/hwpf/extractor/WordExtractor;->getParagraphText(Lorg/apache/poi/hwpf/usermodel/Range;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/extractor/WordExtractor;->getTextFromPieces()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/apache/poi/hwpf/converter/WordToTextConverter;

    invoke-direct {v0}, Lorg/apache/poi/hwpf/converter/WordToTextConverter;-><init>()V

    new-instance v1, Lorg/apache/poi/hwpf/usermodel/HeaderStories;

    iget-object v2, p0, Lorg/apache/poi/hwpf/extractor/WordExtractor;->doc:Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-direct {v1, v2}, Lorg/apache/poi/hwpf/usermodel/HeaderStories;-><init>(Lorg/apache/poi/hwpf/HWPFDocument;)V

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/usermodel/HeaderStories;->getFirstHeaderSubrange()Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/hwpf/extractor/WordExtractor;->doc:Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/usermodel/HeaderStories;->getFirstHeaderSubrange()Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/hwpf/converter/WordToTextConverter;->processDocumentPart(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/apache/poi/hwpf/usermodel/Range;)V

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/hwpf/usermodel/HeaderStories;->getEvenHeaderSubrange()Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/hwpf/extractor/WordExtractor;->doc:Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/usermodel/HeaderStories;->getEvenHeaderSubrange()Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/hwpf/converter/WordToTextConverter;->processDocumentPart(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/apache/poi/hwpf/usermodel/Range;)V

    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/hwpf/usermodel/HeaderStories;->getOddHeaderSubrange()Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/hwpf/extractor/WordExtractor;->doc:Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/usermodel/HeaderStories;->getOddHeaderSubrange()Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/hwpf/converter/WordToTextConverter;->processDocumentPart(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/apache/poi/hwpf/usermodel/Range;)V

    :cond_2
    iget-object v2, p0, Lorg/apache/poi/hwpf/extractor/WordExtractor;->doc:Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-virtual {v0, v2}, Lorg/apache/poi/hwpf/converter/AbstractWordConverter;->processDocument(Lorg/apache/poi/hwpf/HWPFDocumentCore;)V

    iget-object v2, p0, Lorg/apache/poi/hwpf/extractor/WordExtractor;->doc:Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/HWPFDocument;->getMainTextboxRange()Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/hwpf/converter/WordToTextConverter;->processDocumentPart(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/apache/poi/hwpf/usermodel/Range;)V

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/usermodel/HeaderStories;->getFirstFooterSubrange()Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/poi/hwpf/extractor/WordExtractor;->doc:Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/usermodel/HeaderStories;->getFirstFooterSubrange()Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/hwpf/converter/WordToTextConverter;->processDocumentPart(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/apache/poi/hwpf/usermodel/Range;)V

    :cond_3
    invoke-virtual {v1}, Lorg/apache/poi/hwpf/usermodel/HeaderStories;->getEvenFooterSubrange()Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/apache/poi/hwpf/extractor/WordExtractor;->doc:Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/usermodel/HeaderStories;->getEvenFooterSubrange()Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/hwpf/converter/WordToTextConverter;->processDocumentPart(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/apache/poi/hwpf/usermodel/Range;)V

    :cond_4
    invoke-virtual {v1}, Lorg/apache/poi/hwpf/usermodel/HeaderStories;->getOddFooterSubrange()Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object p0, p0, Lorg/apache/poi/hwpf/extractor/WordExtractor;->doc:Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/usermodel/HeaderStories;->getOddFooterSubrange()Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/poi/hwpf/converter/WordToTextConverter;->processDocumentPart(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/apache/poi/hwpf/usermodel/Range;)V

    :cond_5
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/converter/WordToTextConverter;->getText()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    throw p0
.end method

.method public getTextFromPieces()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/hwpf/extractor/WordExtractor;->doc:Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/HWPFDocumentCore;->getDocumentText()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\r\r\r"

    const-string v1, "\r\n\r\n\r\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\r\r"

    const-string v1, "\r\n\r\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\r"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public isCloseFilesystem()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hwpf/extractor/WordExtractor;->doCloseFilesystem:Z

    return p0
.end method

.method public setCloseFilesystem(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hwpf/extractor/WordExtractor;->doCloseFilesystem:Z

    return-void
.end method
