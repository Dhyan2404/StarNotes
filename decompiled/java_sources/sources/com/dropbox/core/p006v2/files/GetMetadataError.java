package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.LookupError;
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
public final class GetMetadataError {

    /* renamed from: a */
    public Tag f17173a;

    /* renamed from: b */
    public LookupError f17174b;

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH
    }

    /* renamed from: com.dropbox.core.v2.files.GetMetadataError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2554a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17175a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17175a = iArr;
            try {
                iArr[Tag.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.GetMetadataError$b */
    /* loaded from: classes4.dex */
    public static class C2555b extends UnionSerializer<GetMetadataError> {

        /* renamed from: b */
        public static final C2555b f17176b = new C2555b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetMetadataError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
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
            if (!"path".equals(readTag)) {
                throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
            }
            StoneSerializer.expectField("path", jsonParser);
            GetMetadataError path = GetMetadataError.path(LookupError.Serializer.INSTANCE.deserialize(jsonParser));
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return path;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GetMetadataError getMetadataError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2554a.f17175a[getMetadataError.tag().ordinal()] != 1) {
                throw new IllegalArgumentException("Unrecognized tag: " + getMetadataError.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("path", jsonGenerator);
            jsonGenerator.writeFieldName("path");
            LookupError.Serializer.INSTANCE.serialize(getMetadataError.f17174b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static GetMetadataError path(LookupError lookupError) {
        if (lookupError != null) {
            return new GetMetadataError().m10781c(Tag.PATH, lookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final GetMetadataError m10780b(Tag tag) {
        GetMetadataError getMetadataError = new GetMetadataError();
        getMetadataError.f17173a = tag;
        return getMetadataError;
    }

    /* renamed from: c */
    public final GetMetadataError m10781c(Tag tag, LookupError lookupError) {
        GetMetadataError getMetadataError = new GetMetadataError();
        getMetadataError.f17173a = tag;
        getMetadataError.f17174b = lookupError;
        return getMetadataError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof GetMetadataError)) {
            return false;
        }
        GetMetadataError getMetadataError = (GetMetadataError) obj;
        Tag tag = this.f17173a;
        if (tag != getMetadataError.f17173a || C2554a.f17175a[tag.ordinal()] != 1) {
            return false;
        }
        LookupError lookupError = this.f17174b;
        LookupError lookupError2 = getMetadataError.f17174b;
        return lookupError == lookupError2 || lookupError.equals(lookupError2);
    }

    public LookupError getPathValue() {
        if (this.f17173a == Tag.PATH) {
            return this.f17174b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f17173a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17173a, this.f17174b});
    }

    public boolean isPath() {
        return this.f17173a == Tag.PATH;
    }

    public Tag tag() {
        return this.f17173a;
    }

    public String toString() {
        return C2555b.f17176b.serialize((C2555b) this, false);
    }

    public String toStringMultiline() {
        return C2555b.f17176b.serialize((C2555b) this, true);
    }
}
