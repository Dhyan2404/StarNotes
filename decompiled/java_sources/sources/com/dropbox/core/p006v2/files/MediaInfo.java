package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.MediaMetadata;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class MediaInfo {
    public static final MediaInfo PENDING = new MediaInfo().m10886b(Tag.PENDING);

    /* renamed from: a */
    public Tag f17259a;

    /* renamed from: b */
    public MediaMetadata f17260b;

    /* loaded from: classes4.dex */
    public enum Tag {
        PENDING,
        METADATA
    }

    /* renamed from: com.dropbox.core.v2.files.MediaInfo$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2593a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17261a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17261a = iArr;
            try {
                iArr[Tag.PENDING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17261a[Tag.METADATA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.MediaInfo$b */
    /* loaded from: classes4.dex */
    public static class C2594b extends UnionSerializer<MediaInfo> {

        /* renamed from: b */
        public static final C2594b f17262b = new C2594b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MediaInfo deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            MediaInfo metadata;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag == null) {
                throw new JsonParseException(jsonParser, "Required field missing: .tag");
            }
            if ("pending".equals(readTag)) {
                metadata = MediaInfo.PENDING;
            } else {
                if (!"metadata".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                StoneSerializer.expectField("metadata", jsonParser);
                metadata = MediaInfo.metadata(MediaMetadata.C2595a.f17263b.deserialize(jsonParser));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return metadata;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MediaInfo mediaInfo, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2593a.f17261a[mediaInfo.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("pending");
                return;
            }
            if (i != 2) {
                throw new IllegalArgumentException("Unrecognized tag: " + mediaInfo.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("metadata", jsonGenerator);
            jsonGenerator.writeFieldName("metadata");
            MediaMetadata.C2595a.f17263b.serialize((MediaMetadata.C2595a) mediaInfo.f17260b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static MediaInfo metadata(MediaMetadata mediaMetadata) {
        if (mediaMetadata != null) {
            return new MediaInfo().m10887c(Tag.METADATA, mediaMetadata);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final MediaInfo m10886b(Tag tag) {
        MediaInfo mediaInfo = new MediaInfo();
        mediaInfo.f17259a = tag;
        return mediaInfo;
    }

    /* renamed from: c */
    public final MediaInfo m10887c(Tag tag, MediaMetadata mediaMetadata) {
        MediaInfo mediaInfo = new MediaInfo();
        mediaInfo.f17259a = tag;
        mediaInfo.f17260b = mediaMetadata;
        return mediaInfo;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof MediaInfo)) {
            return false;
        }
        MediaInfo mediaInfo = (MediaInfo) obj;
        Tag tag = this.f17259a;
        if (tag != mediaInfo.f17259a) {
            return false;
        }
        int i = C2593a.f17261a[tag.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i != 2) {
            return false;
        }
        MediaMetadata mediaMetadata = this.f17260b;
        MediaMetadata mediaMetadata2 = mediaInfo.f17260b;
        return mediaMetadata == mediaMetadata2 || mediaMetadata.equals(mediaMetadata2);
    }

    public MediaMetadata getMetadataValue() {
        if (this.f17259a == Tag.METADATA) {
            return this.f17260b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.METADATA, but was Tag." + this.f17259a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17259a, this.f17260b});
    }

    public boolean isMetadata() {
        return this.f17259a == Tag.METADATA;
    }

    public boolean isPending() {
        return this.f17259a == Tag.PENDING;
    }

    public Tag tag() {
        return this.f17259a;
    }

    public String toString() {
        return C2594b.f17262b.serialize((C2594b) this, false);
    }

    public String toStringMultiline() {
        return C2594b.f17262b.serialize((C2594b) this, true);
    }
}
