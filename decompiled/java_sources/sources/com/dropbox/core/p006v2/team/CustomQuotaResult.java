package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.UserCustomQuotaResult;
import com.dropbox.core.p006v2.team.UserSelectorArg;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
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

/* loaded from: classes4.dex */
public final class CustomQuotaResult {
    public static final CustomQuotaResult OTHER = new CustomQuotaResult().m12143c(Tag.OTHER);

    /* renamed from: a */
    public Tag f18126a;

    /* renamed from: b */
    public UserCustomQuotaResult f18127b;

    /* renamed from: c */
    public UserSelectorArg f18128c;

    /* loaded from: classes4.dex */
    public enum Tag {
        SUCCESS,
        INVALID_USER,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.team.CustomQuotaResult$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3020a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18129a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18129a = iArr;
            try {
                iArr[Tag.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18129a[Tag.INVALID_USER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18129a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.CustomQuotaResult$b */
    /* loaded from: classes4.dex */
    public static class C3021b extends UnionSerializer<CustomQuotaResult> {

        /* renamed from: b */
        public static final C3021b f18130b = new C3021b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public CustomQuotaResult deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            CustomQuotaResult customQuotaResult;
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
                customQuotaResult = CustomQuotaResult.success(UserCustomQuotaResult.C3265a.f18562b.deserialize(jsonParser, true));
            } else if ("invalid_user".equals(readTag)) {
                StoneSerializer.expectField("invalid_user", jsonParser);
                customQuotaResult = CustomQuotaResult.invalidUser(UserSelectorArg.C3275b.f18582b.deserialize(jsonParser));
            } else {
                customQuotaResult = CustomQuotaResult.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return customQuotaResult;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(CustomQuotaResult customQuotaResult, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3020a.f18129a[customQuotaResult.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag(FirebaseAnalytics.Param.SUCCESS, jsonGenerator);
                UserCustomQuotaResult.C3265a.f18562b.serialize(customQuotaResult.f18127b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("invalid_user", jsonGenerator);
            jsonGenerator.writeFieldName("invalid_user");
            UserSelectorArg.C3275b.f18582b.serialize(customQuotaResult.f18128c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static CustomQuotaResult invalidUser(UserSelectorArg userSelectorArg) {
        if (userSelectorArg != null) {
            return new CustomQuotaResult().m12144d(Tag.INVALID_USER, userSelectorArg);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static CustomQuotaResult success(UserCustomQuotaResult userCustomQuotaResult) {
        if (userCustomQuotaResult != null) {
            return new CustomQuotaResult().m12145e(Tag.SUCCESS, userCustomQuotaResult);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final CustomQuotaResult m12143c(Tag tag) {
        CustomQuotaResult customQuotaResult = new CustomQuotaResult();
        customQuotaResult.f18126a = tag;
        return customQuotaResult;
    }

    /* renamed from: d */
    public final CustomQuotaResult m12144d(Tag tag, UserSelectorArg userSelectorArg) {
        CustomQuotaResult customQuotaResult = new CustomQuotaResult();
        customQuotaResult.f18126a = tag;
        customQuotaResult.f18128c = userSelectorArg;
        return customQuotaResult;
    }

    /* renamed from: e */
    public final CustomQuotaResult m12145e(Tag tag, UserCustomQuotaResult userCustomQuotaResult) {
        CustomQuotaResult customQuotaResult = new CustomQuotaResult();
        customQuotaResult.f18126a = tag;
        customQuotaResult.f18127b = userCustomQuotaResult;
        return customQuotaResult;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof CustomQuotaResult)) {
            return false;
        }
        CustomQuotaResult customQuotaResult = (CustomQuotaResult) obj;
        Tag tag = this.f18126a;
        if (tag != customQuotaResult.f18126a) {
            return false;
        }
        int i = C3020a.f18129a[tag.ordinal()];
        if (i == 1) {
            UserCustomQuotaResult userCustomQuotaResult = this.f18127b;
            UserCustomQuotaResult userCustomQuotaResult2 = customQuotaResult.f18127b;
            return userCustomQuotaResult == userCustomQuotaResult2 || userCustomQuotaResult.equals(userCustomQuotaResult2);
        }
        if (i != 2) {
            return i == 3;
        }
        UserSelectorArg userSelectorArg = this.f18128c;
        UserSelectorArg userSelectorArg2 = customQuotaResult.f18128c;
        return userSelectorArg == userSelectorArg2 || userSelectorArg.equals(userSelectorArg2);
    }

    public UserSelectorArg getInvalidUserValue() {
        if (this.f18126a == Tag.INVALID_USER) {
            return this.f18128c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.INVALID_USER, but was Tag." + this.f18126a.name());
    }

    public UserCustomQuotaResult getSuccessValue() {
        if (this.f18126a == Tag.SUCCESS) {
            return this.f18127b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SUCCESS, but was Tag." + this.f18126a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18126a, this.f18127b, this.f18128c});
    }

    public boolean isInvalidUser() {
        return this.f18126a == Tag.INVALID_USER;
    }

    public boolean isOther() {
        return this.f18126a == Tag.OTHER;
    }

    public boolean isSuccess() {
        return this.f18126a == Tag.SUCCESS;
    }

    public Tag tag() {
        return this.f18126a;
    }

    public String toString() {
        return C3021b.f18130b.serialize((C3021b) this, false);
    }

    public String toStringMultiline() {
        return C3021b.f18130b.serialize((C3021b) this, true);
    }
}
