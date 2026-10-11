package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.UserDeleteEmailsResult;
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
public final class UserDeleteResult {
    public static final UserDeleteResult OTHER = new UserDeleteResult().m12795c(Tag.OTHER);

    /* renamed from: a */
    public Tag f18564a;

    /* renamed from: b */
    public UserDeleteEmailsResult f18565b;

    /* renamed from: c */
    public UserSelectorArg f18566c;

    /* loaded from: classes4.dex */
    public enum Tag {
        SUCCESS,
        INVALID_USER,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.team.UserDeleteResult$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3267a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18567a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18567a = iArr;
            try {
                iArr[Tag.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18567a[Tag.INVALID_USER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18567a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.UserDeleteResult$b */
    /* loaded from: classes4.dex */
    public static class C3268b extends UnionSerializer<UserDeleteResult> {

        /* renamed from: b */
        public static final C3268b f18568b = new C3268b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UserDeleteResult deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            UserDeleteResult userDeleteResult;
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
                userDeleteResult = UserDeleteResult.success(UserDeleteEmailsResult.C3266a.f18563b.deserialize(jsonParser, true));
            } else if ("invalid_user".equals(readTag)) {
                StoneSerializer.expectField("invalid_user", jsonParser);
                userDeleteResult = UserDeleteResult.invalidUser(UserSelectorArg.C3275b.f18582b.deserialize(jsonParser));
            } else {
                userDeleteResult = UserDeleteResult.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return userDeleteResult;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UserDeleteResult userDeleteResult, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3267a.f18567a[userDeleteResult.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag(FirebaseAnalytics.Param.SUCCESS, jsonGenerator);
                UserDeleteEmailsResult.C3266a.f18563b.serialize(userDeleteResult.f18565b, jsonGenerator, true);
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
            UserSelectorArg.C3275b.f18582b.serialize(userDeleteResult.f18566c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static UserDeleteResult invalidUser(UserSelectorArg userSelectorArg) {
        if (userSelectorArg != null) {
            return new UserDeleteResult().m12796d(Tag.INVALID_USER, userSelectorArg);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static UserDeleteResult success(UserDeleteEmailsResult userDeleteEmailsResult) {
        if (userDeleteEmailsResult != null) {
            return new UserDeleteResult().m12797e(Tag.SUCCESS, userDeleteEmailsResult);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final UserDeleteResult m12795c(Tag tag) {
        UserDeleteResult userDeleteResult = new UserDeleteResult();
        userDeleteResult.f18564a = tag;
        return userDeleteResult;
    }

    /* renamed from: d */
    public final UserDeleteResult m12796d(Tag tag, UserSelectorArg userSelectorArg) {
        UserDeleteResult userDeleteResult = new UserDeleteResult();
        userDeleteResult.f18564a = tag;
        userDeleteResult.f18566c = userSelectorArg;
        return userDeleteResult;
    }

    /* renamed from: e */
    public final UserDeleteResult m12797e(Tag tag, UserDeleteEmailsResult userDeleteEmailsResult) {
        UserDeleteResult userDeleteResult = new UserDeleteResult();
        userDeleteResult.f18564a = tag;
        userDeleteResult.f18565b = userDeleteEmailsResult;
        return userDeleteResult;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UserDeleteResult)) {
            return false;
        }
        UserDeleteResult userDeleteResult = (UserDeleteResult) obj;
        Tag tag = this.f18564a;
        if (tag != userDeleteResult.f18564a) {
            return false;
        }
        int i = C3267a.f18567a[tag.ordinal()];
        if (i == 1) {
            UserDeleteEmailsResult userDeleteEmailsResult = this.f18565b;
            UserDeleteEmailsResult userDeleteEmailsResult2 = userDeleteResult.f18565b;
            return userDeleteEmailsResult == userDeleteEmailsResult2 || userDeleteEmailsResult.equals(userDeleteEmailsResult2);
        }
        if (i != 2) {
            return i == 3;
        }
        UserSelectorArg userSelectorArg = this.f18566c;
        UserSelectorArg userSelectorArg2 = userDeleteResult.f18566c;
        return userSelectorArg == userSelectorArg2 || userSelectorArg.equals(userSelectorArg2);
    }

    public UserSelectorArg getInvalidUserValue() {
        if (this.f18564a == Tag.INVALID_USER) {
            return this.f18566c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.INVALID_USER, but was Tag." + this.f18564a.name());
    }

    public UserDeleteEmailsResult getSuccessValue() {
        if (this.f18564a == Tag.SUCCESS) {
            return this.f18565b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SUCCESS, but was Tag." + this.f18564a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18564a, this.f18565b, this.f18566c});
    }

    public boolean isInvalidUser() {
        return this.f18564a == Tag.INVALID_USER;
    }

    public boolean isOther() {
        return this.f18564a == Tag.OTHER;
    }

    public boolean isSuccess() {
        return this.f18564a == Tag.SUCCESS;
    }

    public Tag tag() {
        return this.f18564a;
    }

    public String toString() {
        return C3268b.f18568b.serialize((C3268b) this, false);
    }

    public String toStringMultiline() {
        return C3268b.f18568b.serialize((C3268b) this, true);
    }
}
