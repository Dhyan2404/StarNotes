package com.dropbox.core.p006v2.users;

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
public final class FileLockingValue {
    public static final FileLockingValue OTHER = new FileLockingValue().m16856b(Tag.OTHER);

    /* renamed from: a */
    public Tag f20729a;

    /* renamed from: b */
    public Boolean f20730b;

    /* loaded from: classes4.dex */
    public enum Tag {
        ENABLED,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.users.FileLockingValue$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4433a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20731a;

        static {
            int[] iArr = new int[Tag.values().length];
            f20731a = iArr;
            try {
                iArr[Tag.ENABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20731a[Tag.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.users.FileLockingValue$b */
    /* loaded from: classes4.dex */
    public static class C4434b extends UnionSerializer<FileLockingValue> {

        /* renamed from: b */
        public static final C4434b f20732b = new C4434b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileLockingValue deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            FileLockingValue fileLockingValue;
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
            if ("enabled".equals(readTag)) {
                StoneSerializer.expectField("enabled", jsonParser);
                fileLockingValue = FileLockingValue.enabled(StoneSerializers.boolean_().deserialize(jsonParser).booleanValue());
            } else {
                fileLockingValue = FileLockingValue.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return fileLockingValue;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileLockingValue fileLockingValue, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C4433a.f20731a[fileLockingValue.tag().ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("enabled", jsonGenerator);
            jsonGenerator.writeFieldName("enabled");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) fileLockingValue.f20730b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static FileLockingValue enabled(boolean z) {
        return new FileLockingValue().m16857c(Tag.ENABLED, Boolean.valueOf(z));
    }

    /* renamed from: b */
    public final FileLockingValue m16856b(Tag tag) {
        FileLockingValue fileLockingValue = new FileLockingValue();
        fileLockingValue.f20729a = tag;
        return fileLockingValue;
    }

    /* renamed from: c */
    public final FileLockingValue m16857c(Tag tag, Boolean bool) {
        FileLockingValue fileLockingValue = new FileLockingValue();
        fileLockingValue.f20729a = tag;
        fileLockingValue.f20730b = bool;
        return fileLockingValue;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof FileLockingValue)) {
            return false;
        }
        FileLockingValue fileLockingValue = (FileLockingValue) obj;
        Tag tag = this.f20729a;
        if (tag != fileLockingValue.f20729a) {
            return false;
        }
        int i = C4433a.f20731a[tag.ordinal()];
        return i != 1 ? i == 2 : this.f20730b == fileLockingValue.f20730b;
    }

    public boolean getEnabledValue() {
        if (this.f20729a == Tag.ENABLED) {
            return this.f20730b.booleanValue();
        }
        throw new IllegalStateException("Invalid tag: required Tag.ENABLED, but was Tag." + this.f20729a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f20729a, this.f20730b});
    }

    public boolean isEnabled() {
        return this.f20729a == Tag.ENABLED;
    }

    public boolean isOther() {
        return this.f20729a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f20729a;
    }

    public String toString() {
        return C4434b.f20732b.serialize((C4434b) this, false);
    }

    public String toStringMultiline() {
        return C4434b.f20732b.serialize((C4434b) this, true);
    }
}
