package com.dropbox.core.p006v2.files;

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
import org.apache.poi.ss.util.CellUtil;

/* loaded from: classes4.dex */
public final class LookupError {

    /* renamed from: a */
    public Tag f17256a;

    /* renamed from: b */
    public String f17257b;
    public static final LookupError NOT_FOUND = new LookupError().m10883b(Tag.NOT_FOUND);
    public static final LookupError NOT_FILE = new LookupError().m10883b(Tag.NOT_FILE);
    public static final LookupError NOT_FOLDER = new LookupError().m10883b(Tag.NOT_FOLDER);
    public static final LookupError RESTRICTED_CONTENT = new LookupError().m10883b(Tag.RESTRICTED_CONTENT);
    public static final LookupError UNSUPPORTED_CONTENT_TYPE = new LookupError().m10883b(Tag.UNSUPPORTED_CONTENT_TYPE);
    public static final LookupError LOCKED = new LookupError().m10883b(Tag.LOCKED);
    public static final LookupError OTHER = new LookupError().m10883b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<LookupError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public LookupError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            LookupError lookupError;
            String str;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag != null) {
                if ("malformed_path".equals(readTag)) {
                    if (jsonParser.getCurrentToken() != JsonToken.END_OBJECT) {
                        StoneSerializer.expectField("malformed_path", jsonParser);
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                    } else {
                        str = null;
                    }
                    if (str == null) {
                        lookupError = LookupError.malformedPath();
                    } else {
                        lookupError = LookupError.malformedPath(str);
                    }
                } else if ("not_found".equals(readTag)) {
                    lookupError = LookupError.NOT_FOUND;
                } else if ("not_file".equals(readTag)) {
                    lookupError = LookupError.NOT_FILE;
                } else if ("not_folder".equals(readTag)) {
                    lookupError = LookupError.NOT_FOLDER;
                } else if ("restricted_content".equals(readTag)) {
                    lookupError = LookupError.RESTRICTED_CONTENT;
                } else if ("unsupported_content_type".equals(readTag)) {
                    lookupError = LookupError.UNSUPPORTED_CONTENT_TYPE;
                } else if (CellUtil.LOCKED.equals(readTag)) {
                    lookupError = LookupError.LOCKED;
                } else {
                    lookupError = LookupError.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return lookupError;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(LookupError lookupError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2592a.f17258a[lookupError.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("malformed_path", jsonGenerator);
                    jsonGenerator.writeFieldName("malformed_path");
                    StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) lookupError.f17257b, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeString("not_found");
                    return;
                case 3:
                    jsonGenerator.writeString("not_file");
                    return;
                case 4:
                    jsonGenerator.writeString("not_folder");
                    return;
                case 5:
                    jsonGenerator.writeString("restricted_content");
                    return;
                case 6:
                    jsonGenerator.writeString("unsupported_content_type");
                    return;
                case 7:
                    jsonGenerator.writeString(CellUtil.LOCKED);
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }

    /* loaded from: classes4.dex */
    public enum Tag {
        MALFORMED_PATH,
        NOT_FOUND,
        NOT_FILE,
        NOT_FOLDER,
        RESTRICTED_CONTENT,
        UNSUPPORTED_CONTENT_TYPE,
        LOCKED,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.LookupError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2592a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17258a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17258a = iArr;
            try {
                iArr[Tag.MALFORMED_PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17258a[Tag.NOT_FOUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17258a[Tag.NOT_FILE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17258a[Tag.NOT_FOLDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17258a[Tag.RESTRICTED_CONTENT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17258a[Tag.UNSUPPORTED_CONTENT_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17258a[Tag.LOCKED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17258a[Tag.OTHER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static LookupError malformedPath(String str) {
        return new LookupError().m10884c(Tag.MALFORMED_PATH, str);
    }

    /* renamed from: b */
    public final LookupError m10883b(Tag tag) {
        LookupError lookupError = new LookupError();
        lookupError.f17256a = tag;
        return lookupError;
    }

    /* renamed from: c */
    public final LookupError m10884c(Tag tag, String str) {
        LookupError lookupError = new LookupError();
        lookupError.f17256a = tag;
        lookupError.f17257b = str;
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
        Tag tag = this.f17256a;
        if (tag != lookupError.f17256a) {
            return false;
        }
        switch (C2592a.f17258a[tag.ordinal()]) {
            case 1:
                String str = this.f17257b;
                String str2 = lookupError.f17257b;
                if (str != str2) {
                    return str != null && str.equals(str2);
                }
                return true;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    public String getMalformedPathValue() {
        if (this.f17256a == Tag.MALFORMED_PATH) {
            return this.f17257b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MALFORMED_PATH, but was Tag." + this.f17256a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17256a, this.f17257b});
    }

    public boolean isLocked() {
        return this.f17256a == Tag.LOCKED;
    }

    public boolean isMalformedPath() {
        return this.f17256a == Tag.MALFORMED_PATH;
    }

    public boolean isNotFile() {
        return this.f17256a == Tag.NOT_FILE;
    }

    public boolean isNotFolder() {
        return this.f17256a == Tag.NOT_FOLDER;
    }

    public boolean isNotFound() {
        return this.f17256a == Tag.NOT_FOUND;
    }

    public boolean isOther() {
        return this.f17256a == Tag.OTHER;
    }

    public boolean isRestrictedContent() {
        return this.f17256a == Tag.RESTRICTED_CONTENT;
    }

    public boolean isUnsupportedContentType() {
        return this.f17256a == Tag.UNSUPPORTED_CONTENT_TYPE;
    }

    public Tag tag() {
        return this.f17256a;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }

    public static LookupError malformedPath() {
        return malformedPath(null);
    }
}
