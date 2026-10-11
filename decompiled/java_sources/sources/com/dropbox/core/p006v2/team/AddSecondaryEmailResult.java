package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.secondaryemails.SecondaryEmail;
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
public final class AddSecondaryEmailResult {
    public static final AddSecondaryEmailResult OTHER = new AddSecondaryEmailResult().m12117j(Tag.OTHER);

    /* renamed from: a */
    public Tag f18105a;

    /* renamed from: b */
    public SecondaryEmail f18106b;

    /* renamed from: c */
    public String f18107c;

    /* renamed from: d */
    public String f18108d;

    /* renamed from: e */
    public String f18109e;

    /* renamed from: f */
    public String f18110f;

    /* renamed from: g */
    public String f18111g;

    /* renamed from: h */
    public String f18112h;

    /* renamed from: i */
    public String f18113i;

    /* renamed from: j */
    public String f18114j;

    /* loaded from: classes4.dex */
    public enum Tag {
        SUCCESS,
        UNAVAILABLE,
        ALREADY_PENDING,
        ALREADY_OWNED_BY_USER,
        REACHED_LIMIT,
        TRANSIENT_ERROR,
        TOO_MANY_UPDATES,
        UNKNOWN_ERROR,
        RATE_LIMITED,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.team.AddSecondaryEmailResult$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3009a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18115a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18115a = iArr;
            try {
                iArr[Tag.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18115a[Tag.UNAVAILABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18115a[Tag.ALREADY_PENDING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18115a[Tag.ALREADY_OWNED_BY_USER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18115a[Tag.REACHED_LIMIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18115a[Tag.TRANSIENT_ERROR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18115a[Tag.TOO_MANY_UPDATES.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f18115a[Tag.UNKNOWN_ERROR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f18115a[Tag.RATE_LIMITED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f18115a[Tag.OTHER.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.AddSecondaryEmailResult$b */
    /* loaded from: classes4.dex */
    public static class C3010b extends UnionSerializer<AddSecondaryEmailResult> {

        /* renamed from: b */
        public static final C3010b f18116b = new C3010b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AddSecondaryEmailResult deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            AddSecondaryEmailResult addSecondaryEmailResult;
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
                addSecondaryEmailResult = AddSecondaryEmailResult.success(SecondaryEmail.Serializer.INSTANCE.deserialize(jsonParser, true));
            } else if ("unavailable".equals(readTag)) {
                StoneSerializer.expectField("unavailable", jsonParser);
                addSecondaryEmailResult = AddSecondaryEmailResult.unavailable(StoneSerializers.string().deserialize(jsonParser));
            } else if ("already_pending".equals(readTag)) {
                StoneSerializer.expectField("already_pending", jsonParser);
                addSecondaryEmailResult = AddSecondaryEmailResult.alreadyPending(StoneSerializers.string().deserialize(jsonParser));
            } else if ("already_owned_by_user".equals(readTag)) {
                StoneSerializer.expectField("already_owned_by_user", jsonParser);
                addSecondaryEmailResult = AddSecondaryEmailResult.alreadyOwnedByUser(StoneSerializers.string().deserialize(jsonParser));
            } else if ("reached_limit".equals(readTag)) {
                StoneSerializer.expectField("reached_limit", jsonParser);
                addSecondaryEmailResult = AddSecondaryEmailResult.reachedLimit(StoneSerializers.string().deserialize(jsonParser));
            } else if ("transient_error".equals(readTag)) {
                StoneSerializer.expectField("transient_error", jsonParser);
                addSecondaryEmailResult = AddSecondaryEmailResult.transientError(StoneSerializers.string().deserialize(jsonParser));
            } else if ("too_many_updates".equals(readTag)) {
                StoneSerializer.expectField("too_many_updates", jsonParser);
                addSecondaryEmailResult = AddSecondaryEmailResult.tooManyUpdates(StoneSerializers.string().deserialize(jsonParser));
            } else if ("unknown_error".equals(readTag)) {
                StoneSerializer.expectField("unknown_error", jsonParser);
                addSecondaryEmailResult = AddSecondaryEmailResult.unknownError(StoneSerializers.string().deserialize(jsonParser));
            } else if ("rate_limited".equals(readTag)) {
                StoneSerializer.expectField("rate_limited", jsonParser);
                addSecondaryEmailResult = AddSecondaryEmailResult.rateLimited(StoneSerializers.string().deserialize(jsonParser));
            } else {
                addSecondaryEmailResult = AddSecondaryEmailResult.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return addSecondaryEmailResult;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AddSecondaryEmailResult addSecondaryEmailResult, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C3009a.f18115a[addSecondaryEmailResult.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag(FirebaseAnalytics.Param.SUCCESS, jsonGenerator);
                    SecondaryEmail.Serializer.INSTANCE.serialize(addSecondaryEmailResult.f18106b, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeStartObject();
                    writeTag("unavailable", jsonGenerator);
                    jsonGenerator.writeFieldName("unavailable");
                    StoneSerializers.string().serialize((StoneSerializer<String>) addSecondaryEmailResult.f18107c, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 3:
                    jsonGenerator.writeStartObject();
                    writeTag("already_pending", jsonGenerator);
                    jsonGenerator.writeFieldName("already_pending");
                    StoneSerializers.string().serialize((StoneSerializer<String>) addSecondaryEmailResult.f18108d, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 4:
                    jsonGenerator.writeStartObject();
                    writeTag("already_owned_by_user", jsonGenerator);
                    jsonGenerator.writeFieldName("already_owned_by_user");
                    StoneSerializers.string().serialize((StoneSerializer<String>) addSecondaryEmailResult.f18109e, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 5:
                    jsonGenerator.writeStartObject();
                    writeTag("reached_limit", jsonGenerator);
                    jsonGenerator.writeFieldName("reached_limit");
                    StoneSerializers.string().serialize((StoneSerializer<String>) addSecondaryEmailResult.f18110f, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 6:
                    jsonGenerator.writeStartObject();
                    writeTag("transient_error", jsonGenerator);
                    jsonGenerator.writeFieldName("transient_error");
                    StoneSerializers.string().serialize((StoneSerializer<String>) addSecondaryEmailResult.f18111g, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 7:
                    jsonGenerator.writeStartObject();
                    writeTag("too_many_updates", jsonGenerator);
                    jsonGenerator.writeFieldName("too_many_updates");
                    StoneSerializers.string().serialize((StoneSerializer<String>) addSecondaryEmailResult.f18112h, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 8:
                    jsonGenerator.writeStartObject();
                    writeTag("unknown_error", jsonGenerator);
                    jsonGenerator.writeFieldName("unknown_error");
                    StoneSerializers.string().serialize((StoneSerializer<String>) addSecondaryEmailResult.f18113i, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 9:
                    jsonGenerator.writeStartObject();
                    writeTag("rate_limited", jsonGenerator);
                    jsonGenerator.writeFieldName("rate_limited");
                    StoneSerializers.string().serialize((StoneSerializer<String>) addSecondaryEmailResult.f18114j, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }

    public static AddSecondaryEmailResult alreadyOwnedByUser(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new AddSecondaryEmailResult().m12118k(Tag.ALREADY_OWNED_BY_USER, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    public static AddSecondaryEmailResult alreadyPending(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new AddSecondaryEmailResult().m12119l(Tag.ALREADY_PENDING, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    public static AddSecondaryEmailResult rateLimited(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new AddSecondaryEmailResult().m12120m(Tag.RATE_LIMITED, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    public static AddSecondaryEmailResult reachedLimit(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new AddSecondaryEmailResult().m12121n(Tag.REACHED_LIMIT, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    public static AddSecondaryEmailResult success(SecondaryEmail secondaryEmail) {
        if (secondaryEmail != null) {
            return new AddSecondaryEmailResult().m12122o(Tag.SUCCESS, secondaryEmail);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static AddSecondaryEmailResult tooManyUpdates(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new AddSecondaryEmailResult().m12123p(Tag.TOO_MANY_UPDATES, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    public static AddSecondaryEmailResult transientError(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new AddSecondaryEmailResult().m12124q(Tag.TRANSIENT_ERROR, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    public static AddSecondaryEmailResult unavailable(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new AddSecondaryEmailResult().m12125r(Tag.UNAVAILABLE, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    public static AddSecondaryEmailResult unknownError(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new AddSecondaryEmailResult().m12126s(Tag.UNKNOWN_ERROR, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof AddSecondaryEmailResult)) {
            return false;
        }
        AddSecondaryEmailResult addSecondaryEmailResult = (AddSecondaryEmailResult) obj;
        Tag tag = this.f18105a;
        if (tag != addSecondaryEmailResult.f18105a) {
            return false;
        }
        switch (C3009a.f18115a[tag.ordinal()]) {
            case 1:
                SecondaryEmail secondaryEmail = this.f18106b;
                SecondaryEmail secondaryEmail2 = addSecondaryEmailResult.f18106b;
                return secondaryEmail == secondaryEmail2 || secondaryEmail.equals(secondaryEmail2);
            case 2:
                String str = this.f18107c;
                String str2 = addSecondaryEmailResult.f18107c;
                return str == str2 || str.equals(str2);
            case 3:
                String str3 = this.f18108d;
                String str4 = addSecondaryEmailResult.f18108d;
                return str3 == str4 || str3.equals(str4);
            case 4:
                String str5 = this.f18109e;
                String str6 = addSecondaryEmailResult.f18109e;
                return str5 == str6 || str5.equals(str6);
            case 5:
                String str7 = this.f18110f;
                String str8 = addSecondaryEmailResult.f18110f;
                return str7 == str8 || str7.equals(str8);
            case 6:
                String str9 = this.f18111g;
                String str10 = addSecondaryEmailResult.f18111g;
                return str9 == str10 || str9.equals(str10);
            case 7:
                String str11 = this.f18112h;
                String str12 = addSecondaryEmailResult.f18112h;
                return str11 == str12 || str11.equals(str12);
            case 8:
                String str13 = this.f18113i;
                String str14 = addSecondaryEmailResult.f18113i;
                return str13 == str14 || str13.equals(str14);
            case 9:
                String str15 = this.f18114j;
                String str16 = addSecondaryEmailResult.f18114j;
                return str15 == str16 || str15.equals(str16);
            case 10:
                return true;
            default:
                return false;
        }
    }

    public String getAlreadyOwnedByUserValue() {
        if (this.f18105a == Tag.ALREADY_OWNED_BY_USER) {
            return this.f18109e;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ALREADY_OWNED_BY_USER, but was Tag." + this.f18105a.name());
    }

    public String getAlreadyPendingValue() {
        if (this.f18105a == Tag.ALREADY_PENDING) {
            return this.f18108d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ALREADY_PENDING, but was Tag." + this.f18105a.name());
    }

    public String getRateLimitedValue() {
        if (this.f18105a == Tag.RATE_LIMITED) {
            return this.f18114j;
        }
        throw new IllegalStateException("Invalid tag: required Tag.RATE_LIMITED, but was Tag." + this.f18105a.name());
    }

    public String getReachedLimitValue() {
        if (this.f18105a == Tag.REACHED_LIMIT) {
            return this.f18110f;
        }
        throw new IllegalStateException("Invalid tag: required Tag.REACHED_LIMIT, but was Tag." + this.f18105a.name());
    }

    public SecondaryEmail getSuccessValue() {
        if (this.f18105a == Tag.SUCCESS) {
            return this.f18106b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SUCCESS, but was Tag." + this.f18105a.name());
    }

    public String getTooManyUpdatesValue() {
        if (this.f18105a == Tag.TOO_MANY_UPDATES) {
            return this.f18112h;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TOO_MANY_UPDATES, but was Tag." + this.f18105a.name());
    }

    public String getTransientErrorValue() {
        if (this.f18105a == Tag.TRANSIENT_ERROR) {
            return this.f18111g;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TRANSIENT_ERROR, but was Tag." + this.f18105a.name());
    }

    public String getUnavailableValue() {
        if (this.f18105a == Tag.UNAVAILABLE) {
            return this.f18107c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.UNAVAILABLE, but was Tag." + this.f18105a.name());
    }

    public String getUnknownErrorValue() {
        if (this.f18105a == Tag.UNKNOWN_ERROR) {
            return this.f18113i;
        }
        throw new IllegalStateException("Invalid tag: required Tag.UNKNOWN_ERROR, but was Tag." + this.f18105a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18105a, this.f18106b, this.f18107c, this.f18108d, this.f18109e, this.f18110f, this.f18111g, this.f18112h, this.f18113i, this.f18114j});
    }

    public boolean isAlreadyOwnedByUser() {
        return this.f18105a == Tag.ALREADY_OWNED_BY_USER;
    }

    public boolean isAlreadyPending() {
        return this.f18105a == Tag.ALREADY_PENDING;
    }

    public boolean isOther() {
        return this.f18105a == Tag.OTHER;
    }

    public boolean isRateLimited() {
        return this.f18105a == Tag.RATE_LIMITED;
    }

    public boolean isReachedLimit() {
        return this.f18105a == Tag.REACHED_LIMIT;
    }

    public boolean isSuccess() {
        return this.f18105a == Tag.SUCCESS;
    }

    public boolean isTooManyUpdates() {
        return this.f18105a == Tag.TOO_MANY_UPDATES;
    }

    public boolean isTransientError() {
        return this.f18105a == Tag.TRANSIENT_ERROR;
    }

    public boolean isUnavailable() {
        return this.f18105a == Tag.UNAVAILABLE;
    }

    public boolean isUnknownError() {
        return this.f18105a == Tag.UNKNOWN_ERROR;
    }

    /* renamed from: j */
    public final AddSecondaryEmailResult m12117j(Tag tag) {
        AddSecondaryEmailResult addSecondaryEmailResult = new AddSecondaryEmailResult();
        addSecondaryEmailResult.f18105a = tag;
        return addSecondaryEmailResult;
    }

    /* renamed from: k */
    public final AddSecondaryEmailResult m12118k(Tag tag, String str) {
        AddSecondaryEmailResult addSecondaryEmailResult = new AddSecondaryEmailResult();
        addSecondaryEmailResult.f18105a = tag;
        addSecondaryEmailResult.f18109e = str;
        return addSecondaryEmailResult;
    }

    /* renamed from: l */
    public final AddSecondaryEmailResult m12119l(Tag tag, String str) {
        AddSecondaryEmailResult addSecondaryEmailResult = new AddSecondaryEmailResult();
        addSecondaryEmailResult.f18105a = tag;
        addSecondaryEmailResult.f18108d = str;
        return addSecondaryEmailResult;
    }

    /* renamed from: m */
    public final AddSecondaryEmailResult m12120m(Tag tag, String str) {
        AddSecondaryEmailResult addSecondaryEmailResult = new AddSecondaryEmailResult();
        addSecondaryEmailResult.f18105a = tag;
        addSecondaryEmailResult.f18114j = str;
        return addSecondaryEmailResult;
    }

    /* renamed from: n */
    public final AddSecondaryEmailResult m12121n(Tag tag, String str) {
        AddSecondaryEmailResult addSecondaryEmailResult = new AddSecondaryEmailResult();
        addSecondaryEmailResult.f18105a = tag;
        addSecondaryEmailResult.f18110f = str;
        return addSecondaryEmailResult;
    }

    /* renamed from: o */
    public final AddSecondaryEmailResult m12122o(Tag tag, SecondaryEmail secondaryEmail) {
        AddSecondaryEmailResult addSecondaryEmailResult = new AddSecondaryEmailResult();
        addSecondaryEmailResult.f18105a = tag;
        addSecondaryEmailResult.f18106b = secondaryEmail;
        return addSecondaryEmailResult;
    }

    /* renamed from: p */
    public final AddSecondaryEmailResult m12123p(Tag tag, String str) {
        AddSecondaryEmailResult addSecondaryEmailResult = new AddSecondaryEmailResult();
        addSecondaryEmailResult.f18105a = tag;
        addSecondaryEmailResult.f18112h = str;
        return addSecondaryEmailResult;
    }

    /* renamed from: q */
    public final AddSecondaryEmailResult m12124q(Tag tag, String str) {
        AddSecondaryEmailResult addSecondaryEmailResult = new AddSecondaryEmailResult();
        addSecondaryEmailResult.f18105a = tag;
        addSecondaryEmailResult.f18111g = str;
        return addSecondaryEmailResult;
    }

    /* renamed from: r */
    public final AddSecondaryEmailResult m12125r(Tag tag, String str) {
        AddSecondaryEmailResult addSecondaryEmailResult = new AddSecondaryEmailResult();
        addSecondaryEmailResult.f18105a = tag;
        addSecondaryEmailResult.f18107c = str;
        return addSecondaryEmailResult;
    }

    /* renamed from: s */
    public final AddSecondaryEmailResult m12126s(Tag tag, String str) {
        AddSecondaryEmailResult addSecondaryEmailResult = new AddSecondaryEmailResult();
        addSecondaryEmailResult.f18105a = tag;
        addSecondaryEmailResult.f18113i = str;
        return addSecondaryEmailResult;
    }

    public Tag tag() {
        return this.f18105a;
    }

    public String toString() {
        return C3010b.f18116b.serialize((C3010b) this, false);
    }

    public String toStringMultiline() {
        return C3010b.f18116b.serialize((C3010b) this, true);
    }
}
