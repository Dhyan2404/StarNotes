package com.dropbox.core.p006v2.team;

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
public final class UploadApiRateLimitValue {

    /* renamed from: a */
    public Tag f18550a;

    /* renamed from: b */
    public Long f18551b;
    public static final UploadApiRateLimitValue UNLIMITED = new UploadApiRateLimitValue().m12772b(Tag.UNLIMITED);
    public static final UploadApiRateLimitValue OTHER = new UploadApiRateLimitValue().m12772b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        UNLIMITED,
        LIMIT,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.team.UploadApiRateLimitValue$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3260a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18552a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18552a = iArr;
            try {
                iArr[Tag.UNLIMITED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18552a[Tag.LIMIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18552a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.UploadApiRateLimitValue$b */
    /* loaded from: classes4.dex */
    public static class C3261b extends UnionSerializer<UploadApiRateLimitValue> {

        /* renamed from: b */
        public static final C3261b f18553b = new C3261b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UploadApiRateLimitValue deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            UploadApiRateLimitValue uploadApiRateLimitValue;
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
            if ("unlimited".equals(readTag)) {
                uploadApiRateLimitValue = UploadApiRateLimitValue.UNLIMITED;
            } else if ("limit".equals(readTag)) {
                StoneSerializer.expectField("limit", jsonParser);
                uploadApiRateLimitValue = UploadApiRateLimitValue.limit(StoneSerializers.uInt32().deserialize(jsonParser).longValue());
            } else {
                uploadApiRateLimitValue = UploadApiRateLimitValue.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return uploadApiRateLimitValue;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UploadApiRateLimitValue uploadApiRateLimitValue, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3260a.f18552a[uploadApiRateLimitValue.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("unlimited");
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("limit", jsonGenerator);
            jsonGenerator.writeFieldName("limit");
            StoneSerializers.uInt32().serialize((StoneSerializer<Long>) uploadApiRateLimitValue.f18551b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static UploadApiRateLimitValue limit(long j) {
        return new UploadApiRateLimitValue().m12773c(Tag.LIMIT, Long.valueOf(j));
    }

    /* renamed from: b */
    public final UploadApiRateLimitValue m12772b(Tag tag) {
        UploadApiRateLimitValue uploadApiRateLimitValue = new UploadApiRateLimitValue();
        uploadApiRateLimitValue.f18550a = tag;
        return uploadApiRateLimitValue;
    }

    /* renamed from: c */
    public final UploadApiRateLimitValue m12773c(Tag tag, Long l) {
        UploadApiRateLimitValue uploadApiRateLimitValue = new UploadApiRateLimitValue();
        uploadApiRateLimitValue.f18550a = tag;
        uploadApiRateLimitValue.f18551b = l;
        return uploadApiRateLimitValue;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UploadApiRateLimitValue)) {
            return false;
        }
        UploadApiRateLimitValue uploadApiRateLimitValue = (UploadApiRateLimitValue) obj;
        Tag tag = this.f18550a;
        if (tag != uploadApiRateLimitValue.f18550a) {
            return false;
        }
        int i = C3260a.f18552a[tag.ordinal()];
        if (i != 1) {
            return i != 2 ? i == 3 : this.f18551b == uploadApiRateLimitValue.f18551b;
        }
        return true;
    }

    public long getLimitValue() {
        if (this.f18550a == Tag.LIMIT) {
            return this.f18551b.longValue();
        }
        throw new IllegalStateException("Invalid tag: required Tag.LIMIT, but was Tag." + this.f18550a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18550a, this.f18551b});
    }

    public boolean isLimit() {
        return this.f18550a == Tag.LIMIT;
    }

    public boolean isOther() {
        return this.f18550a == Tag.OTHER;
    }

    public boolean isUnlimited() {
        return this.f18550a == Tag.UNLIMITED;
    }

    public Tag tag() {
        return this.f18550a;
    }

    public String toString() {
        return C3261b.f18553b.serialize((C3261b) this, false);
    }

    public String toStringMultiline() {
        return C3261b.f18553b.serialize((C3261b) this, true);
    }
}
