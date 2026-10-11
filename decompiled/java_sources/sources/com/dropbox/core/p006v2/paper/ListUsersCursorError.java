package com.dropbox.core.p006v2.paper;

import com.dropbox.core.p006v2.paper.PaperApiCursorError;
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
public final class ListUsersCursorError {

    /* renamed from: a */
    public Tag f17591a;

    /* renamed from: b */
    public PaperApiCursorError f17592b;
    public static final ListUsersCursorError INSUFFICIENT_PERMISSIONS = new ListUsersCursorError().m11358b(Tag.INSUFFICIENT_PERMISSIONS);
    public static final ListUsersCursorError OTHER = new ListUsersCursorError().m11358b(Tag.OTHER);
    public static final ListUsersCursorError DOC_NOT_FOUND = new ListUsersCursorError().m11358b(Tag.DOC_NOT_FOUND);

    /* loaded from: classes4.dex */
    public enum Tag {
        INSUFFICIENT_PERMISSIONS,
        OTHER,
        DOC_NOT_FOUND,
        CURSOR_ERROR
    }

    /* renamed from: com.dropbox.core.v2.paper.ListUsersCursorError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2753a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17593a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17593a = iArr;
            try {
                iArr[Tag.INSUFFICIENT_PERMISSIONS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17593a[Tag.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17593a[Tag.DOC_NOT_FOUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17593a[Tag.CURSOR_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.ListUsersCursorError$b */
    /* loaded from: classes4.dex */
    public static class C2754b extends UnionSerializer<ListUsersCursorError> {

        /* renamed from: b */
        public static final C2754b f17594b = new C2754b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListUsersCursorError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ListUsersCursorError cursorError;
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
            if ("insufficient_permissions".equals(readTag)) {
                cursorError = ListUsersCursorError.INSUFFICIENT_PERMISSIONS;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                cursorError = ListUsersCursorError.OTHER;
            } else if ("doc_not_found".equals(readTag)) {
                cursorError = ListUsersCursorError.DOC_NOT_FOUND;
            } else {
                if (!"cursor_error".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                StoneSerializer.expectField("cursor_error", jsonParser);
                cursorError = ListUsersCursorError.cursorError(PaperApiCursorError.C2759b.f17601b.deserialize(jsonParser));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return cursorError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListUsersCursorError listUsersCursorError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2753a.f17593a[listUsersCursorError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("insufficient_permissions");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("doc_not_found");
                return;
            }
            if (i != 4) {
                throw new IllegalArgumentException("Unrecognized tag: " + listUsersCursorError.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("cursor_error", jsonGenerator);
            jsonGenerator.writeFieldName("cursor_error");
            PaperApiCursorError.C2759b.f17601b.serialize(listUsersCursorError.f17592b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static ListUsersCursorError cursorError(PaperApiCursorError paperApiCursorError) {
        if (paperApiCursorError != null) {
            return new ListUsersCursorError().m11359c(Tag.CURSOR_ERROR, paperApiCursorError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final ListUsersCursorError m11358b(Tag tag) {
        ListUsersCursorError listUsersCursorError = new ListUsersCursorError();
        listUsersCursorError.f17591a = tag;
        return listUsersCursorError;
    }

    /* renamed from: c */
    public final ListUsersCursorError m11359c(Tag tag, PaperApiCursorError paperApiCursorError) {
        ListUsersCursorError listUsersCursorError = new ListUsersCursorError();
        listUsersCursorError.f17591a = tag;
        listUsersCursorError.f17592b = paperApiCursorError;
        return listUsersCursorError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ListUsersCursorError)) {
            return false;
        }
        ListUsersCursorError listUsersCursorError = (ListUsersCursorError) obj;
        Tag tag = this.f17591a;
        if (tag != listUsersCursorError.f17591a) {
            return false;
        }
        int i = C2753a.f17593a[tag.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return true;
        }
        if (i != 4) {
            return false;
        }
        PaperApiCursorError paperApiCursorError = this.f17592b;
        PaperApiCursorError paperApiCursorError2 = listUsersCursorError.f17592b;
        return paperApiCursorError == paperApiCursorError2 || paperApiCursorError.equals(paperApiCursorError2);
    }

    public PaperApiCursorError getCursorErrorValue() {
        if (this.f17591a == Tag.CURSOR_ERROR) {
            return this.f17592b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.CURSOR_ERROR, but was Tag." + this.f17591a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17591a, this.f17592b});
    }

    public boolean isCursorError() {
        return this.f17591a == Tag.CURSOR_ERROR;
    }

    public boolean isDocNotFound() {
        return this.f17591a == Tag.DOC_NOT_FOUND;
    }

    public boolean isInsufficientPermissions() {
        return this.f17591a == Tag.INSUFFICIENT_PERMISSIONS;
    }

    public boolean isOther() {
        return this.f17591a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f17591a;
    }

    public String toString() {
        return C2754b.f17594b.serialize((C2754b) this, false);
    }

    public String toStringMultiline() {
        return C2754b.f17594b.serialize((C2754b) this, true);
    }
}
