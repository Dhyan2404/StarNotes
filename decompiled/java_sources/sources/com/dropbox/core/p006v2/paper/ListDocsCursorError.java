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
public final class ListDocsCursorError {
    public static final ListDocsCursorError OTHER = new ListDocsCursorError().m11337b(Tag.OTHER);

    /* renamed from: a */
    public Tag f17575a;

    /* renamed from: b */
    public PaperApiCursorError f17576b;

    /* loaded from: classes4.dex */
    public enum Tag {
        CURSOR_ERROR,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.paper.ListDocsCursorError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2743a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17577a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17577a = iArr;
            try {
                iArr[Tag.CURSOR_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17577a[Tag.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.ListDocsCursorError$b */
    /* loaded from: classes4.dex */
    public static class C2744b extends UnionSerializer<ListDocsCursorError> {

        /* renamed from: b */
        public static final C2744b f17578b = new C2744b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListDocsCursorError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ListDocsCursorError listDocsCursorError;
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
            if ("cursor_error".equals(readTag)) {
                StoneSerializer.expectField("cursor_error", jsonParser);
                listDocsCursorError = ListDocsCursorError.cursorError(PaperApiCursorError.C2759b.f17601b.deserialize(jsonParser));
            } else {
                listDocsCursorError = ListDocsCursorError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return listDocsCursorError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListDocsCursorError listDocsCursorError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2743a.f17577a[listDocsCursorError.tag().ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("cursor_error", jsonGenerator);
            jsonGenerator.writeFieldName("cursor_error");
            PaperApiCursorError.C2759b.f17601b.serialize(listDocsCursorError.f17576b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static ListDocsCursorError cursorError(PaperApiCursorError paperApiCursorError) {
        if (paperApiCursorError != null) {
            return new ListDocsCursorError().m11338c(Tag.CURSOR_ERROR, paperApiCursorError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final ListDocsCursorError m11337b(Tag tag) {
        ListDocsCursorError listDocsCursorError = new ListDocsCursorError();
        listDocsCursorError.f17575a = tag;
        return listDocsCursorError;
    }

    /* renamed from: c */
    public final ListDocsCursorError m11338c(Tag tag, PaperApiCursorError paperApiCursorError) {
        ListDocsCursorError listDocsCursorError = new ListDocsCursorError();
        listDocsCursorError.f17575a = tag;
        listDocsCursorError.f17576b = paperApiCursorError;
        return listDocsCursorError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ListDocsCursorError)) {
            return false;
        }
        ListDocsCursorError listDocsCursorError = (ListDocsCursorError) obj;
        Tag tag = this.f17575a;
        if (tag != listDocsCursorError.f17575a) {
            return false;
        }
        int i = C2743a.f17577a[tag.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        PaperApiCursorError paperApiCursorError = this.f17576b;
        PaperApiCursorError paperApiCursorError2 = listDocsCursorError.f17576b;
        return paperApiCursorError == paperApiCursorError2 || paperApiCursorError.equals(paperApiCursorError2);
    }

    public PaperApiCursorError getCursorErrorValue() {
        if (this.f17575a == Tag.CURSOR_ERROR) {
            return this.f17576b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.CURSOR_ERROR, but was Tag." + this.f17575a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17575a, this.f17576b});
    }

    public boolean isCursorError() {
        return this.f17575a == Tag.CURSOR_ERROR;
    }

    public boolean isOther() {
        return this.f17575a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f17575a;
    }

    public String toString() {
        return C2744b.f17578b.serialize((C2744b) this, false);
    }

    public String toStringMultiline() {
        return C2744b.f17578b.serialize((C2744b) this, true);
    }
}
