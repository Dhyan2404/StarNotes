package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.files.LookupError;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class ListSharedLinksError {

    /* renamed from: a */
    public Tag f17859a;

    /* renamed from: b */
    public LookupError f17860b;
    public static final ListSharedLinksError RESET = new ListSharedLinksError().m11767b(Tag.RESET);
    public static final ListSharedLinksError OTHER = new ListSharedLinksError().m11767b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH,
        RESET,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.ListSharedLinksError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2888a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17861a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17861a = iArr;
            try {
                iArr[Tag.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17861a[Tag.RESET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17861a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ListSharedLinksError$b */
    /* loaded from: classes4.dex */
    public static class C2889b extends UnionSerializer<ListSharedLinksError> {

        /* renamed from: b */
        public static final C2889b f17862b = new C2889b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListSharedLinksError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ListSharedLinksError listSharedLinksError;
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
                listSharedLinksError = ListSharedLinksError.path(LookupError.Serializer.INSTANCE.deserialize(jsonParser));
            } else {
                listSharedLinksError = Constants.RESET.equals(readTag) ? ListSharedLinksError.RESET : ListSharedLinksError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return listSharedLinksError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListSharedLinksError listSharedLinksError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2888a.f17861a[listSharedLinksError.tag().ordinal()];
            if (i != 1) {
                if (i != 2) {
                    jsonGenerator.writeString(com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER);
                    return;
                } else {
                    jsonGenerator.writeString(Constants.RESET);
                    return;
                }
            }
            jsonGenerator.writeStartObject();
            writeTag("path", jsonGenerator);
            jsonGenerator.writeFieldName("path");
            LookupError.Serializer.INSTANCE.serialize(listSharedLinksError.f17860b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static ListSharedLinksError path(LookupError lookupError) {
        if (lookupError != null) {
            return new ListSharedLinksError().m11768c(Tag.PATH, lookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final ListSharedLinksError m11767b(Tag tag) {
        ListSharedLinksError listSharedLinksError = new ListSharedLinksError();
        listSharedLinksError.f17859a = tag;
        return listSharedLinksError;
    }

    /* renamed from: c */
    public final ListSharedLinksError m11768c(Tag tag, LookupError lookupError) {
        ListSharedLinksError listSharedLinksError = new ListSharedLinksError();
        listSharedLinksError.f17859a = tag;
        listSharedLinksError.f17860b = lookupError;
        return listSharedLinksError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ListSharedLinksError)) {
            return false;
        }
        ListSharedLinksError listSharedLinksError = (ListSharedLinksError) obj;
        Tag tag = this.f17859a;
        if (tag != listSharedLinksError.f17859a) {
            return false;
        }
        int i = C2888a.f17861a[tag.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3;
        }
        LookupError lookupError = this.f17860b;
        LookupError lookupError2 = listSharedLinksError.f17860b;
        return lookupError == lookupError2 || lookupError.equals(lookupError2);
    }

    public LookupError getPathValue() {
        if (this.f17859a == Tag.PATH) {
            return this.f17860b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f17859a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17859a, this.f17860b});
    }

    public boolean isOther() {
        return this.f17859a == Tag.OTHER;
    }

    public boolean isPath() {
        return this.f17859a == Tag.PATH;
    }

    public boolean isReset() {
        return this.f17859a == Tag.RESET;
    }

    public Tag tag() {
        return this.f17859a;
    }

    public String toString() {
        return C2889b.f17862b.serialize((C2889b) this, false);
    }

    public String toStringMultiline() {
        return C2889b.f17862b.serialize((C2889b) this, true);
    }
}
