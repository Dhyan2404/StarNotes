package com.dropbox.core.p006v2.sharing;

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
public final class ListFilesContinueError {
    public static final ListFilesContinueError INVALID_CURSOR = new ListFilesContinueError().m11728b(Tag.INVALID_CURSOR);
    public static final ListFilesContinueError OTHER = new ListFilesContinueError().m11728b(Tag.OTHER);

    /* renamed from: a */
    public Tag f17825a;

    /* renamed from: b */
    public SharingUserError f17826b;

    /* loaded from: classes4.dex */
    public enum Tag {
        USER_ERROR,
        INVALID_CURSOR,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.ListFilesContinueError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2876a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17827a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17827a = iArr;
            try {
                iArr[Tag.USER_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17827a[Tag.INVALID_CURSOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17827a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ListFilesContinueError$b */
    /* loaded from: classes4.dex */
    public static class C2877b extends UnionSerializer<ListFilesContinueError> {

        /* renamed from: b */
        public static final C2877b f17828b = new C2877b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListFilesContinueError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ListFilesContinueError listFilesContinueError;
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
                listFilesContinueError = ListFilesContinueError.userError(SharingUserError.C2963b.f17991b.deserialize(jsonParser));
            } else {
                listFilesContinueError = "invalid_cursor".equals(readTag) ? ListFilesContinueError.INVALID_CURSOR : ListFilesContinueError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return listFilesContinueError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListFilesContinueError listFilesContinueError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2876a.f17827a[listFilesContinueError.tag().ordinal()];
            if (i != 1) {
                if (i != 2) {
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
                } else {
                    jsonGenerator.writeString("invalid_cursor");
                    return;
                }
            }
            jsonGenerator.writeStartObject();
            writeTag("user_error", jsonGenerator);
            jsonGenerator.writeFieldName("user_error");
            SharingUserError.C2963b.f17991b.serialize(listFilesContinueError.f17826b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static ListFilesContinueError userError(SharingUserError sharingUserError) {
        if (sharingUserError != null) {
            return new ListFilesContinueError().m11729c(Tag.USER_ERROR, sharingUserError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final ListFilesContinueError m11728b(Tag tag) {
        ListFilesContinueError listFilesContinueError = new ListFilesContinueError();
        listFilesContinueError.f17825a = tag;
        return listFilesContinueError;
    }

    /* renamed from: c */
    public final ListFilesContinueError m11729c(Tag tag, SharingUserError sharingUserError) {
        ListFilesContinueError listFilesContinueError = new ListFilesContinueError();
        listFilesContinueError.f17825a = tag;
        listFilesContinueError.f17826b = sharingUserError;
        return listFilesContinueError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ListFilesContinueError)) {
            return false;
        }
        ListFilesContinueError listFilesContinueError = (ListFilesContinueError) obj;
        Tag tag = this.f17825a;
        if (tag != listFilesContinueError.f17825a) {
            return false;
        }
        int i = C2876a.f17827a[tag.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3;
        }
        SharingUserError sharingUserError = this.f17826b;
        SharingUserError sharingUserError2 = listFilesContinueError.f17826b;
        return sharingUserError == sharingUserError2 || sharingUserError.equals(sharingUserError2);
    }

    public SharingUserError getUserErrorValue() {
        if (this.f17825a == Tag.USER_ERROR) {
            return this.f17826b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.USER_ERROR, but was Tag." + this.f17825a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17825a, this.f17826b});
    }

    public boolean isInvalidCursor() {
        return this.f17825a == Tag.INVALID_CURSOR;
    }

    public boolean isOther() {
        return this.f17825a == Tag.OTHER;
    }

    public boolean isUserError() {
        return this.f17825a == Tag.USER_ERROR;
    }

    public Tag tag() {
        return this.f17825a;
    }

    public String toString() {
        return C2877b.f17828b.serialize((C2877b) this, false);
    }

    public String toStringMultiline() {
        return C2877b.f17828b.serialize((C2877b) this, true);
    }
}
