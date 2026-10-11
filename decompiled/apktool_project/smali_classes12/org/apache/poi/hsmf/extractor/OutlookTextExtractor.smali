.class public Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/extractor/POIOLE2TextExtractor;


# instance fields
.field private doCloseFilesystem:Z

.field private final msg:Lorg/apache/poi/hsmf/MAPIMessage;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    new-instance v0, Lorg/apache/poi/hsmf/MAPIMessage;

    invoke-direct {v0, p1}, Lorg/apache/poi/hsmf/MAPIMessage;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;-><init>(Lorg/apache/poi/hsmf/MAPIMessage;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hsmf/MAPIMessage;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;->doCloseFilesystem:Z

    .line 3
    iput-object p1, p0, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;->msg:Lorg/apache/poi/hsmf/MAPIMessage;

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
    new-instance v0, Lorg/apache/poi/hsmf/MAPIMessage;

    invoke-direct {v0, p1}, Lorg/apache/poi/hsmf/MAPIMessage;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;-><init>(Lorg/apache/poi/hsmf/MAPIMessage;)V

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
    new-instance v0, Lorg/apache/poi/hsmf/MAPIMessage;

    invoke-direct {v0, p1}, Lorg/apache/poi/hsmf/MAPIMessage;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;-><init>(Lorg/apache/poi/hsmf/MAPIMessage;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage: OutlookTextExtractor <file> [<file> ...]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    new-instance v3, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance v2, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;

    invoke-direct {v2, v3}, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v2}, Lorg/apache/poi/extractor/POITextExtractor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-interface {v2}, Lorg/apache/poi/extractor/POITextExtractor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_7
    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic getDocument()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;->getDocument()Lorg/apache/poi/hsmf/MAPIMessage;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDocument()Lorg/apache/poi/POIDocument;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;->getDocument()Lorg/apache/poi/hsmf/MAPIMessage;

    move-result-object p0

    return-object p0
.end method

.method public getDocument()Lorg/apache/poi/hsmf/MAPIMessage;
    .locals 0

    .line 3
    iget-object p0, p0, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;->msg:Lorg/apache/poi/hsmf/MAPIMessage;

    return-object p0
.end method

.method public bridge synthetic getFilesystem()Ljava/io/Closeable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;->getFilesystem()Lorg/apache/poi/hsmf/MAPIMessage;

    move-result-object p0

    return-object p0
.end method

.method public getFilesystem()Lorg/apache/poi/hsmf/MAPIMessage;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;->msg:Lorg/apache/poi/hsmf/MAPIMessage;

    return-object p0
.end method

.method public getMAPIMessage()Lorg/apache/poi/hsmf/MAPIMessage;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;->msg:Lorg/apache/poi/hsmf/MAPIMessage;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 8

    const-string v0, "\n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;->msg:Lorg/apache/poi/hsmf/MAPIMessage;

    invoke-virtual {v2}, Lorg/apache/poi/hsmf/MAPIMessage;->guess7BitEncoding()V

    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;->msg:Lorg/apache/poi/hsmf/MAPIMessage;

    invoke-virtual {v2}, Lorg/apache/poi/hsmf/MAPIMessage;->getRecipientEmailAddressList()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_0
    .catch Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    :try_start_1
    const-string v3, "From: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;->msg:Lorg/apache/poi/hsmf/MAPIMessage;

    invoke-virtual {v3}, Lorg/apache/poi/hsmf/MAPIMessage;->getDisplayFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    const-string v3, "To"

    iget-object v4, p0, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;->msg:Lorg/apache/poi/hsmf/MAPIMessage;

    invoke-virtual {v4}, Lorg/apache/poi/hsmf/MAPIMessage;->getDisplayTo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4, v2}, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;->handleEmails(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)V
    :try_end_2
    .catch Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    const-string v3, "CC"

    iget-object v4, p0, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;->msg:Lorg/apache/poi/hsmf/MAPIMessage;

    invoke-virtual {v4}, Lorg/apache/poi/hsmf/MAPIMessage;->getDisplayCC()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4, v2}, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;->handleEmails(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)V
    :try_end_3
    .catch Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    const-string v3, "BCC"

    iget-object v4, p0, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;->msg:Lorg/apache/poi/hsmf/MAPIMessage;

    invoke-virtual {v4}, Lorg/apache/poi/hsmf/MAPIMessage;->getDisplayBCC()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4, v2}, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;->handleEmails(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)V
    :try_end_4
    .catch Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "E, d MMM yyyy HH:mm:ss Z"

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const-string v4, "Date: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;->msg:Lorg/apache/poi/hsmf/MAPIMessage;

    invoke-virtual {v4}, Lorg/apache/poi/hsmf/MAPIMessage;->getMessageDate()Ljava/util/Calendar;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/Date;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;->msg:Lorg/apache/poi/hsmf/MAPIMessage;

    invoke-virtual {v4}, Lorg/apache/poi/hsmf/MAPIMessage;->getMessageDate()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_3

    :catch_5
    :try_start_6
    iget-object v3, p0, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;->msg:Lorg/apache/poi/hsmf/MAPIMessage;

    invoke-virtual {v3}, Lorg/apache/poi/hsmf/MAPIMessage;->getHeaders()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    const-string v7, "date:"

    invoke-static {v6, v7}, Lorg/apache/poi/util/StringUtil;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v3, "Date:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v6, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_6
    :cond_2
    :goto_3
    :try_start_7
    const-string v3, "Subject: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;->msg:Lorg/apache/poi/hsmf/MAPIMessage;

    invoke-virtual {v3}, Lorg/apache/poi/hsmf/MAPIMessage;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    iget-object v3, p0, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;->msg:Lorg/apache/poi/hsmf/MAPIMessage;

    invoke-virtual {v3}, Lorg/apache/poi/hsmf/MAPIMessage;->getAttachmentFiles()[Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;

    move-result-object v3

    array-length v4, v3

    :goto_4
    if-ge v2, v4, :cond_6

    aget-object v5, v3, v2

    invoke-virtual {v5}, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->getAttachLongFileName()Lorg/apache/poi/hsmf/datatypes/StringChunk;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->getAttachFileName()Lorg/apache/poi/hsmf/datatypes/StringChunk;

    move-result-object v6

    :cond_3
    if-nez v6, :cond_4

    const/4 v6, 0x0

    goto :goto_5

    :cond_4
    invoke-virtual {v6}, Lorg/apache/poi/hsmf/datatypes/StringChunk;->getValue()Ljava/lang/String;

    move-result-object v6

    :goto_5
    invoke-virtual {v5}, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->getAttachMimeTag()Lorg/apache/poi/hsmf/datatypes/StringChunk;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v5}, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->getAttachMimeTag()Lorg/apache/poi/hsmf/datatypes/StringChunk;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/hsmf/datatypes/StringChunk;->getValue()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->getAttachMimeTag()Lorg/apache/poi/hsmf/datatypes/StringChunk;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/hsmf/datatypes/StringChunk;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_5
    const-string v5, "Attachment: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;->msg:Lorg/apache/poi/hsmf/MAPIMessage;

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/MAPIMessage;->getTextBody()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleEmails(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    const-string p0, ";\\s*"

    invoke-virtual {p3, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p0

    const/4 p3, 0x0

    const/4 v0, 0x1

    move v1, p3

    :goto_0
    if-ge v1, p2, :cond_3

    aget-object v2, p0, v1

    if-eqz v0, :cond_1

    move v0, p3

    goto :goto_1

    :cond_1
    const-string v3, "; "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, " <"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    return-void
.end method

.method public isCloseFilesystem()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;->doCloseFilesystem:Z

    return p0
.end method

.method public setCloseFilesystem(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;->doCloseFilesystem:Z

    return-void
.end method
