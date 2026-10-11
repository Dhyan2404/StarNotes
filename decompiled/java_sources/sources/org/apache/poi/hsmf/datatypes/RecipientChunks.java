package org.apache.poi.hsmf.datatypes;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/* loaded from: classes12.dex */
public final class RecipientChunks implements ChunkGroupWithProperties {
    public static final String PREFIX = "__recip_version1.0_#";
    private List<Chunk> allChunks = new ArrayList();
    private StringChunk deliveryTypeChunk;
    private StringChunk recipientDisplayNameChunk;
    private StringChunk recipientEmailChunk;
    private StringChunk recipientNameChunk;
    private int recipientNumber;
    private PropertiesChunk recipientProperties;
    private StringChunk recipientSMTPChunk;
    private ByteChunk recipientSearchChunk;
    private static final Logger LOG = LogManager.getLogger((Class<?>) RecipientChunks.class);
    public static final MAPIProperty RECIPIENT_NAME = MAPIProperty.DISPLAY_NAME;
    public static final MAPIProperty DELIVERY_TYPE = MAPIProperty.ADDRTYPE;
    public static final MAPIProperty RECIPIENT_EMAIL_ADDRESS = MAPIProperty.EMAIL_ADDRESS;
    public static final MAPIProperty RECIPIENT_SEARCH = MAPIProperty.SEARCH_KEY;
    public static final MAPIProperty RECIPIENT_SMTP_ADDRESS = MAPIProperty.SMTP_ADDRESS;
    public static final MAPIProperty RECIPIENT_DISPLAY_NAME = MAPIProperty.RECIPIENT_DISPLAY_NAME;

    /* loaded from: classes12.dex */
    public static class RecipientChunksSorter implements Comparator<RecipientChunks>, Serializable {
        @Override // java.util.Comparator
        public int compare(RecipientChunks recipientChunks, RecipientChunks recipientChunks2) {
            return Integer.compare(recipientChunks.recipientNumber, recipientChunks2.recipientNumber);
        }
    }

    public RecipientChunks(String str) {
        this.recipientNumber = -1;
        int lastIndexOf = str.lastIndexOf(35);
        if (lastIndexOf > -1) {
            try {
                this.recipientNumber = Integer.parseInt(str.substring(lastIndexOf + 1), 16);
            } catch (NumberFormatException unused) {
                LOG.atError().log("Invalid recipient number in name {}", str);
            }
        }
    }

    @Override // org.apache.poi.hsmf.datatypes.ChunkGroup
    public void chunksComplete() {
        PropertiesChunk propertiesChunk = this.recipientProperties;
        if (propertiesChunk != null) {
            propertiesChunk.matchVariableSizedPropertiesToChunks();
        } else {
            LOG.atWarn().log("Recipients Chunk didn't contain a list of properties!");
        }
    }

    public Chunk[] getAll() {
        return (Chunk[]) this.allChunks.toArray(new Chunk[0]);
    }

    @Override // org.apache.poi.hsmf.datatypes.ChunkGroup
    public Chunk[] getChunks() {
        return getAll();
    }

    public StringChunk getDeliveryTypeChunk() {
        return this.deliveryTypeChunk;
    }

    @Override // org.apache.poi.hsmf.datatypes.ChunkGroupWithProperties
    public Map<MAPIProperty, List<PropertyValue>> getProperties() {
        PropertiesChunk propertiesChunk = this.recipientProperties;
        return propertiesChunk != null ? propertiesChunk.getProperties() : Collections.emptyMap();
    }

    public StringChunk getRecipientDisplayNameChunk() {
        return this.recipientDisplayNameChunk;
    }

    public String getRecipientEmailAddress() {
        String as7bitString;
        int indexOf;
        StringChunk stringChunk = this.recipientSMTPChunk;
        if (stringChunk != null) {
            return stringChunk.getValue();
        }
        StringChunk stringChunk2 = this.recipientEmailChunk;
        if (stringChunk2 != null) {
            String value = stringChunk2.getValue();
            int indexOf2 = value.indexOf("/CN=");
            return indexOf2 < 0 ? value : value.substring(indexOf2 + 4);
        }
        StringChunk stringChunk3 = this.recipientNameChunk;
        if (stringChunk3 != null) {
            String value2 = stringChunk3.getValue();
            if (value2.contains("@")) {
                return (value2.startsWith(CloudStorageConstants.SINGLE_QUOTES) && value2.endsWith(CloudStorageConstants.SINGLE_QUOTES)) ? value2.substring(1, value2.length() - 1) : value2;
            }
        }
        ByteChunk byteChunk = this.recipientSearchChunk;
        if (byteChunk == null || (indexOf = (as7bitString = byteChunk.getAs7bitString()).indexOf("SMTP:")) < 0) {
            return null;
        }
        return as7bitString.substring(indexOf + 5);
    }

    public StringChunk getRecipientEmailChunk() {
        return this.recipientEmailChunk;
    }

    public String getRecipientName() {
        StringChunk stringChunk = this.recipientNameChunk;
        if (stringChunk != null) {
            return stringChunk.getValue();
        }
        StringChunk stringChunk2 = this.recipientDisplayNameChunk;
        if (stringChunk2 != null) {
            return stringChunk2.getValue();
        }
        return null;
    }

    public StringChunk getRecipientNameChunk() {
        return this.recipientNameChunk;
    }

    public int getRecipientNumber() {
        return this.recipientNumber;
    }

    public StringChunk getRecipientSMTPChunk() {
        return this.recipientSMTPChunk;
    }

    public ByteChunk getRecipientSearchChunk() {
        return this.recipientSearchChunk;
    }

    @Override // org.apache.poi.hsmf.datatypes.ChunkGroup
    public void record(Chunk chunk) {
        if (chunk.getChunkId() == RECIPIENT_SEARCH.f111389id) {
            this.recipientSearchChunk = (ByteChunk) chunk;
        } else if (chunk.getChunkId() == RECIPIENT_NAME.f111389id) {
            this.recipientDisplayNameChunk = (StringChunk) chunk;
        } else if (chunk.getChunkId() == RECIPIENT_DISPLAY_NAME.f111389id) {
            this.recipientNameChunk = (StringChunk) chunk;
        } else if (chunk.getChunkId() == RECIPIENT_EMAIL_ADDRESS.f111389id) {
            this.recipientEmailChunk = (StringChunk) chunk;
        } else if (chunk.getChunkId() == RECIPIENT_SMTP_ADDRESS.f111389id) {
            this.recipientSMTPChunk = (StringChunk) chunk;
        } else if (chunk.getChunkId() == DELIVERY_TYPE.f111389id) {
            this.deliveryTypeChunk = (StringChunk) chunk;
        } else if (chunk instanceof PropertiesChunk) {
            this.recipientProperties = (PropertiesChunk) chunk;
        }
        this.allChunks.add(chunk);
    }
}
