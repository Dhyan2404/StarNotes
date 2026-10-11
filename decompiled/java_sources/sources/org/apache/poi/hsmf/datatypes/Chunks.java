package org.apache.poi.hsmf.datatypes;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.hsmf.datatypes.Chunks;
import org.apache.poi.hsmf.datatypes.MAPIProperty;

/* loaded from: classes12.dex */
public final class Chunks implements ChunkGroupWithProperties {
    private static final Logger LOG = LogManager.getLogger((Class<?>) Chunks.class);
    private StringChunk conversationTopic;
    private StringChunk displayBCCChunk;
    private StringChunk displayCCChunk;
    private StringChunk displayFromChunk;
    private StringChunk displayToChunk;
    private StringChunk emailFromChunk;
    private ByteChunk htmlBodyChunkBinary;
    private StringChunk htmlBodyChunkString;
    private StringChunk messageClass;
    private StringChunk messageHeaders;
    private StringChunk messageId;
    private MessagePropertiesChunk messageProperties;
    private ByteChunk rtfBodyChunk;
    private StringChunk sentByServerType;
    private StringChunk subjectChunk;
    private MessageSubmissionChunk submissionChunk;
    private StringChunk textBodyChunk;
    private final Map<MAPIProperty, List<Chunk>> allChunks = new HashMap();
    private final Map<Long, MAPIProperty> unknownProperties = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List lambda$record$0(MAPIProperty mAPIProperty) {
        return new ArrayList();
    }

    @Override // org.apache.poi.hsmf.datatypes.ChunkGroup
    public void chunksComplete() {
        MessagePropertiesChunk messagePropertiesChunk = this.messageProperties;
        if (messagePropertiesChunk != null) {
            messagePropertiesChunk.matchVariableSizedPropertiesToChunks();
        } else {
            LOG.atWarn().log("Message didn't contain a root list of properties!");
        }
    }

    public Map<MAPIProperty, List<Chunk>> getAll() {
        return this.allChunks;
    }

    @Override // org.apache.poi.hsmf.datatypes.ChunkGroup
    public Chunk[] getChunks() {
        ArrayList arrayList = new ArrayList(this.allChunks.size());
        Iterator<List<Chunk>> it2 = this.allChunks.values().iterator();
        while (it2.hasNext()) {
            arrayList.addAll(it2.next());
        }
        return (Chunk[]) arrayList.toArray(new Chunk[0]);
    }

    public StringChunk getConversationTopic() {
        return this.conversationTopic;
    }

    public StringChunk getDisplayBCCChunk() {
        return this.displayBCCChunk;
    }

    public StringChunk getDisplayCCChunk() {
        return this.displayCCChunk;
    }

    public StringChunk getDisplayFromChunk() {
        return this.displayFromChunk;
    }

    public StringChunk getDisplayToChunk() {
        return this.displayToChunk;
    }

    public StringChunk getEmailFromChunk() {
        return this.emailFromChunk;
    }

    public ByteChunk getHtmlBodyChunkBinary() {
        return this.htmlBodyChunkBinary;
    }

    public StringChunk getHtmlBodyChunkString() {
        return this.htmlBodyChunkString;
    }

    public StringChunk getMessageClass() {
        return this.messageClass;
    }

    public StringChunk getMessageHeaders() {
        return this.messageHeaders;
    }

    public StringChunk getMessageId() {
        return this.messageId;
    }

    public MessagePropertiesChunk getMessageProperties() {
        return this.messageProperties;
    }

    @Override // org.apache.poi.hsmf.datatypes.ChunkGroupWithProperties
    public Map<MAPIProperty, List<PropertyValue>> getProperties() {
        MessagePropertiesChunk messagePropertiesChunk = this.messageProperties;
        return messagePropertiesChunk != null ? messagePropertiesChunk.getProperties() : Collections.emptyMap();
    }

    public Map<MAPIProperty, PropertyValue> getRawProperties() {
        MessagePropertiesChunk messagePropertiesChunk = this.messageProperties;
        return messagePropertiesChunk != null ? messagePropertiesChunk.getRawProperties() : Collections.emptyMap();
    }

