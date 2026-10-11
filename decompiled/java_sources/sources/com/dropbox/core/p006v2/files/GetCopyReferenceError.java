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
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class GetCopyReferenceError {
    public static final GetCopyReferenceError OTHER = new GetCopyReferenceError().m10770b(Tag.OTHER);

    /* renamed from: a */
    public Tag f17160a;

    /* renamed from: b */
    public LookupError f17161b;

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.GetCopyReferenceError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2550a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17162a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17162a = iArr;
            try {
                iArr[Tag.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17162a[Tag.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.GetCopyReferenceError$b */
    /* loaded from: classes4.dex */
    public static class C2551b extends UnionSerializer<GetCopyReferenceError> {

        /* renamed from: b */
        public static final C2551b f17163b = new C2551b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetCopyReferenceError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            GetCopyReferenceError getCopyReferenceError;
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
                StoneSerializer.expectField("path", jsonParser);
                getCopyReferenceError = GetCopyReferenceError.path(LookupError.Serializer.INSTANCE.deserialize(jsonParser));
            } else {
                getCopyReferenceError = GetCopyReferenceError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return getCopyReferenceError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GetCopyReferenceError getCopyReferenceError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2550a.f17162a[getCopyReferenceError.tag().ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("path", jsonGenerator);
            jsonGenerator.writeFieldName("path");
            LookupError.Serializer.INSTANCE.serialize(getCopyReferenceError.f17161b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static GetCopyReferenceError path(LookupError lookupError) {
        if (lookupError != null) {
            return new GetCopyReferenceError().m10771c(Tag.PATH, lookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final GetCopyReferenceError m10770b(Tag tag) {
        GetCopyReferenceError getCopyReferenceError = new GetCopyReferenceError();
        getCopyReferenceError.f17160a = tag;
        return getCopyReferenceError;
    }

    /* renamed from: c */
    public final GetCopyReferenceError m10771c(Tag tag, LookupError lookupError) {
        GetCopyReferenceError getCopyReferenceError = new GetCopyReferenceError();
        getCopyReferenceError.f17160a = tag;
        getCopyReferenceError.f17161b = lookupError;
        return getCopyReferenceError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof GetCopyReferenceError)) {
            return false;
        }
        GetCopyReferenceError getCopyReferenceError = (GetCopyReferenceError) obj;
        Tag tag = this.f17160a;
        if (tag != getCopyReferenceError.f17160a) {
            return false;
        }
        int i = C2550a.f17162a[tag.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        LookupError lookupError = this.f17161b;
        LookupError lookupError2 = getCopyReferenceError.f17161b;
        return lookupError == lookupError2 || lookupError.equals(lookupError2);
    }

    public LookupError getPathValue() {
        if (this.f17160a == Tag.PATH) {
            return this.f17161b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f17160a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17160a, this.f17161b});
    }

    public boolean isOther() {
        return this.f17160a == Tag.OTHER;
    }

    public boolean isPath() {
        return this.f17160a == Tag.PATH;
    }

    public Tag tag() {
        return this.f17160a;
    }

    public String toString() {
        return C2551b.f17163b.serialize((C2551b) this, false);
    }

    public String toStringMultiline() {
        return C2551b.f17163b.serialize((C2551b) this, true);
    }
}
