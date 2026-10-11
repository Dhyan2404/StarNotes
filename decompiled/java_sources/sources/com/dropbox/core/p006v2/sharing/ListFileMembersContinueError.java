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
public final class ListFileMembersContinueError {
    public static final ListFileMembersContinueError INVALID_CURSOR = new ListFileMembersContinueError().m11700c(Tag.INVALID_CURSOR);
    public static final ListFileMembersContinueError OTHER = new ListFileMembersContinueError().m11700c(Tag.OTHER);

    /* renamed from: a */
    public Tag f17806a;

    /* renamed from: b */
    public SharingUserError f17807b;

    /* renamed from: c */
    public SharingFileAccessError f17808c;

    /* loaded from: classes4.dex */
    public enum Tag {
        USER_ERROR,
        ACCESS_ERROR,
        INVALID_CURSOR,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.ListFileMembersContinueError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2868a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17809a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17809a = iArr;
            try {
                iArr[Tag.USER_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17809a[Tag.ACCESS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17809a[Tag.INVALID_CURSOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17809a[Tag.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ListFileMembersContinueError$b */
    /* loaded from: classes4.dex */
    public static class C2869b extends UnionSerializer<ListFileMembersContinueError> {

        /* renamed from: b */
        public static final C2869b f17810b = new C2869b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListFileMembersContinueError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ListFileMembersContinueError listFileMembersContinueError;
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
                listFileMembersContinueError = ListFileMembersContinueError.userError(SharingUserError.C2963b.f17991b.deserialize(jsonParser));
            } else if ("access_error".equals(readTag)) {
                StoneSerializer.expectField("access_error", jsonParser);
                listFileMembersContinueError = ListFileMembersContinueError.accessError(SharingFileAccessError.C2961b.f17989b.deserialize(jsonParser));
            } else {
                listFileMembersContinueError = "invalid_cursor".equals(readTag) ? ListFileMembersContinueError.INVALID_CURSOR : ListFileMembersContinueError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return listFileMembersContinueError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListFileMembersContinueError listFileMembersContinueError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2868a.f17809a[listFileMembersContinueError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("user_error", jsonGenerator);
                jsonGenerator.writeFieldName("user_error");
                SharingUserError.C2963b.f17991b.serialize(listFileMembersContinueError.f17807b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                if (i != 3) {
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
                } else {
                    jsonGenerator.writeString("invalid_cursor");
                    return;
                }
            }
            jsonGenerator.writeStartObject();
            writeTag("access_error", jsonGenerator);
            jsonGenerator.writeFieldName("access_error");
            SharingFileAccessError.C2961b.f17989b.serialize(listFileMembersContinueError.f17808c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static ListFileMembersContinueError accessError(SharingFileAccessError sharingFileAccessError) {
        if (sharingFileAccessError != null) {
            return new ListFileMembersContinueError().m11701d(Tag.ACCESS_ERROR, sharingFileAccessError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static ListFileMembersContinueError userError(SharingUserError sharingUserError) {
        if (sharingUserError != null) {
            return new ListFileMembersContinueError().m11702e(Tag.USER_ERROR, sharingUserError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final ListFileMembersContinueError m11700c(Tag tag) {
        ListFileMembersContinueError listFileMembersContinueError = new ListFileMembersContinueError();
        listFileMembersContinueError.f17806a = tag;
        return listFileMembersContinueError;
    }

    /* renamed from: d */
    public final ListFileMembersContinueError m11701d(Tag tag, SharingFileAccessError sharingFileAccessError) {
        ListFileMembersContinueError listFileMembersContinueError = new ListFileMembersContinueError();
        listFileMembersContinueError.f17806a = tag;
        listFileMembersContinueError.f17808c = sharingFileAccessError;
        return listFileMembersContinueError;
    }

    /* renamed from: e */
    public final ListFileMembersContinueError m11702e(Tag tag, SharingUserError sharingUserError) {
        ListFileMembersContinueError listFileMembersContinueError = new ListFileMembersContinueError();
        listFileMembersContinueError.f17806a = tag;
        listFileMembersContinueError.f17807b = sharingUserError;
        return listFileMembersContinueError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ListFileMembersContinueError)) {
            return false;
        }
        ListFileMembersContinueError listFileMembersContinueError = (ListFileMembersContinueError) obj;
        Tag tag = this.f17806a;
        if (tag != listFileMembersContinueError.f17806a) {
            return false;
        }
        int i = C2868a.f17809a[tag.ordinal()];
        if (i == 1) {
            SharingUserError sharingUserError = this.f17807b;
            SharingUserError sharingUserError2 = listFileMembersContinueError.f17807b;
            return sharingUserError == sharingUserError2 || sharingUserError.equals(sharingUserError2);
        }
        if (i != 2) {
            return i == 3 || i == 4;
        }
        SharingFileAccessError sharingFileAccessError = this.f17808c;
        SharingFileAccessError sharingFileAccessError2 = listFileMembersContinueError.f17808c;
        return sharingFileAccessError == sharingFileAccessError2 || sharingFileAccessError.equals(sharingFileAccessError2);
    }

    public SharingFileAccessError getAccessErrorValue() {
        if (this.f17806a == Tag.ACCESS_ERROR) {
            return this.f17808c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this.f17806a.name());
    }

    public SharingUserError getUserErrorValue() {
        if (this.f17806a == Tag.USER_ERROR) {
            return this.f17807b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.USER_ERROR, but was Tag." + this.f17806a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17806a, this.f17807b, this.f17808c});
    }

    public boolean isAccessError() {
        return this.f17806a == Tag.ACCESS_ERROR;
    }

    public boolean isInvalidCursor() {
        return this.f17806a == Tag.INVALID_CURSOR;
    }

    public boolean isOther() {
        return this.f17806a == Tag.OTHER;
    }

    public boolean isUserError() {
        return this.f17806a == Tag.USER_ERROR;
    }

    public Tag tag() {
        return this.f17806a;
    }

    public String toString() {
        return C2869b.f17810b.serialize((C2869b) this, false);
    }

    public String toStringMultiline() {
        return C2869b.f17810b.serialize((C2869b) this, true);
    }
}
