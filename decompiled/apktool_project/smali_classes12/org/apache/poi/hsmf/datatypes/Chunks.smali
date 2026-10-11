.class public final Lorg/apache/poi/hsmf/datatypes/Chunks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hsmf/datatypes/ChunkGroupWithProperties;


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final allChunks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/hsmf/datatypes/MAPIProperty;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hsmf/datatypes/Chunk;",
            ">;>;"
        }
    .end annotation
.end field

.field private conversationTopic:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field private displayBCCChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field private displayCCChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field private displayFromChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field private displayToChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field private emailFromChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field private htmlBodyChunkBinary:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

.field private htmlBodyChunkString:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field private messageClass:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field private messageHeaders:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field private messageId:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field private messageProperties:Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;

.field private rtfBodyChunk:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

.field private sentByServerType:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field private subjectChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field private submissionChunk:Lorg/apache/poi/hsmf/datatypes/MessageSubmissionChunk;

.field private textBodyChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field private final unknownProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/hsmf/datatypes/MAPIProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hsmf/datatypes/Chunks;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hsmf/datatypes/Chunks;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->allChunks:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->unknownProperties:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hsmf/datatypes/Chunks;->lambda$record$0(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$record$0(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;)Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public chunksComplete()V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->messageProperties:Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->matchVariableSizedPropertiesToChunks()V

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string v0, "Message didn\'t contain a root list of properties!"

    invoke-interface {p0, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getAll()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/poi/hsmf/datatypes/MAPIProperty;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hsmf/datatypes/Chunk;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->allChunks:Ljava/util/Map;

    return-object p0
.end method

.method public getChunks()[Lorg/apache/poi/hsmf/datatypes/Chunk;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->allChunks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->allChunks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lorg/apache/poi/hsmf/datatypes/Chunk;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/hsmf/datatypes/Chunk;

    return-object p0
.end method

.method public getConversationTopic()Lorg/apache/poi/hsmf/datatypes/StringChunk;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->conversationTopic:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    return-object p0
.end method

.method public getDisplayBCCChunk()Lorg/apache/poi/hsmf/datatypes/StringChunk;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->displayBCCChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    return-object p0
.end method

.method public getDisplayCCChunk()Lorg/apache/poi/hsmf/datatypes/StringChunk;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->displayCCChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    return-object p0
.end method

.method public getDisplayFromChunk()Lorg/apache/poi/hsmf/datatypes/StringChunk;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->displayFromChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    return-object p0
.end method

.method public getDisplayToChunk()Lorg/apache/poi/hsmf/datatypes/StringChunk;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->displayToChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    return-object p0
.end method

.method public getEmailFromChunk()Lorg/apache/poi/hsmf/datatypes/StringChunk;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->emailFromChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    return-object p0
.end method

.method public getHtmlBodyChunkBinary()Lorg/apache/poi/hsmf/datatypes/ByteChunk;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->htmlBodyChunkBinary:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    return-object p0
.end method

.method public getHtmlBodyChunkString()Lorg/apache/poi/hsmf/datatypes/StringChunk;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->htmlBodyChunkString:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    return-object p0
.end method

.method public getMessageClass()Lorg/apache/poi/hsmf/datatypes/StringChunk;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->messageClass:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    return-object p0
.end method

.method public getMessageHeaders()Lorg/apache/poi/hsmf/datatypes/StringChunk;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->messageHeaders:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    return-object p0
.end method

.method public getMessageId()Lorg/apache/poi/hsmf/datatypes/StringChunk;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->messageId:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    return-object p0
.end method

.method public getMessageProperties()Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->messageProperties:Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;

    return-object p0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/poi/hsmf/datatypes/MAPIProperty;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hsmf/datatypes/PropertyValue;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->messageProperties:Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->getProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRawProperties()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/poi/hsmf/datatypes/MAPIProperty;",
            "Lorg/apache/poi/hsmf/datatypes/PropertyValue;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->messageProperties:Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->getRawProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRtfBodyChunk()Lorg/apache/poi/hsmf/datatypes/ByteChunk;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->rtfBodyChunk:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    return-object p0
.end method

.method public getSentByServerType()Lorg/apache/poi/hsmf/datatypes/StringChunk;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->sentByServerType:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    return-object p0
.end method

.method public getSubjectChunk()Lorg/apache/poi/hsmf/datatypes/StringChunk;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->subjectChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    return-object p0
.end method

.method public getSubmissionChunk()Lorg/apache/poi/hsmf/datatypes/MessageSubmissionChunk;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->submissionChunk:Lorg/apache/poi/hsmf/datatypes/MessageSubmissionChunk;

    return-object p0
.end method

.method public getTextBodyChunk()Lorg/apache/poi/hsmf/datatypes/StringChunk;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->textBodyChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    return-object p0
.end method

.method public record(Lorg/apache/poi/hsmf/datatypes/Chunk;)V
    .locals 5

    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getChunkId()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->get(I)Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->UNKNOWN:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getChunkId()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    int-to-long v0, v0

    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getType()Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;->getId()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->unknownProperties:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getChunkId()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getType()Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getEntryName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->createCustom(ILorg/apache/poi/hsmf/datatypes/Types$MAPIType;Ljava/lang/String;)Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->unknownProperties:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v0, v2

    :cond_1
    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->MESSAGE_CLASS:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    if-ne v0, v1, :cond_2

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v1, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->messageClass:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto/16 :goto_0

    :cond_2
    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->INTERNET_MESSAGE_ID:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    if-ne v0, v1, :cond_3

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v1, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->messageId:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto/16 :goto_0

    :cond_3
    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->MESSAGE_SUBMISSION_ID:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    if-ne v0, v1, :cond_4

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hsmf/datatypes/MessageSubmissionChunk;

    iput-object v1, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->submissionChunk:Lorg/apache/poi/hsmf/datatypes/MessageSubmissionChunk;

    goto/16 :goto_0

    :cond_4
    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->RECEIVED_BY_ADDRTYPE:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    if-ne v0, v1, :cond_5

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v1, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->sentByServerType:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto/16 :goto_0

    :cond_5
    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->TRANSPORT_MESSAGE_HEADERS:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    if-ne v0, v1, :cond_6

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v1, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->messageHeaders:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto/16 :goto_0

    :cond_6
    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->CONVERSATION_TOPIC:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    if-ne v0, v1, :cond_7

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v1, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->conversationTopic:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto/16 :goto_0

    :cond_7
    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->SUBJECT:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    if-ne v0, v1, :cond_8

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v1, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->subjectChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto/16 :goto_0

    :cond_8
    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->DISPLAY_TO:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    if-ne v0, v1, :cond_9

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v1, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->displayToChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto :goto_0

    :cond_9
    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->DISPLAY_CC:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    if-ne v0, v1, :cond_a

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v1, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->displayCCChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto :goto_0

    :cond_a
    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->DISPLAY_BCC:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    if-ne v0, v1, :cond_b

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v1, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->displayBCCChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto :goto_0

    :cond_b
    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->SENDER_EMAIL_ADDRESS:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    if-ne v0, v1, :cond_c

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v1, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->emailFromChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto :goto_0

    :cond_c
    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->SENDER_NAME:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    if-ne v0, v1, :cond_d

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v1, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->displayFromChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto :goto_0

    :cond_d
    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->BODY:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    if-ne v0, v1, :cond_e

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v1, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->textBodyChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto :goto_0

    :cond_e
    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->BODY_HTML:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    if-ne v0, v1, :cond_10

    instance-of v1, p1, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    if-eqz v1, :cond_f

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v1, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->htmlBodyChunkString:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    :cond_f
    instance-of v1, p1, Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    if-eqz v1, :cond_12

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    iput-object v1, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->htmlBodyChunkBinary:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    goto :goto_0

    :cond_10
    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->RTF_COMPRESSED:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    if-ne v0, v1, :cond_11

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    iput-object v1, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->rtfBodyChunk:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    goto :goto_0

    :cond_11
    instance-of v1, p1, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;

    if-eqz v1, :cond_12

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;

    iput-object v1, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->messageProperties:Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;

    :cond_12
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->allChunks:Ljava/util/Map;

    new-instance v2, Lcom/sunia/HTREnginev2/ntd;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/ntd;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->allChunks:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
