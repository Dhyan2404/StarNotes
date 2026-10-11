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
public final class GetTemporaryLinkError {

    /* renamed from: a */
    public Tag f17180a;

    /* renamed from: b */
    public LookupError f17181b;
    public static final GetTemporaryLinkError EMAIL_NOT_VERIFIED = new GetTemporaryLinkError().m10785b(Tag.EMAIL_NOT_VERIFIED);
    public static final GetTemporaryLinkError UNSUPPORTED_FILE = new GetTemporaryLinkError().m10785b(Tag.UNSUPPORTED_FILE);
    public static final GetTemporaryLinkError OTHER = new GetTemporaryLinkError().m10785b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH,
        EMAIL_NOT_VERIFIED,
        UNSUPPORTED_FILE,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.GetTemporaryLinkError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2556a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17182a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17182a = iArr;
            try {
                iArr[Tag.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17182a[Tag.EMAIL_NOT_VERIFIED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17182a[Tag.UNSUPPORTED_FILE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17182a[Tag.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.GetTemporaryLinkError$b */
    /* loaded from: classes4.dex */
    public static class C2557b extends UnionSerializer<GetTemporaryLinkError> {

        /* renamed from: b */
        public static final C2557b f17183b = new C2557b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetTemporaryLinkError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            GetTemporaryLinkError getTemporaryLinkError;
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
                getTemporaryLinkError = GetTemporaryLinkError.path(LookupError.Serializer.INSTANCE.deserialize(jsonParser));
            } else {
                getTemporaryLinkError = "email_not_verified".equals(readTag) ? GetTemporaryLinkError.EMAIL_NOT_VERIFIED : "unsupported_file".equals(readTag) ? GetTemporaryLinkError.UNSUPPORTED_FILE : GetTemporaryLinkError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return getTemporaryLinkError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GetTemporaryLinkError getTemporaryLinkError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2556a.f17182a[getTemporaryLinkError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                LookupError.Serializer.INSTANCE.serialize(getTemporaryLinkError.f17181b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("email_not_verified");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("unsupported_file");
            }
        }
    }

    public static GetTemporaryLinkError path(LookupError lookupError) {
        if (lookupError != null) {
            return new GetTemporaryLinkError().m10786c(Tag.PATH, lookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final GetTemporaryLinkError m10785b(Tag tag) {
        GetTemporaryLinkError getTemporaryLinkError = new GetTemporaryLinkError();
        getTemporaryLinkError.f17180a = tag;
        return getTemporaryLinkError;
    }

    /* renamed from: c */
    public final GetTemporaryLinkError m10786c(Tag tag, LookupError lookupError) {
        GetTemporaryLinkError getTemporaryLinkError = new GetTemporaryLinkError();
        getTemporaryLinkError.f17180a = tag;
        getTemporaryLinkError.f17181b = lookupError;
        return getTemporaryLinkError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof GetTemporaryLinkError)) {
            return false;
        }
        GetTemporaryLinkError getTemporaryLinkError = (GetTemporaryLinkError) obj;
        Tag tag = this.f17180a;
        if (tag != getTemporaryLinkError.f17180a) {
            return false;
        }
        int i = C2556a.f17182a[tag.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4;
        }
        LookupError lookupError = this.f17181b;
        LookupError lookupError2 = getTemporaryLinkError.f17181b;
        return lookupError == lookupError2 || lookupError.equals(lookupError2);
    }

    public LookupError getPathValue() {
        if (this.f17180a == Tag.PATH) {
            return this.f17181b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f17180a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17180a, this.f17181b});
    }

    public boolean isEmailNotVerified() {
        return this.f17180a == Tag.EMAIL_NOT_VERIFIED;
    }

    public boolean isOther() {
        return this.f17180a == Tag.OTHER;
    }

    public boolean isPath() {
        return this.f17180a == Tag.PATH;
    }

    public boolean isUnsupportedFile() {
        return this.f17180a == Tag.UNSUPPORTED_FILE;
    }

    public Tag tag() {
        return this.f17180a;
    }

    public String toString() {
        return C2557b.f17183b.serialize((C2557b) this, false);
    }

    public String toStringMultiline() {
        return C2557b.f17183b.serialize((C2557b) this, true);
    }
}
