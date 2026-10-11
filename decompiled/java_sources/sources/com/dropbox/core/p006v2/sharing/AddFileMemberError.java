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
public final class AddFileMemberError {

    /* renamed from: a */
    public Tag f17664a;

    /* renamed from: b */
    public SharingUserError f17665b;

    /* renamed from: c */
    public SharingFileAccessError f17666c;
    public static final AddFileMemberError RATE_LIMIT = new AddFileMemberError().m11454c(Tag.RATE_LIMIT);
    public static final AddFileMemberError INVALID_COMMENT = new AddFileMemberError().m11454c(Tag.INVALID_COMMENT);
    public static final AddFileMemberError OTHER = new AddFileMemberError().m11454c(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        USER_ERROR,
        ACCESS_ERROR,
        RATE_LIMIT,
        INVALID_COMMENT,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.AddFileMemberError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2798a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17667a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17667a = iArr;
            try {
                iArr[Tag.USER_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17667a[Tag.ACCESS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17667a[Tag.RATE_LIMIT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17667a[Tag.INVALID_COMMENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17667a[Tag.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.AddFileMemberError$b */
    /* loaded from: classes4.dex */
    public static class C2799b extends UnionSerializer<AddFileMemberError> {

        /* renamed from: b */
        public static final C2799b f17668b = new C2799b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AddFileMemberError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            AddFileMemberError addFileMemberError;
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
                addFileMemberError = AddFileMemberError.userError(SharingUserError.C2963b.f17991b.deserialize(jsonParser));
            } else if ("access_error".equals(readTag)) {
                StoneSerializer.expectField("access_error", jsonParser);
                addFileMemberError = AddFileMemberError.accessError(SharingFileAccessError.C2961b.f17989b.deserialize(jsonParser));
            } else {
                addFileMemberError = "rate_limit".equals(readTag) ? AddFileMemberError.RATE_LIMIT : "invalid_comment".equals(readTag) ? AddFileMemberError.INVALID_COMMENT : AddFileMemberError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return addFileMemberError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AddFileMemberError addFileMemberError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2798a.f17667a[addFileMemberError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("user_error", jsonGenerator);
                jsonGenerator.writeFieldName("user_error");
                SharingUserError.C2963b.f17991b.serialize(addFileMemberError.f17665b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                SharingFileAccessError.C2961b.f17989b.serialize(addFileMemberError.f17666c, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("rate_limit");
            } else if (i != 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("invalid_comment");
            }
        }
    }

    public static AddFileMemberError accessError(SharingFileAccessError sharingFileAccessError) {
        if (sharingFileAccessError != null) {
            return new AddFileMemberError().m11455d(Tag.ACCESS_ERROR, sharingFileAccessError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static AddFileMemberError userError(SharingUserError sharingUserError) {
        if (sharingUserError != null) {
            return new AddFileMemberError().m11456e(Tag.USER_ERROR, sharingUserError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final AddFileMemberError m11454c(Tag tag) {
        AddFileMemberError addFileMemberError = new AddFileMemberError();
        addFileMemberError.f17664a = tag;
        return addFileMemberError;
    }

    /* renamed from: d */
    public final AddFileMemberError m11455d(Tag tag, SharingFileAccessError sharingFileAccessError) {
        AddFileMemberError addFileMemberError = new AddFileMemberError();
        addFileMemberError.f17664a = tag;
        addFileMemberError.f17666c = sharingFileAccessError;
        return addFileMemberError;
    }

    /* renamed from: e */
    public final AddFileMemberError m11456e(Tag tag, SharingUserError sharingUserError) {
        AddFileMemberError addFileMemberError = new AddFileMemberError();
        addFileMemberError.f17664a = tag;
        addFileMemberError.f17665b = sharingUserError;
        return addFileMemberError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof AddFileMemberError)) {
            return false;
        }
        AddFileMemberError addFileMemberError = (AddFileMemberError) obj;
        Tag tag = this.f17664a;
        if (tag != addFileMemberError.f17664a) {
            return false;
        }
        int i = C2798a.f17667a[tag.ordinal()];
        if (i == 1) {
            SharingUserError sharingUserError = this.f17665b;
            SharingUserError sharingUserError2 = addFileMemberError.f17665b;
            return sharingUserError == sharingUserError2 || sharingUserError.equals(sharingUserError2);
        }
        if (i != 2) {
            return i == 3 || i == 4 || i == 5;
        }
        SharingFileAccessError sharingFileAccessError = this.f17666c;
        SharingFileAccessError sharingFileAccessError2 = addFileMemberError.f17666c;
        return sharingFileAccessError == sharingFileAccessError2 || sharingFileAccessError.equals(sharingFileAccessError2);
    }

    public SharingFileAccessError getAccessErrorValue() {
        if (this.f17664a == Tag.ACCESS_ERROR) {
            return this.f17666c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this.f17664a.name());
    }

    public SharingUserError getUserErrorValue() {
        if (this.f17664a == Tag.USER_ERROR) {
            return this.f17665b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.USER_ERROR, but was Tag." + this.f17664a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17664a, this.f17665b, this.f17666c});
    }

    public boolean isAccessError() {
        return this.f17664a == Tag.ACCESS_ERROR;
    }

    public boolean isInvalidComment() {
        return this.f17664a == Tag.INVALID_COMMENT;
    }

    public boolean isOther() {
        return this.f17664a == Tag.OTHER;
    }

    public boolean isRateLimit() {
        return this.f17664a == Tag.RATE_LIMIT;
    }

    public boolean isUserError() {
        return this.f17664a == Tag.USER_ERROR;
    }

    public Tag tag() {
        return this.f17664a;
    }

    public String toString() {
        return C2799b.f17668b.serialize((C2799b) this, false);
    }

    public String toStringMultiline() {
        return C2799b.f17668b.serialize((C2799b) this, true);
    }
}
