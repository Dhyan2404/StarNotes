package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.SharedFileMetadata;
import com.dropbox.core.p006v2.sharing.SharingFileAccessError;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class GetFileMetadataIndividualResult {
    public static final GetFileMetadataIndividualResult OTHER = new GetFileMetadataIndividualResult().m11611c(Tag.OTHER);

    /* renamed from: a */
    public Tag f17743a;

    /* renamed from: b */
    public SharedFileMetadata f17744b;

    /* renamed from: c */
    public SharingFileAccessError f17745c;

    /* loaded from: classes4.dex */
    public enum Tag {
        METADATA,
        ACCESS_ERROR,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.GetFileMetadataIndividualResult$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2835a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17746a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17746a = iArr;
            try {
                iArr[Tag.METADATA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17746a[Tag.ACCESS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17746a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.GetFileMetadataIndividualResult$b */
    /* loaded from: classes4.dex */
    public static class C2836b extends UnionSerializer<GetFileMetadataIndividualResult> {

        /* renamed from: b */
        public static final C2836b f17747b = new C2836b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetFileMetadataIndividualResult deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            GetFileMetadataIndividualResult getFileMetadataIndividualResult;
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
            if ("metadata".equals(readTag)) {
                getFileMetadataIndividualResult = GetFileMetadataIndividualResult.metadata(SharedFileMetadata.C2941a.f17963b.deserialize(jsonParser, true));
            } else if ("access_error".equals(readTag)) {
                StoneSerializer.expectField("access_error", jsonParser);
                getFileMetadataIndividualResult = GetFileMetadataIndividualResult.accessError(SharingFileAccessError.C2961b.f17989b.deserialize(jsonParser));
            } else {
                getFileMetadataIndividualResult = GetFileMetadataIndividualResult.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return getFileMetadataIndividualResult;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GetFileMetadataIndividualResult getFileMetadataIndividualResult, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2835a.f17746a[getFileMetadataIndividualResult.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("metadata", jsonGenerator);
                SharedFileMetadata.C2941a.f17963b.serialize(getFileMetadataIndividualResult.f17744b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("access_error", jsonGenerator);
            jsonGenerator.writeFieldName("access_error");
            SharingFileAccessError.C2961b.f17989b.serialize(getFileMetadataIndividualResult.f17745c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static GetFileMetadataIndividualResult accessError(SharingFileAccessError sharingFileAccessError) {
        if (sharingFileAccessError != null) {
            return new GetFileMetadataIndividualResult().m11612d(Tag.ACCESS_ERROR, sharingFileAccessError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static GetFileMetadataIndividualResult metadata(SharedFileMetadata sharedFileMetadata) {
        if (sharedFileMetadata != null) {
            return new GetFileMetadataIndividualResult().m11613e(Tag.METADATA, sharedFileMetadata);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final GetFileMetadataIndividualResult m11611c(Tag tag) {
        GetFileMetadataIndividualResult getFileMetadataIndividualResult = new GetFileMetadataIndividualResult();
        getFileMetadataIndividualResult.f17743a = tag;
        return getFileMetadataIndividualResult;
    }

    /* renamed from: d */
    public final GetFileMetadataIndividualResult m11612d(Tag tag, SharingFileAccessError sharingFileAccessError) {
        GetFileMetadataIndividualResult getFileMetadataIndividualResult = new GetFileMetadataIndividualResult();
        getFileMetadataIndividualResult.f17743a = tag;
        getFileMetadataIndividualResult.f17745c = sharingFileAccessError;
        return getFileMetadataIndividualResult;
    }

    /* renamed from: e */
    public final GetFileMetadataIndividualResult m11613e(Tag tag, SharedFileMetadata sharedFileMetadata) {
        GetFileMetadataIndividualResult getFileMetadataIndividualResult = new GetFileMetadataIndividualResult();
        getFileMetadataIndividualResult.f17743a = tag;
        getFileMetadataIndividualResult.f17744b = sharedFileMetadata;
        return getFileMetadataIndividualResult;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof GetFileMetadataIndividualResult)) {
            return false;
        }
        GetFileMetadataIndividualResult getFileMetadataIndividualResult = (GetFileMetadataIndividualResult) obj;
        Tag tag = this.f17743a;
        if (tag != getFileMetadataIndividualResult.f17743a) {
            return false;
        }
        int i = C2835a.f17746a[tag.ordinal()];
        if (i == 1) {
            SharedFileMetadata sharedFileMetadata = this.f17744b;
            SharedFileMetadata sharedFileMetadata2 = getFileMetadataIndividualResult.f17744b;
            return sharedFileMetadata == sharedFileMetadata2 || sharedFileMetadata.equals(sharedFileMetadata2);
        }
        if (i != 2) {
            return i == 3;
        }
        SharingFileAccessError sharingFileAccessError = this.f17745c;
        SharingFileAccessError sharingFileAccessError2 = getFileMetadataIndividualResult.f17745c;
        return sharingFileAccessError == sharingFileAccessError2 || sharingFileAccessError.equals(sharingFileAccessError2);
    }

    public SharingFileAccessError getAccessErrorValue() {
        if (this.f17743a == Tag.ACCESS_ERROR) {
            return this.f17745c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this.f17743a.name());
    }

    public SharedFileMetadata getMetadataValue() {
        if (this.f17743a == Tag.METADATA) {
            return this.f17744b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.METADATA, but was Tag." + this.f17743a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17743a, this.f17744b, this.f17745c});
    }

    public boolean isAccessError() {
        return this.f17743a == Tag.ACCESS_ERROR;
    }

    public boolean isMetadata() {
        return this.f17743a == Tag.METADATA;
    }

    public boolean isOther() {
        return this.f17743a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f17743a;
    }

    public String toString() {
        return C2836b.f17747b.serialize((C2836b) this, false);
    }

    public String toStringMultiline() {
        return C2836b.f17747b.serialize((C2836b) this, true);
    }
}
