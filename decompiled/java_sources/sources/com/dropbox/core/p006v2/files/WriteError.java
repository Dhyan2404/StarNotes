package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.WriteConflictError;
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
public final class WriteError {

    /* renamed from: a */
    public Tag f17481a;

    /* renamed from: b */
    public String f17482b;

    /* renamed from: c */
    public WriteConflictError f17483c;
    public static final WriteError NO_WRITE_PERMISSION = new WriteError().m11188c(Tag.NO_WRITE_PERMISSION);
    public static final WriteError INSUFFICIENT_SPACE = new WriteError().m11188c(Tag.INSUFFICIENT_SPACE);
    public static final WriteError DISALLOWED_NAME = new WriteError().m11188c(Tag.DISALLOWED_NAME);
    public static final WriteError TEAM_FOLDER = new WriteError().m11188c(Tag.TEAM_FOLDER);
    public static final WriteError TOO_MANY_WRITE_OPERATIONS = new WriteError().m11188c(Tag.TOO_MANY_WRITE_OPERATIONS);
    public static final WriteError OTHER = new WriteError().m11188c(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        MALFORMED_PATH,
        CONFLICT,
        NO_WRITE_PERMISSION,
        INSUFFICIENT_SPACE,
        DISALLOWED_NAME,
        TEAM_FOLDER,
        TOO_MANY_WRITE_OPERATIONS,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.WriteError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2701a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17484a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17484a = iArr;
            try {
                iArr[Tag.MALFORMED_PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17484a[Tag.CONFLICT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17484a[Tag.NO_WRITE_PERMISSION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17484a[Tag.INSUFFICIENT_SPACE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17484a[Tag.DISALLOWED_NAME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17484a[Tag.TEAM_FOLDER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17484a[Tag.TOO_MANY_WRITE_OPERATIONS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17484a[Tag.OTHER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.WriteError$b */
    /* loaded from: classes4.dex */
    public static class C2702b extends UnionSerializer<WriteError> {

        /* renamed from: b */
        public static final C2702b f17485b = new C2702b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public WriteError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            WriteError writeError;
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
            if (readTag == null) {
                throw new JsonParseException(jsonParser, "Required field missing: .tag");
            }
            if ("malformed_path".equals(readTag)) {
                if (jsonParser.getCurrentToken() != JsonToken.END_OBJECT) {
                    StoneSerializer.expectField("malformed_path", jsonParser);
                    str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    str = null;
                }
                writeError = str == null ? WriteError.malformedPath() : WriteError.malformedPath(str);
            } else if ("conflict".equals(readTag)) {
                StoneSerializer.expectField("conflict", jsonParser);
                writeError = WriteError.conflict(WriteConflictError.C2700b.f17480b.deserialize(jsonParser));
            } else {
                writeError = "no_write_permission".equals(readTag) ? WriteError.NO_WRITE_PERMISSION : "insufficient_space".equals(readTag) ? WriteError.INSUFFICIENT_SPACE : "disallowed_name".equals(readTag) ? WriteError.DISALLOWED_NAME : "team_folder".equals(readTag) ? WriteError.TEAM_FOLDER : "too_many_write_operations".equals(readTag) ? WriteError.TOO_MANY_WRITE_OPERATIONS : WriteError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return writeError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(WriteError writeError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2701a.f17484a[writeError.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("malformed_path", jsonGenerator);
                    jsonGenerator.writeFieldName("malformed_path");
                    StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) writeError.f17482b, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeStartObject();
                    writeTag("conflict", jsonGenerator);
                    jsonGenerator.writeFieldName("conflict");
                    WriteConflictError.C2700b.f17480b.serialize(writeError.f17483c, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 3:
                    jsonGenerator.writeString("no_write_permission");
                    return;
                case 4:
                    jsonGenerator.writeString("insufficient_space");
                    return;
                case 5:
                    jsonGenerator.writeString("disallowed_name");
                    return;
                case 6:
                    jsonGenerator.writeString("team_folder");
                    return;
                case 7:
                    jsonGenerator.writeString("too_many_write_operations");
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }

    public static WriteError conflict(WriteConflictError writeConflictError) {
        if (writeConflictError != null) {
            return new WriteError().m11189d(Tag.CONFLICT, writeConflictError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static WriteError malformedPath(String str) {
        return new WriteError().m11190e(Tag.MALFORMED_PATH, str);
    }

    /* renamed from: c */
    public final WriteError m11188c(Tag tag) {
        WriteError writeError = new WriteError();
        writeError.f17481a = tag;
        return writeError;
    }

    /* renamed from: d */
    public final WriteError m11189d(Tag tag, WriteConflictError writeConflictError) {
        WriteError writeError = new WriteError();
        writeError.f17481a = tag;
        writeError.f17483c = writeConflictError;
        return writeError;
    }

    /* renamed from: e */
    public final WriteError m11190e(Tag tag, String str) {
        WriteError writeError = new WriteError();
        writeError.f17481a = tag;
        writeError.f17482b = str;
        return writeError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof WriteError)) {
            return false;
        }
        WriteError writeError = (WriteError) obj;
        Tag tag = this.f17481a;
        if (tag != writeError.f17481a) {
            return false;
        }
        switch (C2701a.f17484a[tag.ordinal()]) {
            case 1:
                String str = this.f17482b;
                String str2 = writeError.f17482b;
                if (str != str2) {
                    return str != null && str.equals(str2);
                }
                return true;
            case 2:
                WriteConflictError writeConflictError = this.f17483c;
                WriteConflictError writeConflictError2 = writeError.f17483c;
                return writeConflictError == writeConflictError2 || writeConflictError.equals(writeConflictError2);
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

    public WriteConflictError getConflictValue() {
        if (this.f17481a == Tag.CONFLICT) {
            return this.f17483c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.CONFLICT, but was Tag." + this.f17481a.name());
    }

    public String getMalformedPathValue() {
        if (this.f17481a == Tag.MALFORMED_PATH) {
            return this.f17482b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MALFORMED_PATH, but was Tag." + this.f17481a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17481a, this.f17482b, this.f17483c});
    }

    public boolean isConflict() {
        return this.f17481a == Tag.CONFLICT;
    }

    public boolean isDisallowedName() {
        return this.f17481a == Tag.DISALLOWED_NAME;
    }

    public boolean isInsufficientSpace() {
        return this.f17481a == Tag.INSUFFICIENT_SPACE;
    }

    public boolean isMalformedPath() {
        return this.f17481a == Tag.MALFORMED_PATH;
    }

    public boolean isNoWritePermission() {
        return this.f17481a == Tag.NO_WRITE_PERMISSION;
    }

    public boolean isOther() {
        return this.f17481a == Tag.OTHER;
    }

    public boolean isTeamFolder() {
        return this.f17481a == Tag.TEAM_FOLDER;
    }

    public boolean isTooManyWriteOperations() {
        return this.f17481a == Tag.TOO_MANY_WRITE_OPERATIONS;
    }

    public Tag tag() {
        return this.f17481a;
    }

    public String toString() {
        return C2702b.f17485b.serialize((C2702b) this, false);
    }

    public String toStringMultiline() {
        return C2702b.f17485b.serialize((C2702b) this, true);
    }

    public static WriteError malformedPath() {
        return malformedPath(null);
    }
}
