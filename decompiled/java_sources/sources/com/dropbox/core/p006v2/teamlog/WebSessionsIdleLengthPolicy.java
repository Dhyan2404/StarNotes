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
public final class WebSessionsIdleLengthPolicy {

    /* renamed from: a */
    public Tag f20703a;

    /* renamed from: b */
    public DurationLogInfo f20704b;
    public static final WebSessionsIdleLengthPolicy UNDEFINED = new WebSessionsIdleLengthPolicy().m16836b(Tag.UNDEFINED);
    public static final WebSessionsIdleLengthPolicy OTHER = new WebSessionsIdleLengthPolicy().m16836b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        DEFINED,
        UNDEFINED,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.teamlog.WebSessionsIdleLengthPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4411a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20705a;

        static {
            int[] iArr = new int[Tag.values().length];
            f20705a = iArr;
            try {
                iArr[Tag.DEFINED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20705a[Tag.UNDEFINED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20705a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.WebSessionsIdleLengthPolicy$b */
    /* loaded from: classes4.dex */
    public static class C4412b extends UnionSerializer<WebSessionsIdleLengthPolicy> {

        /* renamed from: b */
        public static final C4412b f20706b = new C4412b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public WebSessionsIdleLengthPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            WebSessionsIdleLengthPolicy defined = "defined".equals(readTag) ? WebSessionsIdleLengthPolicy.defined(DurationLogInfo.C3481a.f18874b.deserialize(jsonParser, true)) : OcrValues.ENGINE_UNDEFINED.equals(readTag) ? WebSessionsIdleLengthPolicy.UNDEFINED : WebSessionsIdleLengthPolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return defined;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4411a.f20705a[webSessionsIdleLengthPolicy.tag().ordinal()];
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
            DurationLogInfo.C3481a.f18874b.serialize(webSessionsIdleLengthPolicy.f20704b, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static WebSessionsIdleLengthPolicy defined(DurationLogInfo durationLogInfo) {
        if (durationLogInfo != null) {
            return new WebSessionsIdleLengthPolicy().m16837c(Tag.DEFINED, durationLogInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final WebSessionsIdleLengthPolicy m16836b(Tag tag) {
        WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicy = new WebSessionsIdleLengthPolicy();
        webSessionsIdleLengthPolicy.f20703a = tag;
        return webSessionsIdleLengthPolicy;
    }

    /* renamed from: c */
    public final WebSessionsIdleLengthPolicy m16837c(Tag tag, DurationLogInfo durationLogInfo) {
        WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicy = new WebSessionsIdleLengthPolicy();
        webSessionsIdleLengthPolicy.f20703a = tag;
        webSessionsIdleLengthPolicy.f20704b = durationLogInfo;
        return webSessionsIdleLengthPolicy;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof WebSessionsIdleLengthPolicy)) {
            return false;
        }
        WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicy = (WebSessionsIdleLengthPolicy) obj;
        Tag tag = this.f20703a;
        if (tag != webSessionsIdleLengthPolicy.f20703a) {
            return false;
        }
        int i = C4411a.f20705a[tag.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3;
        }
        DurationLogInfo durationLogInfo = this.f20704b;
        DurationLogInfo durationLogInfo2 = webSessionsIdleLengthPolicy.f20704b;
        return durationLogInfo == durationLogInfo2 || durationLogInfo.equals(durationLogInfo2);
    }

    public DurationLogInfo getDefinedValue() {
        if (this.f20703a == Tag.DEFINED) {
            return this.f20704b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DEFINED, but was Tag." + this.f20703a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f20703a, this.f20704b});
    }

    public boolean isDefined() {
        return this.f20703a == Tag.DEFINED;
    }

    public boolean isOther() {
        return this.f20703a == Tag.OTHER;
    }

    public boolean isUndefined() {
        return this.f20703a == Tag.UNDEFINED;
    }

    public Tag tag() {
        return this.f20703a;
    }

    public String toString() {
        return C4412b.f20706b.serialize((C4412b) this, false);
    }

    public String toStringMultiline() {
        return C4412b.f20706b.serialize((C4412b) this, true);
    }
}