    public ByteChunk getRtfBodyChunk() {
        return this.rtfBodyChunk;
    }

    public StringChunk getSentByServerType() {
        return this.sentByServerType;
    }

    public StringChunk getSubjectChunk() {
        return this.subjectChunk;
    }

    public MessageSubmissionChunk getSubmissionChunk() {
        return this.submissionChunk;
    }

    public StringChunk getTextBodyChunk() {
        return this.textBodyChunk;
    }

    @Override // org.apache.poi.hsmf.datatypes.ChunkGroup
    public void record(Chunk chunk) {
        MAPIProperty mAPIProperty = MAPIProperty.get(chunk.getChunkId());
        if (mAPIProperty == MAPIProperty.UNKNOWN) {
            long chunkId = (chunk.getChunkId() << 16) + chunk.getType().getId();
            MAPIProperty mAPIProperty2 = this.unknownProperties.get(Long.valueOf(chunkId));
            if (mAPIProperty2 == null) {
                mAPIProperty2 = MAPIProperty.createCustom(chunk.getChunkId(), chunk.getType(), chunk.getEntryName());
                this.unknownProperties.put(Long.valueOf(chunkId), mAPIProperty2);
            }
            mAPIProperty = mAPIProperty2;
        }
        if (mAPIProperty == MAPIProperty.MESSAGE_CLASS) {
            this.messageClass = (StringChunk) chunk;
        } else if (mAPIProperty == MAPIProperty.INTERNET_MESSAGE_ID) {
            this.messageId = (StringChunk) chunk;
        } else if (mAPIProperty == MAPIProperty.MESSAGE_SUBMISSION_ID) {
            this.submissionChunk = (MessageSubmissionChunk) chunk;
        } else if (mAPIProperty == MAPIProperty.RECEIVED_BY_ADDRTYPE) {
            this.sentByServerType = (StringChunk) chunk;
        } else if (mAPIProperty == MAPIProperty.TRANSPORT_MESSAGE_HEADERS) {
            this.messageHeaders = (StringChunk) chunk;
        } else if (mAPIProperty == MAPIProperty.CONVERSATION_TOPIC) {
            this.conversationTopic = (StringChunk) chunk;
        } else if (mAPIProperty == MAPIProperty.SUBJECT) {
            this.subjectChunk = (StringChunk) chunk;
        } else if (mAPIProperty == MAPIProperty.DISPLAY_TO) {
            this.displayToChunk = (StringChunk) chunk;
        } else if (mAPIProperty == MAPIProperty.DISPLAY_CC) {
            this.displayCCChunk = (StringChunk) chunk;
        } else if (mAPIProperty == MAPIProperty.DISPLAY_BCC) {
            this.displayBCCChunk = (StringChunk) chunk;
        } else if (mAPIProperty == MAPIProperty.SENDER_EMAIL_ADDRESS) {
            this.emailFromChunk = (StringChunk) chunk;
        } else if (mAPIProperty == MAPIProperty.SENDER_NAME) {
            this.displayFromChunk = (StringChunk) chunk;
        } else if (mAPIProperty == MAPIProperty.BODY) {
            this.textBodyChunk = (StringChunk) chunk;
        } else if (mAPIProperty == MAPIProperty.BODY_HTML) {
            if (chunk instanceof StringChunk) {
                this.htmlBodyChunkString = (StringChunk) chunk;
            }
            if (chunk instanceof ByteChunk) {
                this.htmlBodyChunkBinary = (ByteChunk) chunk;
            }
        } else if (mAPIProperty == MAPIProperty.RTF_COMPRESSED) {
            this.rtfBodyChunk = (ByteChunk) chunk;
        } else if (chunk instanceof MessagePropertiesChunk) {
            this.messageProperties = (MessagePropertiesChunk) chunk;
        }
        this.allChunks.computeIfAbsent(mAPIProperty, new Function() { // from class: com.sunia.HTREnginev2.ntd
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                List lambda$record$0;
                lambda$record$0 = Chunks.lambda$record$0((MAPIProperty) obj);
                return lambda$record$0;
            }
        });
        this.allChunks.get(mAPIProperty).add(chunk);
    }
}
