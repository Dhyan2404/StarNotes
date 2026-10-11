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
public final class ListFileMembersError {
    public static final ListFileMembersError OTHER = new ListFileMembersError().m11709c(Tag.OTHER);

    /* renamed from: a */
    public Tag f17812a;

    /* renamed from: b */
    public SharingUserError f17813b;

    /* renamed from: c */
    public SharingFileAccessError f17814c;

    /* loaded from: classes4.dex */
    public enum Tag {
        USER_ERROR,
        ACCESS_ERROR,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.ListFileMembersError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2871a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17815a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17815a = iArr;
            try {
                iArr[Tag.USER_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17815a[Tag.ACCESS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17815a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ListFileMembersError$b */
    /* loaded from: classes4.dex */
    public static class C2872b extends UnionSerializer<ListFileMembersError> {

        /* renamed from: b */
        public static final C2872b f17816b = new C2872b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListFileMembersError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ListFileMembersError listFileMembersError;
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
                listFileMembersError = ListFileMembersError.userError(SharingUserError.C2963b.f17991b.deserialize(jsonParser));
            } else if ("access_error".equals(readTag)) {
                StoneSerializer.expectField("access_error", jsonParser);
                listFileMembersError = ListFileMembersError.accessError(SharingFileAccessError.C2961b.f17989b.deserialize(jsonParser));
            } else {
                listFileMembersError = ListFileMembersError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return listFileMembersError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListFileMembersError listFileMembersError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2871a.f17815a[listFileMembersError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("user_error", jsonGenerator);
                jsonGenerator.writeFieldName("user_error");
                SharingUserError.C2963b.f17991b.serialize(listFileMembersError.f17813b, jsonGenerator);
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
            SharingFileAccessError.C2961b.f17989b.serialize(listFileMembersError.f17814c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static ListFileMembersError accessError(SharingFileAccessError sharingFileAccessError) {
        if (sharingFileAccessError != null) {
            return new ListFileMembersError().m11710d(Tag.ACCESS_ERROR, sharingFileAccessError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static ListFileMembersError userError(SharingUserError sharingUserError) {
        if (sharingUserError != null) {
            return new ListFileMembersError().m11711e(Tag.USER_ERROR, sharingUserError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final ListFileMembersError m11709c(Tag tag) {
        ListFileMembersError listFileMembersError = new ListFileMembersError();
        listFileMembersError.f17812a = tag;
        return listFileMembersError;
    }

    /* renamed from: d */
    public final ListFileMembersError m11710d(Tag tag, SharingFileAccessError sharingFileAccessError) {
        ListFileMembersError listFileMembersError = new ListFileMembersError();
        listFileMembersError.f17812a = tag;
        listFileMembersError.f17814c = sharingFileAccessError;
        return listFileMembersError;
    }

    /* renamed from: e */
    public final ListFileMembersError m11711e(Tag tag, SharingUserError sharingUserError) {
        ListFileMembersError listFileMembersError = new ListFileMembersError();
        listFileMembersError.f17812a = tag;
        listFileMembersError.f17813b = sharingUserError;
        return listFileMembersError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ListFileMembersError)) {
            return false;
        }
        ListFileMembersError listFileMembersError = (ListFileMembersError) obj;
        Tag tag = this.f17812a;
        if (tag != listFileMembersError.f17812a) {
            return false;
        }
        int i = C2871a.f17815a[tag.ordinal()];
        if (i == 1) {
            SharingUserError sharingUserError = this.f17813b;
            SharingUserError sharingUserError2 = listFileMembersError.f17813b;
            return sharingUserError == sharingUserError2 || sharingUserError.equals(sharingUserError2);
        }
        if (i != 2) {
            return i == 3;
        }
        SharingFileAccessError sharingFileAccessError = this.f17814c;
        SharingFileAccessError sharingFileAccessError2 = listFileMembersError.f17814c;
        return sharingFileAccessError == sharingFileAccessError2 || sharingFileAccessError.equals(sharingFileAccessError2);
    }

    public SharingFileAccessError getAccessErrorValue() {
        if (this.f17812a == Tag.ACCESS_ERROR) {
            return this.f17814c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this.f17812a.name());
    }

    public SharingUserError getUserErrorValue() {
        if (this.f17812a == Tag.USER_ERROR) {
            return this.f17813b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.USER_ERROR, but was Tag." + this.f17812a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17812a, this.f17813b, this.f17814c});
    }

    public boolean isAccessError() {
        return this.f17812a == Tag.ACCESS_ERROR;
    }

    public boolean isOther() {
        return this.f17812a == Tag.OTHER;
    }

    public boolean isUserError() {
        return this.f17812a == Tag.USER_ERROR;
    }

    public Tag tag() {
        return this.f17812a;
    }

    public String toString() {
        return C2872b.f17816b.serialize((C2872b) this, false);
    }

    public String toStringMultiline() {
        return C2872b.f17816b.serialize((C2872b) this, true);
    }
}
