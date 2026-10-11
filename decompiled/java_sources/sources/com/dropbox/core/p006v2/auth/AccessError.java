package com.dropbox.core.p006v2.auth;

import com.dropbox.core.p006v2.auth.InvalidAccountTypeError;
import com.dropbox.core.p006v2.auth.PaperAccessError;
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
public final class AccessError {
    public static final AccessError OTHER = new AccessError().m10244c(Tag.OTHER);

    /* renamed from: a */
    public Tag f16804a;

    /* renamed from: b */
    public InvalidAccountTypeError f16805b;

    /* renamed from: c */
    public PaperAccessError f16806c;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<AccessError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public AccessError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            AccessError accessError;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag != null) {
                if ("invalid_account_type".equals(readTag)) {
                    StoneSerializer.expectField("invalid_account_type", jsonParser);
                    accessError = AccessError.invalidAccountType(InvalidAccountTypeError.Serializer.INSTANCE.deserialize(jsonParser));
                } else if ("paper_access_denied".equals(readTag)) {
                    StoneSerializer.expectField("paper_access_denied", jsonParser);
                    accessError = AccessError.paperAccessDenied(PaperAccessError.Serializer.INSTANCE.deserialize(jsonParser));
                } else {
                    accessError = AccessError.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return accessError;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(AccessError accessError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2374a.f16807a[accessError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("invalid_account_type", jsonGenerator);
                jsonGenerator.writeFieldName("invalid_account_type");
                InvalidAccountTypeError.Serializer.INSTANCE.serialize(accessError.f16805b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("paper_access_denied", jsonGenerator);
            jsonGenerator.writeFieldName("paper_access_denied");
            PaperAccessError.Serializer.INSTANCE.serialize(accessError.f16806c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* loaded from: classes4.dex */
    public enum Tag {
        INVALID_ACCOUNT_TYPE,
        PAPER_ACCESS_DENIED,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.auth.AccessError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2374a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16807a;

        static {
            int[] iArr = new int[Tag.values().length];
            f16807a = iArr;
            try {
                iArr[Tag.INVALID_ACCOUNT_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16807a[Tag.PAPER_ACCESS_DENIED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16807a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static AccessError invalidAccountType(InvalidAccountTypeError invalidAccountTypeError) {
        if (invalidAccountTypeError != null) {
            return new AccessError().m10245d(Tag.INVALID_ACCOUNT_TYPE, invalidAccountTypeError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static AccessError paperAccessDenied(PaperAccessError paperAccessError) {
        if (paperAccessError != null) {
            return new AccessError().m10246e(Tag.PAPER_ACCESS_DENIED, paperAccessError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final AccessError m10244c(Tag tag) {
        AccessError accessError = new AccessError();
        accessError.f16804a = tag;
        return accessError;
    }

    /* renamed from: d */
    public final AccessError m10245d(Tag tag, InvalidAccountTypeError invalidAccountTypeError) {
        AccessError accessError = new AccessError();
        accessError.f16804a = tag;
        accessError.f16805b = invalidAccountTypeError;
        return accessError;
    }

    /* renamed from: e */
    public final AccessError m10246e(Tag tag, PaperAccessError paperAccessError) {
        AccessError accessError = new AccessError();
        accessError.f16804a = tag;
        accessError.f16806c = paperAccessError;
        return accessError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof AccessError)) {
            return false;
        }
        AccessError accessError = (AccessError) obj;
        Tag tag = this.f16804a;
        if (tag != accessError.f16804a) {
            return false;
        }
        int i = C2374a.f16807a[tag.ordinal()];
        if (i == 1) {
            InvalidAccountTypeError invalidAccountTypeError = this.f16805b;
            InvalidAccountTypeError invalidAccountTypeError2 = accessError.f16805b;
            return invalidAccountTypeError == invalidAccountTypeError2 || invalidAccountTypeError.equals(invalidAccountTypeError2);
        }
        if (i != 2) {
            return i == 3;
        }
        PaperAccessError paperAccessError = this.f16806c;
        PaperAccessError paperAccessError2 = accessError.f16806c;
        return paperAccessError == paperAccessError2 || paperAccessError.equals(paperAccessError2);
    }

    public InvalidAccountTypeError getInvalidAccountTypeValue() {
        if (this.f16804a == Tag.INVALID_ACCOUNT_TYPE) {
            return this.f16805b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.INVALID_ACCOUNT_TYPE, but was Tag." + this.f16804a.name());
    }

    public PaperAccessError getPaperAccessDeniedValue() {
        if (this.f16804a == Tag.PAPER_ACCESS_DENIED) {
            return this.f16806c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PAPER_ACCESS_DENIED, but was Tag." + this.f16804a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f16804a, this.f16805b, this.f16806c});
    }

    public boolean isInvalidAccountType() {
        return this.f16804a == Tag.INVALID_ACCOUNT_TYPE;
    }

    public boolean isOther() {
        return this.f16804a == Tag.OTHER;
    }

    public boolean isPaperAccessDenied() {
        return this.f16804a == Tag.PAPER_ACCESS_DENIED;
    }

    public Tag tag() {
        return this.f16804a;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
