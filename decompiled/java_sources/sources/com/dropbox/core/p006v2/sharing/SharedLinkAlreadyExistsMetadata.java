package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.SharedLinkMetadata;
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
public final class SharedLinkAlreadyExistsMetadata {
    public static final SharedLinkAlreadyExistsMetadata OTHER = new SharedLinkAlreadyExistsMetadata().m11919b(Tag.OTHER);

    /* renamed from: a */
    public Tag f17975a;

    /* renamed from: b */
    public SharedLinkMetadata f17976b;

    /* loaded from: classes4.dex */
    public enum Tag {
        METADATA,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.SharedLinkAlreadyExistsMetadata$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2951a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17977a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17977a = iArr;
            try {
                iArr[Tag.METADATA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17977a[Tag.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.SharedLinkAlreadyExistsMetadata$b */
    /* loaded from: classes4.dex */
    public static class C2952b extends UnionSerializer<SharedLinkAlreadyExistsMetadata> {

        /* renamed from: b */
        public static final C2952b f17978b = new C2952b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedLinkAlreadyExistsMetadata deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            SharedLinkAlreadyExistsMetadata sharedLinkAlreadyExistsMetadata;
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
                StoneSerializer.expectField("metadata", jsonParser);
                sharedLinkAlreadyExistsMetadata = SharedLinkAlreadyExistsMetadata.metadata(SharedLinkMetadata.C2955a.f17983b.deserialize(jsonParser));
            } else {
                sharedLinkAlreadyExistsMetadata = SharedLinkAlreadyExistsMetadata.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return sharedLinkAlreadyExistsMetadata;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedLinkAlreadyExistsMetadata sharedLinkAlreadyExistsMetadata, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2951a.f17977a[sharedLinkAlreadyExistsMetadata.tag().ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("metadata", jsonGenerator);
            jsonGenerator.writeFieldName("metadata");
            SharedLinkMetadata.C2955a.f17983b.serialize((SharedLinkMetadata.C2955a) sharedLinkAlreadyExistsMetadata.f17976b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static SharedLinkAlreadyExistsMetadata metadata(SharedLinkMetadata sharedLinkMetadata) {
        if (sharedLinkMetadata != null) {
            return new SharedLinkAlreadyExistsMetadata().m11920c(Tag.METADATA, sharedLinkMetadata);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final SharedLinkAlreadyExistsMetadata m11919b(Tag tag) {
        SharedLinkAlreadyExistsMetadata sharedLinkAlreadyExistsMetadata = new SharedLinkAlreadyExistsMetadata();
        sharedLinkAlreadyExistsMetadata.f17975a = tag;
        return sharedLinkAlreadyExistsMetadata;
    }

    /* renamed from: c */
    public final SharedLinkAlreadyExistsMetadata m11920c(Tag tag, SharedLinkMetadata sharedLinkMetadata) {
        SharedLinkAlreadyExistsMetadata sharedLinkAlreadyExistsMetadata = new SharedLinkAlreadyExistsMetadata();
        sharedLinkAlreadyExistsMetadata.f17975a = tag;
        sharedLinkAlreadyExistsMetadata.f17976b = sharedLinkMetadata;
        return sharedLinkAlreadyExistsMetadata;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof SharedLinkAlreadyExistsMetadata)) {
            return false;
        }
        SharedLinkAlreadyExistsMetadata sharedLinkAlreadyExistsMetadata = (SharedLinkAlreadyExistsMetadata) obj;
        Tag tag = this.f17975a;
        if (tag != sharedLinkAlreadyExistsMetadata.f17975a) {
            return false;
        }
        int i = C2951a.f17977a[tag.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        SharedLinkMetadata sharedLinkMetadata = this.f17976b;
        SharedLinkMetadata sharedLinkMetadata2 = sharedLinkAlreadyExistsMetadata.f17976b;
        return sharedLinkMetadata == sharedLinkMetadata2 || sharedLinkMetadata.equals(sharedLinkMetadata2);
    }

    public SharedLinkMetadata getMetadataValue() {
        if (this.f17975a == Tag.METADATA) {
            return this.f17976b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.METADATA, but was Tag." + this.f17975a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17975a, this.f17976b});
    }

    public boolean isMetadata() {
        return this.f17975a == Tag.METADATA;
    }

    public boolean isOther() {
        return this.f17975a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f17975a;
    }

    public String toString() {
        return C2952b.f17978b.serialize((C2952b) this, false);
    }

    public String toStringMultiline() {
        return C2952b.f17978b.serialize((C2952b) this, true);
    }
}
