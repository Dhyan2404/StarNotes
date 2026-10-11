package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.DurationLogInfo;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class WebSessionsFixedLengthPolicy {

    /* renamed from: a */
    public Tag f20699a;

    /* renamed from: b */
    public DurationLogInfo f20700b;
    public static final WebSessionsFixedLengthPolicy UNDEFINED = new WebSessionsFixedLengthPolicy().m16831b(Tag.UNDEFINED);
    public static final WebSessionsFixedLengthPolicy OTHER = new WebSessionsFixedLengthPolicy().m16831b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        DEFINED,
        UNDEFINED,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.teamlog.WebSessionsFixedLengthPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4409a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20701a;

        static {
            int[] iArr = new int[Tag.values().length];
            f20701a = iArr;
            try {
                iArr[Tag.DEFINED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20701a[Tag.UNDEFINED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20701a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.WebSessionsFixedLengthPolicy$b */
    /* loaded from: classes4.dex */
    public static class C4410b extends UnionSerializer<WebSessionsFixedLengthPolicy> {

        /* renamed from: b */
        public static final C4410b f20702b = new C4410b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public WebSessionsFixedLengthPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
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
            WebSessionsFixedLengthPolicy defined = "defined".equals(readTag) ? WebSessionsFixedLengthPolicy.defined(DurationLogInfo.C3481a.f18874b.deserialize(jsonParser, true)) : OcrValues.ENGINE_UNDEFINED.equals(readTag) ? WebSessionsFixedLengthPolicy.UNDEFINED : WebSessionsFixedLengthPolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return defined;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4409a.f20701a[webSessionsFixedLengthPolicy.tag().ordinal()];
            if (i != 1) {
                if (i != 2) {
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
                } else {
                    jsonGenerator.writeString(OcrValues.ENGINE_UNDEFINED);
                    return;
                }
            }
            jsonGenerator.writeStartObject();
            writeTag("defined", jsonGenerator);
            DurationLogInfo.C3481a.f18874b.serialize(webSessionsFixedLengthPolicy.f20700b, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static WebSessionsFixedLengthPolicy defined(DurationLogInfo durationLogInfo) {
        if (durationLogInfo != null) {
            return new WebSessionsFixedLengthPolicy().m16832c(Tag.DEFINED, durationLogInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final WebSessionsFixedLengthPolicy m16831b(Tag tag) {
        WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicy = new WebSessionsFixedLengthPolicy();
        webSessionsFixedLengthPolicy.f20699a = tag;
        return webSessionsFixedLengthPolicy;
    }

    /* renamed from: c */
    public final WebSessionsFixedLengthPolicy m16832c(Tag tag, DurationLogInfo durationLogInfo) {
        WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicy = new WebSessionsFixedLengthPolicy();
        webSessionsFixedLengthPolicy.f20699a = tag;
        webSessionsFixedLengthPolicy.f20700b = durationLogInfo;
        return webSessionsFixedLengthPolicy;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof WebSessionsFixedLengthPolicy)) {
            return false;
        }
        WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicy = (WebSessionsFixedLengthPolicy) obj;
        Tag tag = this.f20699a;
        if (tag != webSessionsFixedLengthPolicy.f20699a) {
            return false;
        }
        int i = C4409a.f20701a[tag.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3;
        }
        DurationLogInfo durationLogInfo = this.f20700b;
        DurationLogInfo durationLogInfo2 = webSessionsFixedLengthPolicy.f20700b;
        return durationLogInfo == durationLogInfo2 || durationLogInfo.equals(durationLogInfo2);
    }

    public DurationLogInfo getDefinedValue() {
        if (this.f20699a == Tag.DEFINED) {
            return this.f20700b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DEFINED, but was Tag." + this.f20699a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f20699a, this.f20700b});
    }

    public boolean isDefined() {
        return this.f20699a == Tag.DEFINED;
    }

    public boolean isOther() {
        return this.f20699a == Tag.OTHER;
    }

    public boolean isUndefined() {
        return this.f20699a == Tag.UNDEFINED;
    }

    public Tag tag() {
        return this.f20699a;
    }

    public String toString() {
        return C4410b.f20702b.serialize((C4410b) this, false);
    }

    public String toStringMultiline() {
        return C4410b.f20702b.serialize((C4410b) this, true);
    }
}
