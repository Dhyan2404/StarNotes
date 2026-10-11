.class public Lorg/apache/poi/hsmf/MAPIMessage;
.super Lorg/apache/poi/POIReadOnlyDocument;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hsmf/MAPIMessage$MESSAGE_CLASS;
    }
.end annotation


# static fields
.field private static final GUESS_7_BIT_ENCODING_PATTERN:Ljava/util/regex/Pattern;

.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private attachmentChunks:[Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;

.field private mainChunks:Lorg/apache/poi/hsmf/datatypes/Chunks;

.field private nameIdChunks:Lorg/apache/poi/hsmf/datatypes/NameIdChunks;

.field private recipientChunks:[Lorg/apache/poi/hsmf/datatypes/RecipientChunks;

.field private returnNullOnMissingChunk:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/apache/poi/hsmf/MAPIMessage;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hsmf/MAPIMessage;->LOG:Lorg/apache/logging/log4j/Logger;

    const-string v0, "content-type:.*?charset=[\"\']?([^;\'\"]+)[\"\']?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hsmf/MAPIMessage;->GUESS_7_BIT_ENCODING_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/POIReadOnlyDocument;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hsmf/MAPIMessage;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hsmf/MAPIMessage;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hsmf/MAPIMessage;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1}, Lorg/apache/poi/POIReadOnlyDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 7
    invoke-static {p1}, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser;->parse(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)[Lorg/apache/poi/hsmf/datatypes/ChunkGroup;

    move-result-object p1

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, p1, v4

    .line 11
    instance-of v6, v5, Lorg/apache/poi/hsmf/datatypes/Chunks;

    if-eqz v6, :cond_0

    .line 12
    move-object v6, v5

    check-cast v6, Lorg/apache/poi/hsmf/datatypes/Chunks;

    iput-object v6, p0, Lorg/apache/poi/hsmf/MAPIMessage;->mainChunks:Lorg/apache/poi/hsmf/datatypes/Chunks;

    goto :goto_1

    .line 13
    :cond_0
    instance-of v6, v5, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;

    if-eqz v6, :cond_1

    .line 14
    move-object v6, v5

    check-cast v6, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;

    iput-object v6, p0, Lorg/apache/poi/hsmf/MAPIMessage;->nameIdChunks:Lorg/apache/poi/hsmf/datatypes/NameIdChunks;

    goto :goto_1

    .line 15
    :cond_1
    instance-of v6, v5, Lorg/apache/poi/hsmf/datatypes/RecipientChunks;

    if-eqz v6, :cond_2

    .line 16
    move-object v6, v5

    check-cast v6, Lorg/apache/poi/hsmf/datatypes/RecipientChunks;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_2
    :goto_1
    instance-of v6, v5, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;

    if-eqz v6, :cond_3

    .line 18
    check-cast v5, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    new-array p1, v3, [Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;

    iput-object p1, p0, Lorg/apache/poi/hsmf/MAPIMessage;->attachmentChunks:[Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;

    new-array p1, v3, [Lorg/apache/poi/hsmf/datatypes/RecipientChunks;

    .line 20
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hsmf/datatypes/RecipientChunks;

    iput-object p1, p0, Lorg/apache/poi/hsmf/MAPIMessage;->recipientChunks:[Lorg/apache/poi/hsmf/datatypes/RecipientChunks;

    .line 21
    iget-object p1, p0, Lorg/apache/poi/hsmf/MAPIMessage;->attachmentChunks:[Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;

    new-instance v0, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks$AttachmentChunksSorter;

    invoke-direct {v0}, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks$AttachmentChunksSorter;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 22
    iget-object p0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->recipientChunks:[Lorg/apache/poi/hsmf/datatypes/RecipientChunks;

    new-instance p1, Lorg/apache/poi/hsmf/datatypes/RecipientChunks$RecipientChunksSorter;

    invoke-direct {p1}, Lorg/apache/poi/hsmf/datatypes/RecipientChunks$RecipientChunksSorter;-><init>()V

    invoke-static {p0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hsmf/MAPIMessage;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method private toSemicolonList([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    const-string v5, "; "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAttachmentFiles()[Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->attachmentChunks:[Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;

    return-object p0
.end method

.method public getConversationTopic()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->mainChunks:Lorg/apache/poi/hsmf/datatypes/Chunks;

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/Chunks;->getConversationTopic()Lorg/apache/poi/hsmf/datatypes/StringChunk;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hsmf/MAPIMessage;->getStringFromChunk(Lorg/apache/poi/hsmf/datatypes/StringChunk;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayBCC()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->mainChunks:Lorg/apache/poi/hsmf/datatypes/Chunks;

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/Chunks;->getDisplayBCCChunk()Lorg/apache/poi/hsmf/datatypes/StringChunk;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hsmf/MAPIMessage;->getStringFromChunk(Lorg/apache/poi/hsmf/datatypes/StringChunk;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayCC()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->mainChunks:Lorg/apache/poi/hsmf/datatypes/Chunks;

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/Chunks;->getDisplayCCChunk()Lorg/apache/poi/hsmf/datatypes/StringChunk;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hsmf/MAPIMessage;->getStringFromChunk(Lorg/apache/poi/hsmf/datatypes/StringChunk;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayFrom()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->mainChunks:Lorg/apache/poi/hsmf/datatypes/Chunks;

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/Chunks;->getDisplayFromChunk()Lorg/apache/poi/hsmf/datatypes/StringChunk;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hsmf/MAPIMessage;->getStringFromChunk(Lorg/apache/poi/hsmf/datatypes/StringChunk;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayTo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->mainChunks:Lorg/apache/poi/hsmf/datatypes/Chunks;

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/Chunks;->getDisplayToChunk()Lorg/apache/poi/hsmf/datatypes/StringChunk;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hsmf/MAPIMessage;->getStringFromChunk(Lorg/apache/poi/hsmf/datatypes/StringChunk;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHeaders()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->mainChunks:Lorg/apache/poi/hsmf/datatypes/Chunks;

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/Chunks;->getMessageHeaders()Lorg/apache/poi/hsmf/datatypes/StringChunk;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hsmf/MAPIMessage;->getStringFromChunk(Lorg/apache/poi/hsmf/datatypes/StringChunk;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "\\r?\\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHtmlBody()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->mainChunks:Lorg/apache/poi/hsmf/datatypes/Chunks;

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/Chunks;->getHtmlBodyChunkBinary()Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->mainChunks:Lorg/apache/poi/hsmf/datatypes/Chunks;

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/Chunks;->getProperties()Ljava/util/Map;

    move-result-object p0

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->INTERNET_CPID:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hsmf/datatypes/PropertyValue$LongPropertyValue;

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/PropertyValue$LongPropertyValue;->getValue()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/ByteChunk;->getValue()[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    sget-object v1, Lorg/apache/poi/hsmf/MAPIMessage;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    invoke-static {p0}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v2, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->INTERNET_CPID:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    const-string v3, "HTML body binary: Invalid codepage ID {} set for the message via {}, ignoring"

    invoke-interface {v1, v3, p0, v2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/ByteChunk;->getAs7bitString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->mainChunks:Lorg/apache/poi/hsmf/datatypes/Chunks;

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/Chunks;->getHtmlBodyChunkString()Lorg/apache/poi/hsmf/datatypes/StringChunk;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hsmf/MAPIMessage;->getStringFromChunk(Lorg/apache/poi/hsmf/datatypes/StringChunk;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMainChunks()Lorg/apache/poi/hsmf/datatypes/Chunks;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->mainChunks:Lorg/apache/poi/hsmf/datatypes/Chunks;

    return-object p0
.end method

.method public getMessageClassEnum()Lorg/apache/poi/hsmf/MAPIMessage$MESSAGE_CLASS;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->mainChunks:Lorg/apache/poi/hsmf/datatypes/Chunks;

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/Chunks;->getMessageClass()Lorg/apache/poi/hsmf/datatypes/StringChunk;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hsmf/MAPIMessage;->getStringFromChunk(Lorg/apache/poi/hsmf/datatypes/StringChunk;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/apache/poi/hsmf/MAPIMessage$MESSAGE_CLASS;->UNSPECIFIED:Lorg/apache/poi/hsmf/MAPIMessage$MESSAGE_CLASS;

    return-object p0

    :cond_0
    const-string v0, "IPM.Note"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lorg/apache/poi/hsmf/MAPIMessage$MESSAGE_CLASS;->NOTE:Lorg/apache/poi/hsmf/MAPIMessage$MESSAGE_CLASS;

    return-object p0

    :cond_1
    const-string v0, "IPM.Contact"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lorg/apache/poi/hsmf/MAPIMessage$MESSAGE_CLASS;->CONTACT:Lorg/apache/poi/hsmf/MAPIMessage$MESSAGE_CLASS;

    return-object p0

    :cond_2
    const-string v0, "IPM.Appointment"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lorg/apache/poi/hsmf/MAPIMessage$MESSAGE_CLASS;->APPOINTMENT:Lorg/apache/poi/hsmf/MAPIMessage$MESSAGE_CLASS;

    return-object p0

    :cond_3
    const-string v0, "IPM.StickyNote"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lorg/apache/poi/hsmf/MAPIMessage$MESSAGE_CLASS;->STICKY_NOTE:Lorg/apache/poi/hsmf/MAPIMessage$MESSAGE_CLASS;

    return-object p0

    :cond_4
    const-string v0, "IPM.Task"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lorg/apache/poi/hsmf/MAPIMessage$MESSAGE_CLASS;->TASK:Lorg/apache/poi/hsmf/MAPIMessage$MESSAGE_CLASS;

    return-object p0

    :cond_5
    const-string v0, "IPM.Post"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lorg/apache/poi/hsmf/MAPIMessage$MESSAGE_CLASS;->POST:Lorg/apache/poi/hsmf/MAPIMessage$MESSAGE_CLASS;

    return-object p0

    :cond_6
    sget-object v0, Lorg/apache/poi/hsmf/MAPIMessage;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "I don\'t recognize message class \'{}\'. Please open an issue on POI\'s bugzilla"

    invoke-interface {v0, v1, p0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lorg/apache/poi/hsmf/MAPIMessage$MESSAGE_CLASS;->UNKNOWN:Lorg/apache/poi/hsmf/MAPIMessage$MESSAGE_CLASS;

    return-object p0
.end method

.method public getMessageDate()Ljava/util/Calendar;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->mainChunks:Lorg/apache/poi/hsmf/datatypes/Chunks;

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/Chunks;->getSubmissionChunk()Lorg/apache/poi/hsmf/datatypes/MessageSubmissionChunk;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->mainChunks:Lorg/apache/poi/hsmf/datatypes/Chunks;

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/Chunks;->getSubmissionChunk()Lorg/apache/poi/hsmf/datatypes/MessageSubmissionChunk;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/MessageSubmissionChunk;->getAcceptedAtTime()Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x3

    new-array v1, v0, [Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    sget-object v2, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->CLIENT_SUBMIT_TIME:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->LAST_MODIFICATION_TIME:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    sget-object v4, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->CREATION_TIME:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    aput-object v4, v1, v2

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v4, v1, v2

    iget-object v5, p0, Lorg/apache/poi/hsmf/MAPIMessage;->mainChunks:Lorg/apache/poi/hsmf/datatypes/Chunks;

    invoke-virtual {v5}, Lorg/apache/poi/hsmf/datatypes/Chunks;->getProperties()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hsmf/datatypes/PropertyValue$TimePropertyValue;

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/PropertyValue$TimePropertyValue;->getValue()Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->returnNullOnMissingChunk:Z

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    new-instance p0, Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;

    invoke-direct {p0}, Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;-><init>()V

    throw p0
.end method

.method public getNameIdChunks()Lorg/apache/poi/hsmf/datatypes/NameIdChunks;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->nameIdChunks:Lorg/apache/poi/hsmf/datatypes/NameIdChunks;

    return-object p0
.end method

.method public getRecipientDetailsChunks()[Lorg/apache/poi/hsmf/datatypes/RecipientChunks;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->recipientChunks:[Lorg/apache/poi/hsmf/datatypes/RecipientChunks;

    return-object p0
.end method

.method public getRecipientEmailAddress()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/MAPIMessage;->getRecipientEmailAddressList()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hsmf/MAPIMessage;->toSemicolonList([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRecipientEmailAddressList()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->recipientChunks:[Lorg/apache/poi/hsmf/datatypes/RecipientChunks;

    if-eqz v0, :cond_3

    array-length v1, v0

    if-eqz v1, :cond_3

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lorg/apache/poi/hsmf/MAPIMessage;->recipientChunks:[Lorg/apache/poi/hsmf/datatypes/RecipientChunks;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/apache/poi/hsmf/datatypes/RecipientChunks;->getRecipientEmailAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    aput-object v3, v1, v2

    goto :goto_1

    :cond_0
    iget-boolean v3, p0, Lorg/apache/poi/hsmf/MAPIMessage;->returnNullOnMissingChunk:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No email address holding chunks found for the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "th recipient"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object v1

    :cond_3
    new-instance p0, Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;

    const-string v0, "No recipients section present"

    invoke-direct {p0, v0}, Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRecipientNames()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/MAPIMessage;->getRecipientNamesList()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hsmf/MAPIMessage;->toSemicolonList([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRecipientNamesList()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->recipientChunks:[Lorg/apache/poi/hsmf/datatypes/RecipientChunks;

    if-eqz v0, :cond_2

    array-length v1, v0

    if-eqz v1, :cond_2

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lorg/apache/poi/hsmf/MAPIMessage;->recipientChunks:[Lorg/apache/poi/hsmf/datatypes/RecipientChunks;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/apache/poi/hsmf/datatypes/RecipientChunks;->getRecipientName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No display name holding chunks found for the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "th recipient"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v1

    :cond_2
    new-instance p0, Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;

    const-string v0, "No recipients section present"

    invoke-direct {p0, v0}, Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRtfBody()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->mainChunks:Lorg/apache/poi/hsmf/datatypes/Chunks;

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/Chunks;->getRtfBodyChunk()Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->returnNullOnMissingChunk:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;

    invoke-direct {p0}, Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;-><init>()V

    throw p0

    :cond_1
    :try_start_0
    new-instance p0, Lorg/apache/poi/hmef/attribute/MAPIRtfAttribute;

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->RTF_COMPRESSED:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    sget-object v2, Lorg/apache/poi/hsmf/datatypes/Types;->BINARY:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    invoke-virtual {v2}, Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;->getId()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/ByteChunk;->getValue()[B

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/poi/hmef/attribute/MAPIRtfAttribute;-><init>(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;I[B)V

    invoke-virtual {p0}, Lorg/apache/poi/hmef/attribute/MAPIRtfAttribute;->getDataString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t happen"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getStringFromChunk(Lorg/apache/poi/hsmf/datatypes/StringChunk;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;
        }
    .end annotation

    if-nez p1, :cond_1

    iget-boolean p0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->returnNullOnMissingChunk:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;

    invoke-direct {p0}, Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/StringChunk;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->mainChunks:Lorg/apache/poi/hsmf/datatypes/Chunks;

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/Chunks;->getSubjectChunk()Lorg/apache/poi/hsmf/datatypes/StringChunk;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hsmf/MAPIMessage;->getStringFromChunk(Lorg/apache/poi/hsmf/datatypes/StringChunk;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextBody()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->mainChunks:Lorg/apache/poi/hsmf/datatypes/Chunks;

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/Chunks;->getTextBodyChunk()Lorg/apache/poi/hsmf/datatypes/StringChunk;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hsmf/MAPIMessage;->getStringFromChunk(Lorg/apache/poi/hsmf/datatypes/StringChunk;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public guess7BitEncoding()V
    .locals 11

    iget-object v0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->mainChunks:Lorg/apache/poi/hsmf/datatypes/Chunks;

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/Chunks;->getProperties()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->MESSAGE_CODEPAGE:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "Invalid codepage ID {} set for the message via {}, ignoring"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/PropertyValue$LongPropertyValue;

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/PropertyValue$LongPropertyValue;->getValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :try_start_0
    invoke-static {v0, v3}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(IZ)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v5, Lorg/apache/poi/hsmf/MAPIMessage;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v5}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v5

    invoke-static {v0}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->MESSAGE_CODEPAGE:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    invoke-interface {v5, v1, v0, v6}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move-object v0, v4

    :goto_0
    if-nez v0, :cond_1

    iget-object v5, p0, Lorg/apache/poi/hsmf/MAPIMessage;->mainChunks:Lorg/apache/poi/hsmf/datatypes/Chunks;

    invoke-virtual {v5}, Lorg/apache/poi/hsmf/datatypes/Chunks;->getProperties()Ljava/util/Map;

    move-result-object v5

    sget-object v6, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->MESSAGE_LOCALE_ID:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hsmf/datatypes/PropertyValue$LongPropertyValue;

    invoke-virtual {v5}, Lorg/apache/poi/hsmf/datatypes/PropertyValue$LongPropertyValue;->getValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/LocaleUtil;->getDefaultCodePageFromLCID(I)I

    move-result v6

    if-eqz v6, :cond_1

    :try_start_1
    invoke-static {v6, v3}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(IZ)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    sget-object v7, Lorg/apache/poi/hsmf/MAPIMessage;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v7}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v7

    invoke-static {v6}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->MESSAGE_LOCALE_ID:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    const-string v9, "Invalid codepage ID {}from locale ID{} set for the message via {}, ignoring"

    invoke-interface {v7, v9, v6, v5, v8}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_1
    if-nez v0, :cond_3

    :try_start_2
    invoke-virtual {p0}, Lorg/apache/poi/hsmf/MAPIMessage;->getHeaders()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    array-length v6, v5

    if-lez v6, :cond_3

    array-length v6, v5

    move v7, v2

    :goto_2
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "content-type"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Lorg/apache/poi/hsmf/MAPIMessage;->GUESS_7_BIT_ENCODING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/apache/poi/hsmf/exceptions/ChunkNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_2
    :cond_3
    iget-object v5, p0, Lorg/apache/poi/hsmf/MAPIMessage;->mainChunks:Lorg/apache/poi/hsmf/datatypes/Chunks;

    invoke-virtual {v5}, Lorg/apache/poi/hsmf/datatypes/Chunks;->getProperties()Ljava/util/Map;

    move-result-object v5

    sget-object v6, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->INTERNET_CPID:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hsmf/datatypes/PropertyValue$LongPropertyValue;

    invoke-virtual {v2}, Lorg/apache/poi/hsmf/datatypes/PropertyValue$LongPropertyValue;->getValue()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :try_start_3
    invoke-static {v2, v3}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(IZ)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    const-string v5, "utf-8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_4

    if-nez v1, :cond_4

    move-object v4, v3

    goto :goto_3

    :catch_3
    move-object v3, v4

    :catch_4
    sget-object v5, Lorg/apache/poi/hsmf/MAPIMessage;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v5}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v5

    invoke-static {v2}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->INTERNET_CPID:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    invoke-interface {v5, v1, v2, v6}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    :goto_3
    move-object v1, v4

    move-object v4, v3

    goto :goto_4

    :cond_5
    move-object v1, v4

    :goto_4
    invoke-virtual {p0, v0, v4, v1}, Lorg/apache/poi/hsmf/MAPIMessage;->set7BitEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public has7BitEncodingStrings()Z
    .locals 9

    iget-object v0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->mainChunks:Lorg/apache/poi/hsmf/datatypes/Chunks;

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/Chunks;->getChunks()[Lorg/apache/poi/hsmf/datatypes/Chunk;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    instance-of v6, v5, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getType()Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    move-result-object v5

    sget-object v6, Lorg/apache/poi/hsmf/datatypes/Types;->ASCII_STRING:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne v5, v6, :cond_0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->nameIdChunks:Lorg/apache/poi/hsmf/datatypes/NameIdChunks;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;->getChunks()[Lorg/apache/poi/hsmf/datatypes/Chunk;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v5, v0, v3

    instance-of v6, v5, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getType()Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    move-result-object v5

    sget-object v6, Lorg/apache/poi/hsmf/datatypes/Types;->ASCII_STRING:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne v5, v6, :cond_2

    return v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->recipientChunks:[Lorg/apache/poi/hsmf/datatypes/RecipientChunks;

    array-length v0, p0

    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_6

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lorg/apache/poi/hsmf/datatypes/RecipientChunks;->getAll()[Lorg/apache/poi/hsmf/datatypes/Chunk;

    move-result-object v3

    array-length v5, v3

    move v6, v2

    :goto_3
    if-ge v6, v5, :cond_5

    aget-object v7, v3, v6

    instance-of v8, v7, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getType()Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    move-result-object v7

    sget-object v8, Lorg/apache/poi/hsmf/datatypes/Types;->ASCII_STRING:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne v7, v8, :cond_4

    return v4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return v2
.end method

.method public isReturnNullOnMissingChunk()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->returnNullOnMissingChunk:Z

    return p0
.end method

.method public set7BitEncoding(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1, p1}, Lorg/apache/poi/hsmf/MAPIMessage;->set7BitEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public set7BitEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->mainChunks:Lorg/apache/poi/hsmf/datatypes/Chunks;

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/Chunks;->getChunks()[Lorg/apache/poi/hsmf/datatypes/Chunk;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 3
    instance-of v5, v4, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    if-eqz v5, :cond_2

    .line 4
    invoke-virtual {v4}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getChunkId()I

    move-result v5

    sget-object v6, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->BODY_HTML:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v6, v6, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v5, v6, :cond_0

    if-eqz p2, :cond_2

    .line 5
    check-cast v4, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    invoke-virtual {v4, p2}, Lorg/apache/poi/hsmf/datatypes/StringChunk;->set7BitEncoding(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v4}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getChunkId()I

    move-result v5

    sget-object v6, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->BODY:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v6, v6, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v5, v6, :cond_1

    if-eqz p3, :cond_2

    .line 7
    check-cast v4, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    invoke-virtual {v4, p3}, Lorg/apache/poi/hsmf/datatypes/StringChunk;->set7BitEncoding(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 8
    check-cast v4, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    invoke-virtual {v4, p1}, Lorg/apache/poi/hsmf/datatypes/StringChunk;->set7BitEncoding(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_8

    .line 9
    iget-object p2, p0, Lorg/apache/poi/hsmf/MAPIMessage;->nameIdChunks:Lorg/apache/poi/hsmf/datatypes/NameIdChunks;

    if-eqz p2, :cond_5

    .line 10
    invoke-virtual {p2}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;->getChunks()[Lorg/apache/poi/hsmf/datatypes/Chunk;

    move-result-object p2

    array-length p3, p2

    move v0, v2

    :goto_2
    if-ge v0, p3, :cond_5

    aget-object v1, p2, v0

    .line 11
    instance-of v3, v1, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    if-eqz v3, :cond_4

    .line 12
    check-cast v1, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hsmf/datatypes/StringChunk;->set7BitEncoding(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 13
    :cond_5
    iget-object p0, p0, Lorg/apache/poi/hsmf/MAPIMessage;->recipientChunks:[Lorg/apache/poi/hsmf/datatypes/RecipientChunks;

    array-length p2, p0

    move p3, v2

    :goto_3
    if-ge p3, p2, :cond_8

    aget-object v0, p0, p3

    .line 14
    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/RecipientChunks;->getAll()[Lorg/apache/poi/hsmf/datatypes/Chunk;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_4
    if-ge v3, v1, :cond_7

    aget-object v4, v0, v3

    .line 15
    instance-of v5, v4, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    if-eqz v5, :cond_6

    .line 16
    check-cast v4, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    invoke-virtual {v4, p1}, Lorg/apache/poi/hsmf/datatypes/StringChunk;->set7BitEncoding(Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method public setReturnNullOnMissingChunk(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hsmf/MAPIMessage;->returnNullOnMissingChunk:Z

    return-void
.end method
