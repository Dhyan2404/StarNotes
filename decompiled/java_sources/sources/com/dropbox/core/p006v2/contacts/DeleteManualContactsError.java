package com.dropbox.core.p006v2.contacts;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public final class DeleteManualContactsError {
    public static final DeleteManualContactsError OTHER = new DeleteManualContactsError().m10371b(Tag.OTHER);

    /* renamed from: a */
    public Tag f16898a;

    /* renamed from: b */
    public List<String> f16899b;

    /* loaded from: classes4.dex */
    public enum Tag {
        CONTACTS_NOT_FOUND,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.contacts.DeleteManualContactsError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2424a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16900a;

        static {
            int[] iArr = new int[Tag.values().length];
            f16900a = iArr;
            try {
                iArr[Tag.CONTACTS_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16900a[Tag.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.contacts.DeleteManualContactsError$b */
    /* loaded from: classes4.dex */
    public static class C2425b extends UnionSerializer<DeleteManualContactsError> {

        /* renamed from: b */
        public static final C2425b f16901b = new C2425b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeleteManualContactsError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            DeleteManualContactsError deleteManualContactsError;
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
            if ("contacts_not_found".equals(readTag)) {
                StoneSerializer.expectField("contacts_not_found", jsonParser);
                deleteManualContactsError = DeleteManualContactsError.contactsNotFound((List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser));
            } else {
                deleteManualContactsError = DeleteManualContactsError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return deleteManualContactsError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeleteManualContactsError deleteManualContactsError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2424a.f16900a[deleteManualContactsError.tag().ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("contacts_not_found", jsonGenerator);
            jsonGenerator.writeFieldName("contacts_not_found");
            StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) deleteManualContactsError.f16899b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static DeleteManualContactsError contactsNotFound(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("Value is null");
        }
        for (String str : list) {
            if (str == null) {
                throw new IllegalArgumentException("An item in list is null");
            }
            if (str.length() > 255) {
                throw new IllegalArgumentException("Stringan item in list is longer than 255");
            }
            if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
                throw new IllegalArgumentException("Stringan item in list does not match pattern");
            }
        }
        return new DeleteManualContactsError().m10372c(Tag.CONTACTS_NOT_FOUND, list);
    }

    /* renamed from: b */
    public final DeleteManualContactsError m10371b(Tag tag) {
        DeleteManualContactsError deleteManualContactsError = new DeleteManualContactsError();
        deleteManualContactsError.f16898a = tag;
        return deleteManualContactsError;
    }

    /* renamed from: c */
    public final DeleteManualContactsError m10372c(Tag tag, List<String> list) {
        DeleteManualContactsError deleteManualContactsError = new DeleteManualContactsError();
        deleteManualContactsError.f16898a = tag;
        deleteManualContactsError.f16899b = list;
        return deleteManualContactsError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof DeleteManualContactsError)) {
            return false;
        }
        DeleteManualContactsError deleteManualContactsError = (DeleteManualContactsError) obj;
        Tag tag = this.f16898a;
        if (tag != deleteManualContactsError.f16898a) {
            return false;
        }
        int i = C2424a.f16900a[tag.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        List<String> list = this.f16899b;
        List<String> list2 = deleteManualContactsError.f16899b;
        return list == list2 || list.equals(list2);
    }

    public List<String> getContactsNotFoundValue() {
        if (this.f16898a == Tag.CONTACTS_NOT_FOUND) {
            return this.f16899b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.CONTACTS_NOT_FOUND, but was Tag." + this.f16898a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f16898a, this.f16899b});
    }

    public boolean isContactsNotFound() {
        return this.f16898a == Tag.CONTACTS_NOT_FOUND;
    }

    public boolean isOther() {
        return this.f16898a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f16898a;
    }

    public String toString() {
        return C2425b.f16901b.serialize((C2425b) this, false);
    }

    public String toStringMultiline() {
        return C2425b.f16901b.serialize((C2425b) this, true);
    }
}
