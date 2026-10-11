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
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public final class WriteMode {
    public static final WriteMode ADD = new WriteMode().m11194b(Tag.ADD);
    public static final WriteMode OVERWRITE = new WriteMode().m11194b(Tag.OVERWRITE);

    /* renamed from: a */
    public Tag f17486a;

    /* renamed from: b */
    public String f17487b;

    /* loaded from: classes4.dex */
    public enum Tag {
        ADD,
        OVERWRITE,
        UPDATE
    }

    /* renamed from: com.dropbox.core.v2.files.WriteMode$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2703a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17488a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17488a = iArr;
            try {
                iArr[Tag.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17488a[Tag.OVERWRITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17488a[Tag.UPDATE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.WriteMode$b */
    /* loaded from: classes4.dex */
    public static class C2704b extends UnionSerializer<WriteMode> {

        /* renamed from: b */
        public static final C2704b f17489b = new C2704b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public WriteMode deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            WriteMode update;
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
            if ("add".equals(readTag)) {
                update = WriteMode.ADD;
            } else if ("overwrite".equals(readTag)) {
                update = WriteMode.OVERWRITE;
            } else {
                if (!"update".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                StoneSerializer.expectField("update", jsonParser);
                update = WriteMode.update(StoneSerializers.string().deserialize(jsonParser));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return update;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(WriteMode writeMode, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2703a.f17488a[writeMode.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("add");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("overwrite");
                return;
            }
            if (i != 3) {
                throw new IllegalArgumentException("Unrecognized tag: " + writeMode.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("update", jsonGenerator);
            jsonGenerator.writeFieldName("update");
            StoneSerializers.string().serialize((StoneSerializer<String>) writeMode.f17487b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static WriteMode update(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 9) {
            throw new IllegalArgumentException("String is shorter than 9");
        }
        if (Pattern.matches("[0-9a-f]+", str)) {
            return new WriteMode().m11195c(Tag.UPDATE, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    /* renamed from: b */
    public final WriteMode m11194b(Tag tag) {
        WriteMode writeMode = new WriteMode();
        writeMode.f17486a = tag;
        return writeMode;
    }

    /* renamed from: c */
    public final WriteMode m11195c(Tag tag, String str) {
        WriteMode writeMode = new WriteMode();
        writeMode.f17486a = tag;
        writeMode.f17487b = str;
        return writeMode;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof WriteMode)) {
            return false;
        }
        WriteMode writeMode = (WriteMode) obj;
        Tag tag = this.f17486a;
        if (tag != writeMode.f17486a) {
            return false;
        }
        int i = C2703a.f17488a[tag.ordinal()];
        if (i == 1 || i == 2) {
            return true;
        }
        if (i != 3) {
            return false;
        }
        String str = this.f17487b;
        String str2 = writeMode.f17487b;
        return str == str2 || str.equals(str2);
    }

    public String getUpdateValue() {
        if (this.f17486a == Tag.UPDATE) {
            return this.f17487b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.UPDATE, but was Tag." + this.f17486a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17486a, this.f17487b});
    }

    public boolean isAdd() {
        return this.f17486a == Tag.ADD;
    }

    public boolean isOverwrite() {
        return this.f17486a == Tag.OVERWRITE;
    }

    public boolean isUpdate() {
        return this.f17486a == Tag.UPDATE;
    }

    public Tag tag() {
        return this.f17486a;
    }

    public String toString() {
        return C2704b.f17489b.serialize((C2704b) this, false);
    }

    public String toStringMultiline() {
        return C2704b.f17489b.serialize((C2704b) this, true);
    }
}
