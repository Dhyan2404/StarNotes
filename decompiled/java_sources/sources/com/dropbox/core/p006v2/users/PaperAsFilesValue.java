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
public final class PaperAsFilesValue {
    public static final PaperAsFilesValue OTHER = new PaperAsFilesValue().m16870b(Tag.OTHER);

    /* renamed from: a */
    public Tag f20740a;

    /* renamed from: b */
    public Boolean f20741b;

    /* loaded from: classes4.dex */
    public enum Tag {
        ENABLED,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.users.PaperAsFilesValue$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4440a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20742a;

        static {
            int[] iArr = new int[Tag.values().length];
            f20742a = iArr;
            try {
                iArr[Tag.ENABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20742a[Tag.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.users.PaperAsFilesValue$b */
    /* loaded from: classes4.dex */
    public static class C4441b extends UnionSerializer<PaperAsFilesValue> {

        /* renamed from: b */
        public static final C4441b f20743b = new C4441b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperAsFilesValue deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            PaperAsFilesValue paperAsFilesValue;
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
                paperAsFilesValue = PaperAsFilesValue.enabled(StoneSerializers.boolean_().deserialize(jsonParser).booleanValue());
            } else {
                paperAsFilesValue = PaperAsFilesValue.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return paperAsFilesValue;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperAsFilesValue paperAsFilesValue, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C4440a.f20742a[paperAsFilesValue.tag().ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("enabled", jsonGenerator);
            jsonGenerator.writeFieldName("enabled");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) paperAsFilesValue.f20741b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static PaperAsFilesValue enabled(boolean z) {
        return new PaperAsFilesValue().m16871c(Tag.ENABLED, Boolean.valueOf(z));
    }

    /* renamed from: b */
    public final PaperAsFilesValue m16870b(Tag tag) {
        PaperAsFilesValue paperAsFilesValue = new PaperAsFilesValue();
        paperAsFilesValue.f20740a = tag;
        return paperAsFilesValue;
    }

    /* renamed from: c */
    public final PaperAsFilesValue m16871c(Tag tag, Boolean bool) {
        PaperAsFilesValue paperAsFilesValue = new PaperAsFilesValue();
        paperAsFilesValue.f20740a = tag;
        paperAsFilesValue.f20741b = bool;
        return paperAsFilesValue;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof PaperAsFilesValue)) {
            return false;
        }
        PaperAsFilesValue paperAsFilesValue = (PaperAsFilesValue) obj;
        Tag tag = this.f20740a;
        if (tag != paperAsFilesValue.f20740a) {
            return false;
        }
        int i = C4440a.f20742a[tag.ordinal()];
        return i != 1 ? i == 2 : this.f20741b == paperAsFilesValue.f20741b;
    }

    public boolean getEnabledValue() {
        if (this.f20740a == Tag.ENABLED) {
            return this.f20741b.booleanValue();
        }
        throw new IllegalStateException("Invalid tag: required Tag.ENABLED, but was Tag." + this.f20740a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f20740a, this.f20741b});
    }

    public boolean isEnabled() {
        return this.f20740a == Tag.ENABLED;
    }

    public boolean isOther() {
        return this.f20740a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f20740a;
    }

    public String toString() {
        return C4441b.f20743b.serialize((C4441b) this, false);
    }

    public String toStringMultiline() {
        return C4441b.f20743b.serialize((C4441b) this, true);
    }
}
