package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.ShareFolderError;
import com.dropbox.core.p006v2.sharing.SharedFolderMetadata;
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
public final class ShareFolderJobStatus {
    public static final ShareFolderJobStatus IN_PROGRESS = new ShareFolderJobStatus().m11878c(Tag.IN_PROGRESS);

    /* renamed from: a */
    public Tag f17944a;

    /* renamed from: b */
    public SharedFolderMetadata f17945b;

    /* renamed from: c */
    public ShareFolderError f17946c;

    /* loaded from: classes4.dex */
    public enum Tag {
        IN_PROGRESS,
        COMPLETE,
        FAILED
    }

    /* renamed from: com.dropbox.core.v2.sharing.ShareFolderJobStatus$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2932a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17947a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17947a = iArr;
            try {
                iArr[Tag.IN_PROGRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17947a[Tag.COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17947a[Tag.FAILED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ShareFolderJobStatus$b */
    /* loaded from: classes4.dex */
    public static class C2933b extends UnionSerializer<ShareFolderJobStatus> {

        /* renamed from: b */
        public static final C2933b f17948b = new C2933b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ShareFolderJobStatus deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ShareFolderJobStatus failed;
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
            if ("in_progress".equals(readTag)) {
                failed = ShareFolderJobStatus.IN_PROGRESS;
            } else if ("complete".equals(readTag)) {
                failed = ShareFolderJobStatus.complete(SharedFolderMetadata.C2947a.f17971b.deserialize(jsonParser, true));
            } else {
                if (!"failed".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                StoneSerializer.expectField("failed", jsonParser);
                failed = ShareFolderJobStatus.failed(ShareFolderError.C2931b.f17943b.deserialize(jsonParser));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return failed;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ShareFolderJobStatus shareFolderJobStatus, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2932a.f17947a[shareFolderJobStatus.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("in_progress");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("complete", jsonGenerator);
                SharedFolderMetadata.C2947a.f17971b.serialize(shareFolderJobStatus.f17945b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 3) {
                throw new IllegalArgumentException("Unrecognized tag: " + shareFolderJobStatus.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("failed", jsonGenerator);
            jsonGenerator.writeFieldName("failed");
            ShareFolderError.C2931b.f17943b.serialize(shareFolderJobStatus.f17946c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static ShareFolderJobStatus complete(SharedFolderMetadata sharedFolderMetadata) {
        if (sharedFolderMetadata != null) {
            return new ShareFolderJobStatus().m11879d(Tag.COMPLETE, sharedFolderMetadata);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static ShareFolderJobStatus failed(ShareFolderError shareFolderError) {
        if (shareFolderError != null) {
            return new ShareFolderJobStatus().m11880e(Tag.FAILED, shareFolderError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final ShareFolderJobStatus m11878c(Tag tag) {
        ShareFolderJobStatus shareFolderJobStatus = new ShareFolderJobStatus();
        shareFolderJobStatus.f17944a = tag;
        return shareFolderJobStatus;
    }

    /* renamed from: d */
    public final ShareFolderJobStatus m11879d(Tag tag, SharedFolderMetadata sharedFolderMetadata) {
        ShareFolderJobStatus shareFolderJobStatus = new ShareFolderJobStatus();
        shareFolderJobStatus.f17944a = tag;
        shareFolderJobStatus.f17945b = sharedFolderMetadata;
        return shareFolderJobStatus;
    }

    /* renamed from: e */
    public final ShareFolderJobStatus m11880e(Tag tag, ShareFolderError shareFolderError) {
        ShareFolderJobStatus shareFolderJobStatus = new ShareFolderJobStatus();
        shareFolderJobStatus.f17944a = tag;
        shareFolderJobStatus.f17946c = shareFolderError;
        return shareFolderJobStatus;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ShareFolderJobStatus)) {
            return false;
        }
        ShareFolderJobStatus shareFolderJobStatus = (ShareFolderJobStatus) obj;
        Tag tag = this.f17944a;
        if (tag != shareFolderJobStatus.f17944a) {
            return false;
        }
        int i = C2932a.f17947a[tag.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            SharedFolderMetadata sharedFolderMetadata = this.f17945b;
            SharedFolderMetadata sharedFolderMetadata2 = shareFolderJobStatus.f17945b;
            return sharedFolderMetadata == sharedFolderMetadata2 || sharedFolderMetadata.equals(sharedFolderMetadata2);
        }
        if (i != 3) {
            return false;
        }
        ShareFolderError shareFolderError = this.f17946c;
        ShareFolderError shareFolderError2 = shareFolderJobStatus.f17946c;
        return shareFolderError == shareFolderError2 || shareFolderError.equals(shareFolderError2);
    }

    public SharedFolderMetadata getCompleteValue() {
        if (this.f17944a == Tag.COMPLETE) {
            return this.f17945b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this.f17944a.name());
    }

    public ShareFolderError getFailedValue() {
        if (this.f17944a == Tag.FAILED) {
            return this.f17946c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FAILED, but was Tag." + this.f17944a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17944a, this.f17945b, this.f17946c});
    }

    public boolean isComplete() {
        return this.f17944a == Tag.COMPLETE;
    }

    public boolean isFailed() {
        return this.f17944a == Tag.FAILED;
    }

    public boolean isInProgress() {
        return this.f17944a == Tag.IN_PROGRESS;
    }

    public Tag tag() {
        return this.f17944a;
    }

    public String toString() {
        return C2933b.f17948b.serialize((C2933b) this, false);
    }

    public String toStringMultiline() {
        return C2933b.f17948b.serialize((C2933b) this, true);
    }
}
