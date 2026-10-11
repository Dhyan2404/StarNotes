package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.SharedFolderMetadata;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class ShareFolderLaunch {

    /* renamed from: a */
    public Tag f17949a;

    /* renamed from: b */
    public String f17950b;

    /* renamed from: c */
    public SharedFolderMetadata f17951c;

    /* loaded from: classes4.dex */
    public enum Tag {
        ASYNC_JOB_ID,
        COMPLETE
    }

    /* renamed from: com.dropbox.core.v2.sharing.ShareFolderLaunch$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2934a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17952a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17952a = iArr;
            try {
                iArr[Tag.ASYNC_JOB_ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17952a[Tag.COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ShareFolderLaunch$b */
    /* loaded from: classes4.dex */
    public static class C2935b extends UnionSerializer<ShareFolderLaunch> {

        /* renamed from: b */
        public static final C2935b f17953b = new C2935b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ShareFolderLaunch deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ShareFolderLaunch complete;
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
            if ("async_job_id".equals(readTag)) {
                StoneSerializer.expectField("async_job_id", jsonParser);
                complete = ShareFolderLaunch.asyncJobId(StoneSerializers.string().deserialize(jsonParser));
            } else {
                if (!"complete".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                complete = ShareFolderLaunch.complete(SharedFolderMetadata.C2947a.f17971b.deserialize(jsonParser, true));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return complete;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ShareFolderLaunch shareFolderLaunch, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2934a.f17952a[shareFolderLaunch.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("async_job_id", jsonGenerator);
                jsonGenerator.writeFieldName("async_job_id");
                StoneSerializers.string().serialize((StoneSerializer<String>) shareFolderLaunch.f17950b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                throw new IllegalArgumentException("Unrecognized tag: " + shareFolderLaunch.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("complete", jsonGenerator);
            SharedFolderMetadata.C2947a.f17971b.serialize(shareFolderLaunch.f17951c, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static ShareFolderLaunch asyncJobId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() >= 1) {
            return new ShareFolderLaunch().m11886d(Tag.ASYNC_JOB_ID, str);
        }
        throw new IllegalArgumentException("String is shorter than 1");
    }

    public static ShareFolderLaunch complete(SharedFolderMetadata sharedFolderMetadata) {
        if (sharedFolderMetadata != null) {
            return new ShareFolderLaunch().m11887e(Tag.COMPLETE, sharedFolderMetadata);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final ShareFolderLaunch m11885c(Tag tag) {
        ShareFolderLaunch shareFolderLaunch = new ShareFolderLaunch();
        shareFolderLaunch.f17949a = tag;
        return shareFolderLaunch;
    }

    /* renamed from: d */
    public final ShareFolderLaunch m11886d(Tag tag, String str) {
        ShareFolderLaunch shareFolderLaunch = new ShareFolderLaunch();
        shareFolderLaunch.f17949a = tag;
        shareFolderLaunch.f17950b = str;
        return shareFolderLaunch;
    }

    /* renamed from: e */
    public final ShareFolderLaunch m11887e(Tag tag, SharedFolderMetadata sharedFolderMetadata) {
        ShareFolderLaunch shareFolderLaunch = new ShareFolderLaunch();
        shareFolderLaunch.f17949a = tag;
        shareFolderLaunch.f17951c = sharedFolderMetadata;
        return shareFolderLaunch;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ShareFolderLaunch)) {
            return false;
        }
        ShareFolderLaunch shareFolderLaunch = (ShareFolderLaunch) obj;
        Tag tag = this.f17949a;
        if (tag != shareFolderLaunch.f17949a) {
            return false;
        }
        int i = C2934a.f17952a[tag.ordinal()];
        if (i == 1) {
            String str = this.f17950b;
            String str2 = shareFolderLaunch.f17950b;
            return str == str2 || str.equals(str2);
        }
        if (i != 2) {
            return false;
        }
        SharedFolderMetadata sharedFolderMetadata = this.f17951c;
        SharedFolderMetadata sharedFolderMetadata2 = shareFolderLaunch.f17951c;
        return sharedFolderMetadata == sharedFolderMetadata2 || sharedFolderMetadata.equals(sharedFolderMetadata2);
    }

    public String getAsyncJobIdValue() {
        if (this.f17949a == Tag.ASYNC_JOB_ID) {
            return this.f17950b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag." + this.f17949a.name());
    }

    public SharedFolderMetadata getCompleteValue() {
        if (this.f17949a == Tag.COMPLETE) {
            return this.f17951c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this.f17949a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17949a, this.f17950b, this.f17951c});
    }

    public boolean isAsyncJobId() {
        return this.f17949a == Tag.ASYNC_JOB_ID;
    }

    public boolean isComplete() {
        return this.f17949a == Tag.COMPLETE;
    }

    public Tag tag() {
        return this.f17949a;
    }

    public String toString() {
        return C2935b.f17953b.serialize((C2935b) this, false);
    }

    public String toStringMultiline() {
        return C2935b.f17953b.serialize((C2935b) this, true);
    }
}
