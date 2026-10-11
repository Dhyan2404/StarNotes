package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.LookupError;
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
public final class ListRevisionsError {
    public static final ListRevisionsError OTHER = new ListRevisionsError().m10852b(Tag.OTHER);

    /* renamed from: a */
    public Tag f17234a;

    /* renamed from: b */
    public LookupError f17235b;

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.ListRevisionsError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2579a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17236a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17236a = iArr;
            try {
                iArr[Tag.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17236a[Tag.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ListRevisionsError$b */
    /* loaded from: classes4.dex */
    public static class C2580b extends UnionSerializer<ListRevisionsError> {

        /* renamed from: b */
        public static final C2580b f17237b = new C2580b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListRevisionsError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ListRevisionsError listRevisionsError;
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
            if ("path".equals(readTag)) {
                StoneSerializer.expectField("path", jsonParser);
                listRevisionsError = ListRevisionsError.path(LookupError.Serializer.INSTANCE.deserialize(jsonParser));
            } else {
                listRevisionsError = ListRevisionsError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return listRevisionsError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListRevisionsError listRevisionsError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2579a.f17236a[listRevisionsError.tag().ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("path", jsonGenerator);
            jsonGenerator.writeFieldName("path");
            LookupError.Serializer.INSTANCE.serialize(listRevisionsError.f17235b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static ListRevisionsError path(LookupError lookupError) {
        if (lookupError != null) {
            return new ListRevisionsError().m10853c(Tag.PATH, lookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final ListRevisionsError m10852b(Tag tag) {
        ListRevisionsError listRevisionsError = new ListRevisionsError();
        listRevisionsError.f17234a = tag;
        return listRevisionsError;
    }

    /* renamed from: c */
    public final ListRevisionsError m10853c(Tag tag, LookupError lookupError) {
        ListRevisionsError listRevisionsError = new ListRevisionsError();
        listRevisionsError.f17234a = tag;
        listRevisionsError.f17235b = lookupError;
        return listRevisionsError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ListRevisionsError)) {
            return false;
        }
        ListRevisionsError listRevisionsError = (ListRevisionsError) obj;
        Tag tag = this.f17234a;
        if (tag != listRevisionsError.f17234a) {
            return false;
        }
        int i = C2579a.f17236a[tag.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        LookupError lookupError = this.f17235b;
        LookupError lookupError2 = listRevisionsError.f17235b;
        return lookupError == lookupError2 || lookupError.equals(lookupError2);
    }

    public LookupError getPathValue() {
        if (this.f17234a == Tag.PATH) {
            return this.f17235b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f17234a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17234a, this.f17235b});
    }

    public boolean isOther() {
        return this.f17234a == Tag.OTHER;
    }

    public boolean isPath() {
        return this.f17234a == Tag.PATH;
    }

    public Tag tag() {
        return this.f17234a;
    }

    public String toString() {
        return C2580b.f17237b.serialize((C2580b) this, false);
    }

    public String toStringMultiline() {
        return C2580b.f17237b.serialize((C2580b) this, true);
    }
}
