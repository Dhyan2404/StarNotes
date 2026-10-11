package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.SharedFolderAccessError;
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
public final class ListFolderMembersContinueError {
    public static final ListFolderMembersContinueError INVALID_CURSOR = new ListFolderMembersContinueError().m11742b(Tag.INVALID_CURSOR);
    public static final ListFolderMembersContinueError OTHER = new ListFolderMembersContinueError().m11742b(Tag.OTHER);

    /* renamed from: a */
    public Tag f17834a;

    /* renamed from: b */
    public SharedFolderAccessError f17835b;

    /* loaded from: classes4.dex */
    public enum Tag {
        ACCESS_ERROR,
        INVALID_CURSOR,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.ListFolderMembersContinueError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2880a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17836a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17836a = iArr;
            try {
                iArr[Tag.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17836a[Tag.INVALID_CURSOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17836a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ListFolderMembersContinueError$b */
    /* loaded from: classes4.dex */
    public static class C2881b extends UnionSerializer<ListFolderMembersContinueError> {

        /* renamed from: b */
        public static final C2881b f17837b = new C2881b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListFolderMembersContinueError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ListFolderMembersContinueError listFolderMembersContinueError;
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
            if ("access_error".equals(readTag)) {
                StoneSerializer.expectField("access_error", jsonParser);
                listFolderMembersContinueError = ListFolderMembersContinueError.accessError(SharedFolderAccessError.C2943b.f17965b.deserialize(jsonParser));
            } else {
                listFolderMembersContinueError = "invalid_cursor".equals(readTag) ? ListFolderMembersContinueError.INVALID_CURSOR : ListFolderMembersContinueError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return listFolderMembersContinueError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListFolderMembersContinueError listFolderMembersContinueError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2880a.f17836a[listFolderMembersContinueError.tag().ordinal()];
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
            writeTag("access_error", jsonGenerator);
            jsonGenerator.writeFieldName("access_error");
            SharedFolderAccessError.C2943b.f17965b.serialize(listFolderMembersContinueError.f17835b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static ListFolderMembersContinueError accessError(SharedFolderAccessError sharedFolderAccessError) {
        if (sharedFolderAccessError != null) {
            return new ListFolderMembersContinueError().m11743c(Tag.ACCESS_ERROR, sharedFolderAccessError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final ListFolderMembersContinueError m11742b(Tag tag) {
        ListFolderMembersContinueError listFolderMembersContinueError = new ListFolderMembersContinueError();
        listFolderMembersContinueError.f17834a = tag;
        return listFolderMembersContinueError;
    }

    /* renamed from: c */
    public final ListFolderMembersContinueError m11743c(Tag tag, SharedFolderAccessError sharedFolderAccessError) {
        ListFolderMembersContinueError listFolderMembersContinueError = new ListFolderMembersContinueError();
        listFolderMembersContinueError.f17834a = tag;
        listFolderMembersContinueError.f17835b = sharedFolderAccessError;
        return listFolderMembersContinueError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ListFolderMembersContinueError)) {
            return false;
        }
        ListFolderMembersContinueError listFolderMembersContinueError = (ListFolderMembersContinueError) obj;
        Tag tag = this.f17834a;
        if (tag != listFolderMembersContinueError.f17834a) {
            return false;
        }
        int i = C2880a.f17836a[tag.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3;
        }
        SharedFolderAccessError sharedFolderAccessError = this.f17835b;
        SharedFolderAccessError sharedFolderAccessError2 = listFolderMembersContinueError.f17835b;
        return sharedFolderAccessError == sharedFolderAccessError2 || sharedFolderAccessError.equals(sharedFolderAccessError2);
    }

    public SharedFolderAccessError getAccessErrorValue() {
        if (this.f17834a == Tag.ACCESS_ERROR) {
            return this.f17835b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this.f17834a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17834a, this.f17835b});
    }

    public boolean isAccessError() {
        return this.f17834a == Tag.ACCESS_ERROR;
    }

    public boolean isInvalidCursor() {
        return this.f17834a == Tag.INVALID_CURSOR;
    }

    public boolean isOther() {
        return this.f17834a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f17834a;
    }

    public String toString() {
        return C2881b.f17837b.serialize((C2881b) this, false);
    }

    public String toStringMultiline() {
        return C2881b.f17837b.serialize((C2881b) this, true);
    }
}
