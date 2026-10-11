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
public final class GetFileMetadataError {
    public static final GetFileMetadataError OTHER = new GetFileMetadataError().m11604c(Tag.OTHER);

    /* renamed from: a */
    public Tag f17738a;

    /* renamed from: b */
    public SharingUserError f17739b;

    /* renamed from: c */
    public SharingFileAccessError f17740c;

    /* loaded from: classes4.dex */
    public enum Tag {
        USER_ERROR,
        ACCESS_ERROR,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.GetFileMetadataError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2833a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17741a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17741a = iArr;
            try {
                iArr[Tag.USER_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17741a[Tag.ACCESS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17741a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.GetFileMetadataError$b */
    /* loaded from: classes4.dex */
    public static class C2834b extends UnionSerializer<GetFileMetadataError> {

        /* renamed from: b */
        public static final C2834b f17742b = new C2834b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetFileMetadataError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            GetFileMetadataError getFileMetadataError;
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
                getFileMetadataError = GetFileMetadataError.userError(SharingUserError.C2963b.f17991b.deserialize(jsonParser));
            } else if ("access_error".equals(readTag)) {
                StoneSerializer.expectField("access_error", jsonParser);
                getFileMetadataError = GetFileMetadataError.accessError(SharingFileAccessError.C2961b.f17989b.deserialize(jsonParser));
            } else {
                getFileMetadataError = GetFileMetadataError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return getFileMetadataError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GetFileMetadataError getFileMetadataError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2833a.f17741a[getFileMetadataError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("user_error", jsonGenerator);
                jsonGenerator.writeFieldName("user_error");
                SharingUserError.C2963b.f17991b.serialize(getFileMetadataError.f17739b, jsonGenerator);
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
            SharingFileAccessError.C2961b.f17989b.serialize(getFileMetadataError.f17740c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static GetFileMetadataError accessError(SharingFileAccessError sharingFileAccessError) {
        if (sharingFileAccessError != null) {
            return new GetFileMetadataError().m11605d(Tag.ACCESS_ERROR, sharingFileAccessError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static GetFileMetadataError userError(SharingUserError sharingUserError) {
        if (sharingUserError != null) {
            return new GetFileMetadataError().m11606e(Tag.USER_ERROR, sharingUserError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final GetFileMetadataError m11604c(Tag tag) {
        GetFileMetadataError getFileMetadataError = new GetFileMetadataError();
        getFileMetadataError.f17738a = tag;
        return getFileMetadataError;
    }

    /* renamed from: d */
    public final GetFileMetadataError m11605d(Tag tag, SharingFileAccessError sharingFileAccessError) {
        GetFileMetadataError getFileMetadataError = new GetFileMetadataError();
        getFileMetadataError.f17738a = tag;
        getFileMetadataError.f17740c = sharingFileAccessError;
        return getFileMetadataError;
    }

    /* renamed from: e */
    public final GetFileMetadataError m11606e(Tag tag, SharingUserError sharingUserError) {
        GetFileMetadataError getFileMetadataError = new GetFileMetadataError();
        getFileMetadataError.f17738a = tag;
        getFileMetadataError.f17739b = sharingUserError;
        return getFileMetadataError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof GetFileMetadataError)) {
            return false;
        }
        GetFileMetadataError getFileMetadataError = (GetFileMetadataError) obj;
        Tag tag = this.f17738a;
        if (tag != getFileMetadataError.f17738a) {
            return false;
        }
        int i = C2833a.f17741a[tag.ordinal()];
        if (i == 1) {
            SharingUserError sharingUserError = this.f17739b;
            SharingUserError sharingUserError2 = getFileMetadataError.f17739b;
            return sharingUserError == sharingUserError2 || sharingUserError.equals(sharingUserError2);
        }
        if (i != 2) {
            return i == 3;
        }
        SharingFileAccessError sharingFileAccessError = this.f17740c;
        SharingFileAccessError sharingFileAccessError2 = getFileMetadataError.f17740c;
        return sharingFileAccessError == sharingFileAccessError2 || sharingFileAccessError.equals(sharingFileAccessError2);
    }

    public SharingFileAccessError getAccessErrorValue() {
        if (this.f17738a == Tag.ACCESS_ERROR) {
            return this.f17740c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this.f17738a.name());
    }

    public SharingUserError getUserErrorValue() {
        if (this.f17738a == Tag.USER_ERROR) {
            return this.f17739b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.USER_ERROR, but was Tag." + this.f17738a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17738a, this.f17739b, this.f17740c});
    }

    public boolean isAccessError() {
        return this.f17738a == Tag.ACCESS_ERROR;
    }

    public boolean isOther() {
        return this.f17738a == Tag.OTHER;
    }

    public boolean isUserError() {
        return this.f17738a == Tag.USER_ERROR;
    }

    public Tag tag() {
        return this.f17738a;
    }

    public String toString() {
        return C2834b.f17742b.serialize((C2834b) this, false);
    }

    public String toStringMultiline() {
        return C2834b.f17742b.serialize((C2834b) this, true);
    }
}
