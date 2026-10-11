package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
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
public final class GetSharedLinksError {
    public static final GetSharedLinksError OTHER = new GetSharedLinksError().m11626b(Tag.OTHER);

    /* renamed from: a */
    public Tag f17758a;

    /* renamed from: b */
    public String f17759b;

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.GetSharedLinksError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2840a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17760a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17760a = iArr;
            try {
                iArr[Tag.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17760a[Tag.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.GetSharedLinksError$b */
    /* loaded from: classes4.dex */
    public static class C2841b extends UnionSerializer<GetSharedLinksError> {

        /* renamed from: b */
        public static final C2841b f17761b = new C2841b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetSharedLinksError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            GetSharedLinksError getSharedLinksError;
            String str;
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
            if ("path".equals(readTag)) {
                if (jsonParser.getCurrentToken() != JsonToken.END_OBJECT) {
                    StoneSerializer.expectField("path", jsonParser);
                    str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    str = null;
                }
                getSharedLinksError = str == null ? GetSharedLinksError.path() : GetSharedLinksError.path(str);
            } else {
                getSharedLinksError = GetSharedLinksError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return getSharedLinksError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GetSharedLinksError getSharedLinksError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2840a.f17760a[getSharedLinksError.tag().ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("path", jsonGenerator);
            jsonGenerator.writeFieldName("path");
            StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) getSharedLinksError.f17759b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static GetSharedLinksError path(String str) {
        return new GetSharedLinksError().m11627c(Tag.PATH, str);
    }

    /* renamed from: b */
    public final GetSharedLinksError m11626b(Tag tag) {
        GetSharedLinksError getSharedLinksError = new GetSharedLinksError();
        getSharedLinksError.f17758a = tag;
        return getSharedLinksError;
    }

    /* renamed from: c */
    public final GetSharedLinksError m11627c(Tag tag, String str) {
        GetSharedLinksError getSharedLinksError = new GetSharedLinksError();
        getSharedLinksError.f17758a = tag;
        getSharedLinksError.f17759b = str;
        return getSharedLinksError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof GetSharedLinksError)) {
            return false;
        }
        GetSharedLinksError getSharedLinksError = (GetSharedLinksError) obj;
        Tag tag = this.f17758a;
        if (tag != getSharedLinksError.f17758a) {
            return false;
        }
        int i = C2840a.f17760a[tag.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        String str = this.f17759b;
        String str2 = getSharedLinksError.f17759b;
        if (str != str2) {
            return str != null && str.equals(str2);
        }
        return true;
    }

    public String getPathValue() {
        if (this.f17758a == Tag.PATH) {
            return this.f17759b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f17758a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17758a, this.f17759b});
    }

    public boolean isOther() {
        return this.f17758a == Tag.OTHER;
    }

    public boolean isPath() {
        return this.f17758a == Tag.PATH;
    }

    public Tag tag() {
        return this.f17758a;
    }

    public String toString() {
        return C2841b.f17761b.serialize((C2841b) this, false);
    }

    public String toStringMultiline() {
        return C2841b.f17761b.serialize((C2841b) this, true);
    }

    public static GetSharedLinksError path() {
        return path(null);
    }
}
