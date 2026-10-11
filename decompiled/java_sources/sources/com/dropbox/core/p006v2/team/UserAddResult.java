package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.UserSecondaryEmailsResult;
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
public final class UserAddResult {
    public static final UserAddResult OTHER = new UserAddResult().m12780e(Tag.OTHER);

    /* renamed from: a */
    public Tag f18554a;

    /* renamed from: b */
    public UserSecondaryEmailsResult f18555b;

    /* renamed from: c */
    public UserSelectorArg f18556c;

    /* renamed from: d */
    public UserSelectorArg f18557d;

    /* renamed from: e */
    public UserSelectorArg f18558e;

    /* loaded from: classes4.dex */
    public enum Tag {
        SUCCESS,
        INVALID_USER,
        UNVERIFIED,
        PLACEHOLDER_USER,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.team.UserAddResult$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3262a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18559a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18559a = iArr;
            try {
                iArr[Tag.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18559a[Tag.INVALID_USER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18559a[Tag.UNVERIFIED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18559a[Tag.PLACEHOLDER_USER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18559a[Tag.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.UserAddResult$b */
    /* loaded from: classes4.dex */
    public static class C3263b extends UnionSerializer<UserAddResult> {

        /* renamed from: b */
        public static final C3263b f18560b = new C3263b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UserAddResult deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            UserAddResult userAddResult;
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
                userAddResult = UserAddResult.success(UserSecondaryEmailsResult.C3273a.f18576b.deserialize(jsonParser, true));
            } else if ("invalid_user".equals(readTag)) {
                StoneSerializer.expectField("invalid_user", jsonParser);
                userAddResult = UserAddResult.invalidUser(UserSelectorArg.C3275b.f18582b.deserialize(jsonParser));
            } else if ("unverified".equals(readTag)) {
                StoneSerializer.expectField("unverified", jsonParser);
                userAddResult = UserAddResult.unverified(UserSelectorArg.C3275b.f18582b.deserialize(jsonParser));
            } else if ("placeholder_user".equals(readTag)) {
                StoneSerializer.expectField("placeholder_user", jsonParser);
                userAddResult = UserAddResult.placeholderUser(UserSelectorArg.C3275b.f18582b.deserialize(jsonParser));
            } else {
                userAddResult = UserAddResult.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return userAddResult;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UserAddResult userAddResult, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3262a.f18559a[userAddResult.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag(FirebaseAnalytics.Param.SUCCESS, jsonGenerator);
                UserSecondaryEmailsResult.C3273a.f18576b.serialize(userAddResult.f18555b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("invalid_user", jsonGenerator);
                jsonGenerator.writeFieldName("invalid_user");
                UserSelectorArg.C3275b.f18582b.serialize(userAddResult.f18556c, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 3) {
                jsonGenerator.writeStartObject();
                writeTag("unverified", jsonGenerator);
                jsonGenerator.writeFieldName("unverified");
                UserSelectorArg.C3275b.f18582b.serialize(userAddResult.f18557d, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("placeholder_user", jsonGenerator);
            jsonGenerator.writeFieldName("placeholder_user");
            UserSelectorArg.C3275b.f18582b.serialize(userAddResult.f18558e, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static UserAddResult invalidUser(UserSelectorArg userSelectorArg) {
        if (userSelectorArg != null) {
            return new UserAddResult().m12781f(Tag.INVALID_USER, userSelectorArg);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static UserAddResult placeholderUser(UserSelectorArg userSelectorArg) {
        if (userSelectorArg != null) {
            return new UserAddResult().m12782g(Tag.PLACEHOLDER_USER, userSelectorArg);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static UserAddResult success(UserSecondaryEmailsResult userSecondaryEmailsResult) {
        if (userSecondaryEmailsResult != null) {
            return new UserAddResult().m12783h(Tag.SUCCESS, userSecondaryEmailsResult);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static UserAddResult unverified(UserSelectorArg userSelectorArg) {
        if (userSelectorArg != null) {
            return new UserAddResult().m12784i(Tag.UNVERIFIED, userSelectorArg);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: e */
    public final UserAddResult m12780e(Tag tag) {
        UserAddResult userAddResult = new UserAddResult();
        userAddResult.f18554a = tag;
        return userAddResult;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UserAddResult)) {
            return false;
        }
        UserAddResult userAddResult = (UserAddResult) obj;
        Tag tag = this.f18554a;
        if (tag != userAddResult.f18554a) {
            return false;
        }
        int i = C3262a.f18559a[tag.ordinal()];
        if (i == 1) {
            UserSecondaryEmailsResult userSecondaryEmailsResult = this.f18555b;
            UserSecondaryEmailsResult userSecondaryEmailsResult2 = userAddResult.f18555b;
            return userSecondaryEmailsResult == userSecondaryEmailsResult2 || userSecondaryEmailsResult.equals(userSecondaryEmailsResult2);
        }
        if (i == 2) {
            UserSelectorArg userSelectorArg = this.f18556c;
            UserSelectorArg userSelectorArg2 = userAddResult.f18556c;
            return userSelectorArg == userSelectorArg2 || userSelectorArg.equals(userSelectorArg2);
        }
        if (i == 3) {
            UserSelectorArg userSelectorArg3 = this.f18557d;
            UserSelectorArg userSelectorArg4 = userAddResult.f18557d;
            return userSelectorArg3 == userSelectorArg4 || userSelectorArg3.equals(userSelectorArg4);
        }
        if (i != 4) {
            return i == 5;
        }
        UserSelectorArg userSelectorArg5 = this.f18558e;
        UserSelectorArg userSelectorArg6 = userAddResult.f18558e;
        return userSelectorArg5 == userSelectorArg6 || userSelectorArg5.equals(userSelectorArg6);
    }

    /* renamed from: f */
    public final UserAddResult m12781f(Tag tag, UserSelectorArg userSelectorArg) {
        UserAddResult userAddResult = new UserAddResult();
        userAddResult.f18554a = tag;
        userAddResult.f18556c = userSelectorArg;
        return userAddResult;
    }

    /* renamed from: g */
    public final UserAddResult m12782g(Tag tag, UserSelectorArg userSelectorArg) {
        UserAddResult userAddResult = new UserAddResult();
        userAddResult.f18554a = tag;
        userAddResult.f18558e = userSelectorArg;
        return userAddResult;
    }

    public UserSelectorArg getInvalidUserValue() {
        if (this.f18554a == Tag.INVALID_USER) {
            return this.f18556c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.INVALID_USER, but was Tag." + this.f18554a.name());
    }

    public UserSelectorArg getPlaceholderUserValue() {
        if (this.f18554a == Tag.PLACEHOLDER_USER) {
            return this.f18558e;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PLACEHOLDER_USER, but was Tag." + this.f18554a.name());
    }

    public UserSecondaryEmailsResult getSuccessValue() {
        if (this.f18554a == Tag.SUCCESS) {
            return this.f18555b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SUCCESS, but was Tag." + this.f18554a.name());
    }

    public UserSelectorArg getUnverifiedValue() {
        if (this.f18554a == Tag.UNVERIFIED) {
            return this.f18557d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.UNVERIFIED, but was Tag." + this.f18554a.name());
    }

    /* renamed from: h */
    public final UserAddResult m12783h(Tag tag, UserSecondaryEmailsResult userSecondaryEmailsResult) {
        UserAddResult userAddResult = new UserAddResult();
        userAddResult.f18554a = tag;
        userAddResult.f18555b = userSecondaryEmailsResult;
        return userAddResult;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18554a, this.f18555b, this.f18556c, this.f18557d, this.f18558e});
    }

    /* renamed from: i */
    public final UserAddResult m12784i(Tag tag, UserSelectorArg userSelectorArg) {
        UserAddResult userAddResult = new UserAddResult();
        userAddResult.f18554a = tag;
        userAddResult.f18557d = userSelectorArg;
        return userAddResult;
    }

    public boolean isInvalidUser() {
        return this.f18554a == Tag.INVALID_USER;
    }

    public boolean isOther() {
        return this.f18554a == Tag.OTHER;
    }

    public boolean isPlaceholderUser() {
        return this.f18554a == Tag.PLACEHOLDER_USER;
    }

    public boolean isSuccess() {
        return this.f18554a == Tag.SUCCESS;
    }

    public boolean isUnverified() {
        return this.f18554a == Tag.UNVERIFIED;
    }

    public Tag tag() {
        return this.f18554a;
    }

    public String toString() {
        return C3263b.f18560b.serialize((C3263b) this, false);
    }

    public String toStringMultiline() {
        return C3263b.f18560b.serialize((C3263b) this, true);
    }
}
