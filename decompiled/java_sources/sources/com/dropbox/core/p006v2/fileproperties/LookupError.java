package com.dropbox.core.p006v2.fileproperties;

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

/* loaded from: classes4.dex */
public final class LookupError {

    /* renamed from: a */
    public Tag f16917a;

    /* renamed from: b */
    public String f16918b;
    public static final LookupError NOT_FOUND = new LookupError().m10406b(Tag.NOT_FOUND);
    public static final LookupError NOT_FILE = new LookupError().m10406b(Tag.NOT_FILE);
    public static final LookupError NOT_FOLDER = new LookupError().m10406b(Tag.NOT_FOLDER);
    public static final LookupError RESTRICTED_CONTENT = new LookupError().m10406b(Tag.RESTRICTED_CONTENT);
    public static final LookupError OTHER = new LookupError().m10406b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        MALFORMED_PATH,
        NOT_FOUND,
        NOT_FILE,
        NOT_FOLDER,
        RESTRICTED_CONTENT,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.LookupError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2432a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16919a;

        static {
            int[] iArr = new int[Tag.values().length];
            f16919a = iArr;
            try {
                iArr[Tag.MALFORMED_PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16919a[Tag.NOT_FOUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16919a[Tag.NOT_FILE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16919a[Tag.NOT_FOLDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16919a[Tag.RESTRICTED_CONTENT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16919a[Tag.OTHER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.LookupError$b */
    /* loaded from: classes4.dex */
    public static class C2433b extends UnionSerializer<LookupError> {

        /* renamed from: b */
        public static final C2433b f16920b = new C2433b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LookupError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            LookupError lookupError;
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
            if ("malformed_path".equals(readTag)) {
                StoneSerializer.expectField("malformed_path", jsonParser);
                lookupError = LookupError.malformedPath(StoneSerializers.string().deserialize(jsonParser));
            } else {
                lookupError = "not_found".equals(readTag) ? LookupError.NOT_FOUND : "not_file".equals(readTag) ? LookupError.NOT_FILE : "not_folder".equals(readTag) ? LookupError.NOT_FOLDER : "restricted_content".equals(readTag) ? LookupError.RESTRICTED_CONTENT : LookupError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return lookupError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LookupError lookupError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2432a.f16919a[lookupError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("malformed_path", jsonGenerator);
                jsonGenerator.writeFieldName("malformed_path");
                StoneSerializers.string().serialize((StoneSerializer<String>) lookupError.f16918b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("not_found");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("not_file");
                return;
            }
            if (i == 4) {
                jsonGenerator.writeString("not_folder");
            } else if (i != 5) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("restricted_content");
            }
        }
    }

    public static LookupError malformedPath(String str) {
        if (str != null) {
            return new LookupError().m10407c(Tag.MALFORMED_PATH, str);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final LookupError m10406b(Tag tag) {
        LookupError lookupError = new LookupError();
        lookupError.f16917a = tag;
        return lookupError;
    }

    /* renamed from: c */
    public final LookupError m10407c(Tag tag, String str) {
        LookupError lookupError = new LookupError();
        lookupError.f16917a = tag;
        lookupError.f16918b = str;
        return lookupError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof LookupError)) {
            return false;
        }
        LookupError lookupError = (LookupError) obj;
        Tag tag = this.f16917a;
        if (tag != lookupError.f16917a) {
            return false;
        }
        switch (C2432a.f16919a[tag.ordinal()]) {
            case 1:
                String str = this.f16918b;
                String str2 = lookupError.f16918b;
                return str == str2 || str.equals(str2);
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    public String getMalformedPathValue() {
        if (this.f16917a == Tag.MALFORMED_PATH) {
            return this.f16918b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MALFORMED_PATH, but was Tag." + this.f16917a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f16917a, this.f16918b});
    }

    public boolean isMalformedPath() {
        return this.f16917a == Tag.MALFORMED_PATH;
    }

    public boolean isNotFile() {
        return this.f16917a == Tag.NOT_FILE;
    }

    public boolean isNotFolder() {
        return this.f16917a == Tag.NOT_FOLDER;
    }

    public boolean isNotFound() {
        return this.f16917a == Tag.NOT_FOUND;
    }

    public boolean isOther() {
        return this.f16917a == Tag.OTHER;
    }

    public boolean isRestrictedContent() {
        return this.f16917a == Tag.RESTRICTED_CONTENT;
    }

    public Tag tag() {
        return this.f16917a;
    }

    public String toString() {
        return C2433b.f16920b.serialize((C2433b) this, false);
    }

    public String toStringMultiline() {
        return C2433b.f16920b.serialize((C2433b) this, true);
    }
}
