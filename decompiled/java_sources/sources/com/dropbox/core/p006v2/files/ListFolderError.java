package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.fileproperties.TemplateError;
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
public final class ListFolderError {
    public static final ListFolderError OTHER = new ListFolderError().m10831c(Tag.OTHER);

    /* renamed from: a */
    public Tag f17216a;

    /* renamed from: b */
    public LookupError f17217b;

    /* renamed from: c */
    public TemplateError f17218c;

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH,
        TEMPLATE_ERROR,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.ListFolderError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2571a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17219a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17219a = iArr;
            try {
                iArr[Tag.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17219a[Tag.TEMPLATE_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17219a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ListFolderError$b */
    /* loaded from: classes4.dex */
    public static class C2572b extends UnionSerializer<ListFolderError> {

        /* renamed from: b */
        public static final C2572b f17220b = new C2572b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListFolderError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ListFolderError listFolderError;
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
                listFolderError = ListFolderError.path(LookupError.Serializer.INSTANCE.deserialize(jsonParser));
            } else if ("template_error".equals(readTag)) {
                StoneSerializer.expectField("template_error", jsonParser);
                listFolderError = ListFolderError.templateError(TemplateError.Serializer.INSTANCE.deserialize(jsonParser));
            } else {
                listFolderError = ListFolderError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return listFolderError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListFolderError listFolderError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2571a.f17219a[listFolderError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                LookupError.Serializer.INSTANCE.serialize(listFolderError.f17217b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("template_error", jsonGenerator);
            jsonGenerator.writeFieldName("template_error");
            TemplateError.Serializer.INSTANCE.serialize(listFolderError.f17218c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static ListFolderError path(LookupError lookupError) {
        if (lookupError != null) {
            return new ListFolderError().m10832d(Tag.PATH, lookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static ListFolderError templateError(TemplateError templateError) {
        if (templateError != null) {
            return new ListFolderError().m10833e(Tag.TEMPLATE_ERROR, templateError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final ListFolderError m10831c(Tag tag) {
        ListFolderError listFolderError = new ListFolderError();
        listFolderError.f17216a = tag;
        return listFolderError;
    }

    /* renamed from: d */
    public final ListFolderError m10832d(Tag tag, LookupError lookupError) {
        ListFolderError listFolderError = new ListFolderError();
        listFolderError.f17216a = tag;
        listFolderError.f17217b = lookupError;
        return listFolderError;
    }

    /* renamed from: e */
    public final ListFolderError m10833e(Tag tag, TemplateError templateError) {
        ListFolderError listFolderError = new ListFolderError();
        listFolderError.f17216a = tag;
        listFolderError.f17218c = templateError;
        return listFolderError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ListFolderError)) {
            return false;
        }
        ListFolderError listFolderError = (ListFolderError) obj;
        Tag tag = this.f17216a;
        if (tag != listFolderError.f17216a) {
            return false;
        }
        int i = C2571a.f17219a[tag.ordinal()];
        if (i == 1) {
            LookupError lookupError = this.f17217b;
            LookupError lookupError2 = listFolderError.f17217b;
            return lookupError == lookupError2 || lookupError.equals(lookupError2);
        }
        if (i != 2) {
            return i == 3;
        }
        TemplateError templateError = this.f17218c;
        TemplateError templateError2 = listFolderError.f17218c;
        return templateError == templateError2 || templateError.equals(templateError2);
    }

    public LookupError getPathValue() {
        if (this.f17216a == Tag.PATH) {
            return this.f17217b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f17216a.name());
    }

    public TemplateError getTemplateErrorValue() {
        if (this.f17216a == Tag.TEMPLATE_ERROR) {
            return this.f17218c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEMPLATE_ERROR, but was Tag." + this.f17216a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17216a, this.f17217b, this.f17218c});
    }

    public boolean isOther() {
        return this.f17216a == Tag.OTHER;
    }

    public boolean isPath() {
        return this.f17216a == Tag.PATH;
    }

    public boolean isTemplateError() {
        return this.f17216a == Tag.TEMPLATE_ERROR;
    }

    public Tag tag() {
        return this.f17216a;
    }

    public String toString() {
        return C2572b.f17220b.serialize((C2572b) this, false);
    }

    public String toStringMultiline() {
        return C2572b.f17220b.serialize((C2572b) this, true);
    }
}
