package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.SharingFileAccessError;
import com.dropbox.core.p006v2.sharing.SharingUserError;
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
public final class UnshareFileError {
    public static final UnshareFileError OTHER = new UnshareFileError().m11949c(Tag.OTHER);

    /* renamed from: a */
    public Tag f18001a;

    /* renamed from: b */
    public SharingUserError f18002b;

    /* renamed from: c */
    public SharingFileAccessError f18003c;

    /* loaded from: classes4.dex */
    public enum Tag {
        USER_ERROR,
        ACCESS_ERROR,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.UnshareFileError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2969a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18004a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18004a = iArr;
            try {
                iArr[Tag.USER_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18004a[Tag.ACCESS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18004a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.UnshareFileError$b */
    /* loaded from: classes4.dex */
    public static class C2970b extends UnionSerializer<UnshareFileError> {

        /* renamed from: b */
        public static final C2970b f18005b = new C2970b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UnshareFileError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            UnshareFileError unshareFileError;
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
            if ("user_error".equals(readTag)) {
                StoneSerializer.expectField("user_error", jsonParser);
                unshareFileError = UnshareFileError.userError(SharingUserError.C2963b.f17991b.deserialize(jsonParser));
            } else if ("access_error".equals(readTag)) {
                StoneSerializer.expectField("access_error", jsonParser);
                unshareFileError = UnshareFileError.accessError(SharingFileAccessError.C2961b.f17989b.deserialize(jsonParser));
            } else {
                unshareFileError = UnshareFileError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return unshareFileError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UnshareFileError unshareFileError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2969a.f18004a[unshareFileError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("user_error", jsonGenerator);
                jsonGenerator.writeFieldName("user_error");
                SharingUserError.C2963b.f17991b.serialize(unshareFileError.f18002b, jsonGenerator);
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
            SharingFileAccessError.C2961b.f17989b.serialize(unshareFileError.f18003c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static UnshareFileError accessError(SharingFileAccessError sharingFileAccessError) {
        if (sharingFileAccessError != null) {
            return new UnshareFileError().m11950d(Tag.ACCESS_ERROR, sharingFileAccessError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static UnshareFileError userError(SharingUserError sharingUserError) {
        if (sharingUserError != null) {
            return new UnshareFileError().m11951e(Tag.USER_ERROR, sharingUserError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final UnshareFileError m11949c(Tag tag) {
        UnshareFileError unshareFileError = new UnshareFileError();
        unshareFileError.f18001a = tag;
        return unshareFileError;
    }

    /* renamed from: d */
    public final UnshareFileError m11950d(Tag tag, SharingFileAccessError sharingFileAccessError) {
        UnshareFileError unshareFileError = new UnshareFileError();
        unshareFileError.f18001a = tag;
        unshareFileError.f18003c = sharingFileAccessError;
        return unshareFileError;
    }

    /* renamed from: e */
    public final UnshareFileError m11951e(Tag tag, SharingUserError sharingUserError) {
        UnshareFileError unshareFileError = new UnshareFileError();
        unshareFileError.f18001a = tag;
        unshareFileError.f18002b = sharingUserError;
        return unshareFileError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UnshareFileError)) {
            return false;
        }
        UnshareFileError unshareFileError = (UnshareFileError) obj;
        Tag tag = this.f18001a;
        if (tag != unshareFileError.f18001a) {
            return false;
        }
        int i = C2969a.f18004a[tag.ordinal()];
        if (i == 1) {
            SharingUserError sharingUserError = this.f18002b;
            SharingUserError sharingUserError2 = unshareFileError.f18002b;
            return sharingUserError == sharingUserError2 || sharingUserError.equals(sharingUserError2);
        }
        if (i != 2) {
            return i == 3;
        }
        SharingFileAccessError sharingFileAccessError = this.f18003c;
        SharingFileAccessError sharingFileAccessError2 = unshareFileError.f18003c;
        return sharingFileAccessError == sharingFileAccessError2 || sharingFileAccessError.equals(sharingFileAccessError2);
    }

    public SharingFileAccessError getAccessErrorValue() {
        if (this.f18001a == Tag.ACCESS_ERROR) {
            return this.f18003c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this.f18001a.name());
    }

    public SharingUserError getUserErrorValue() {
        if (this.f18001a == Tag.USER_ERROR) {
            return this.f18002b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.USER_ERROR, but was Tag." + this.f18001a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18001a, this.f18002b, this.f18003c});
    }

    public boolean isAccessError() {
        return this.f18001a == Tag.ACCESS_ERROR;
    }

    public boolean isOther() {
        return this.f18001a == Tag.OTHER;
    }

    public boolean isUserError() {
        return this.f18001a == Tag.USER_ERROR;
    }

    public Tag tag() {
        return this.f18001a;
    }

    public String toString() {
        return C2970b.f18005b.serialize((C2970b) this, false);
    }

    public String toStringMultiline() {
        return C2970b.f18005b.serialize((C2970b) this, true);
    }
}
