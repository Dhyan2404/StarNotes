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
import com.google.firebase.analytics.FirebaseAnalytics;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public final class ResendSecondaryEmailResult {
    public static final ResendSecondaryEmailResult OTHER = new ResendSecondaryEmailResult().m12613d(Tag.OTHER);

    /* renamed from: a */
    public Tag f18435a;

    /* renamed from: b */
    public String f18436b;

    /* renamed from: c */
    public String f18437c;

    /* renamed from: d */
    public String f18438d;

    /* loaded from: classes4.dex */
    public enum Tag {
        SUCCESS,
        NOT_PENDING,
        RATE_LIMITED,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.team.ResendSecondaryEmailResult$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3191a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18439a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18439a = iArr;
            try {
                iArr[Tag.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18439a[Tag.NOT_PENDING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18439a[Tag.RATE_LIMITED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18439a[Tag.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.ResendSecondaryEmailResult$b */
    /* loaded from: classes4.dex */
    public static class C3192b extends UnionSerializer<ResendSecondaryEmailResult> {

        /* renamed from: b */
        public static final C3192b f18440b = new C3192b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ResendSecondaryEmailResult deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ResendSecondaryEmailResult resendSecondaryEmailResult;
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
            if (FirebaseAnalytics.Param.SUCCESS.equals(readTag)) {
                StoneSerializer.expectField(FirebaseAnalytics.Param.SUCCESS, jsonParser);
                resendSecondaryEmailResult = ResendSecondaryEmailResult.success(StoneSerializers.string().deserialize(jsonParser));
            } else if ("not_pending".equals(readTag)) {
                StoneSerializer.expectField("not_pending", jsonParser);
                resendSecondaryEmailResult = ResendSecondaryEmailResult.notPending(StoneSerializers.string().deserialize(jsonParser));
            } else if ("rate_limited".equals(readTag)) {
                StoneSerializer.expectField("rate_limited", jsonParser);
                resendSecondaryEmailResult = ResendSecondaryEmailResult.rateLimited(StoneSerializers.string().deserialize(jsonParser));
            } else {
                resendSecondaryEmailResult = ResendSecondaryEmailResult.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return resendSecondaryEmailResult;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ResendSecondaryEmailResult resendSecondaryEmailResult, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3191a.f18439a[resendSecondaryEmailResult.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag(FirebaseAnalytics.Param.SUCCESS, jsonGenerator);
                jsonGenerator.writeFieldName(FirebaseAnalytics.Param.SUCCESS);
                StoneSerializers.string().serialize((StoneSerializer<String>) resendSecondaryEmailResult.f18436b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("not_pending", jsonGenerator);
                jsonGenerator.writeFieldName("not_pending");
                StoneSerializers.string().serialize((StoneSerializer<String>) resendSecondaryEmailResult.f18437c, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("rate_limited", jsonGenerator);
            jsonGenerator.writeFieldName("rate_limited");
            StoneSerializers.string().serialize((StoneSerializer<String>) resendSecondaryEmailResult.f18438d, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static ResendSecondaryEmailResult notPending(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new ResendSecondaryEmailResult().m12614e(Tag.NOT_PENDING, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    public static ResendSecondaryEmailResult rateLimited(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new ResendSecondaryEmailResult().m12615f(Tag.RATE_LIMITED, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    public static ResendSecondaryEmailResult success(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new ResendSecondaryEmailResult().m12616g(Tag.SUCCESS, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    /* renamed from: d */
    public final ResendSecondaryEmailResult m12613d(Tag tag) {
        ResendSecondaryEmailResult resendSecondaryEmailResult = new ResendSecondaryEmailResult();
        resendSecondaryEmailResult.f18435a = tag;
        return resendSecondaryEmailResult;
    }

    /* renamed from: e */
    public final ResendSecondaryEmailResult m12614e(Tag tag, String str) {
        ResendSecondaryEmailResult resendSecondaryEmailResult = new ResendSecondaryEmailResult();
        resendSecondaryEmailResult.f18435a = tag;
        resendSecondaryEmailResult.f18437c = str;
        return resendSecondaryEmailResult;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ResendSecondaryEmailResult)) {
            return false;
        }
        ResendSecondaryEmailResult resendSecondaryEmailResult = (ResendSecondaryEmailResult) obj;
        Tag tag = this.f18435a;
        if (tag != resendSecondaryEmailResult.f18435a) {
            return false;
        }
        int i = C3191a.f18439a[tag.ordinal()];
        if (i == 1) {
            String str = this.f18436b;
            String str2 = resendSecondaryEmailResult.f18436b;
            return str == str2 || str.equals(str2);
        }
        if (i == 2) {
            String str3 = this.f18437c;
            String str4 = resendSecondaryEmailResult.f18437c;
            return str3 == str4 || str3.equals(str4);
        }
        if (i != 3) {
            return i == 4;
        }
        String str5 = this.f18438d;
        String str6 = resendSecondaryEmailResult.f18438d;
        return str5 == str6 || str5.equals(str6);
    }

    /* renamed from: f */
    public final ResendSecondaryEmailResult m12615f(Tag tag, String str) {
        ResendSecondaryEmailResult resendSecondaryEmailResult = new ResendSecondaryEmailResult();
        resendSecondaryEmailResult.f18435a = tag;
        resendSecondaryEmailResult.f18438d = str;
        return resendSecondaryEmailResult;
    }

    /* renamed from: g */
    public final ResendSecondaryEmailResult m12616g(Tag tag, String str) {
        ResendSecondaryEmailResult resendSecondaryEmailResult = new ResendSecondaryEmailResult();
        resendSecondaryEmailResult.f18435a = tag;
        resendSecondaryEmailResult.f18436b = str;
        return resendSecondaryEmailResult;
    }

    public String getNotPendingValue() {
        if (this.f18435a == Tag.NOT_PENDING) {
            return this.f18437c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.NOT_PENDING, but was Tag." + this.f18435a.name());
    }

    public String getRateLimitedValue() {
        if (this.f18435a == Tag.RATE_LIMITED) {
            return this.f18438d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.RATE_LIMITED, but was Tag." + this.f18435a.name());
    }

    public String getSuccessValue() {
        if (this.f18435a == Tag.SUCCESS) {
            return this.f18436b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SUCCESS, but was Tag." + this.f18435a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18435a, this.f18436b, this.f18437c, this.f18438d});
    }

    public boolean isNotPending() {
        return this.f18435a == Tag.NOT_PENDING;
    }

    public boolean isOther() {
        return this.f18435a == Tag.OTHER;
    }

    public boolean isRateLimited() {
        return this.f18435a == Tag.RATE_LIMITED;
    }

    public boolean isSuccess() {
        return this.f18435a == Tag.SUCCESS;
    }

    public Tag tag() {
        return this.f18435a;
    }

    public String toString() {
        return C3192b.f18440b.serialize((C3192b) this, false);
    }

    public String toStringMultiline() {
        return C3192b.f18440b.serialize((C3192b) this, true);
    }
}
