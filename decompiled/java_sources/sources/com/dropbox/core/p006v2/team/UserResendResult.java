package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.UserResendEmailsResult;
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
public final class UserResendResult {
    public static final UserResendResult OTHER = new UserResendResult().m12804c(Tag.OTHER);

    /* renamed from: a */
    public Tag f18570a;

    /* renamed from: b */
    public UserResendEmailsResult f18571b;

    /* renamed from: c */
    public UserSelectorArg f18572c;

    /* loaded from: classes4.dex */
    public enum Tag {
        SUCCESS,
        INVALID_USER,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.team.UserResendResult$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3270a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18573a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18573a = iArr;
            try {
                iArr[Tag.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18573a[Tag.INVALID_USER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18573a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.UserResendResult$b */
    /* loaded from: classes4.dex */
    public static class C3271b extends UnionSerializer<UserResendResult> {

        /* renamed from: b */
        public static final C3271b f18574b = new C3271b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UserResendResult deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            UserResendResult userResendResult;
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
                userResendResult = UserResendResult.success(UserResendEmailsResult.C3269a.f18569b.deserialize(jsonParser, true));
            } else if ("invalid_user".equals(readTag)) {
                StoneSerializer.expectField("invalid_user", jsonParser);
                userResendResult = UserResendResult.invalidUser(UserSelectorArg.C3275b.f18582b.deserialize(jsonParser));
            } else {
                userResendResult = UserResendResult.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return userResendResult;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UserResendResult userResendResult, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3270a.f18573a[userResendResult.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag(FirebaseAnalytics.Param.SUCCESS, jsonGenerator);
                UserResendEmailsResult.C3269a.f18569b.serialize(userResendResult.f18571b, jsonGenerator, true);
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
            UserSelectorArg.C3275b.f18582b.serialize(userResendResult.f18572c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static UserResendResult invalidUser(UserSelectorArg userSelectorArg) {
        if (userSelectorArg != null) {
            return new UserResendResult().m12805d(Tag.INVALID_USER, userSelectorArg);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static UserResendResult success(UserResendEmailsResult userResendEmailsResult) {
        if (userResendEmailsResult != null) {
            return new UserResendResult().m12806e(Tag.SUCCESS, userResendEmailsResult);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final UserResendResult m12804c(Tag tag) {
        UserResendResult userResendResult = new UserResendResult();
        userResendResult.f18570a = tag;
        return userResendResult;
    }

    /* renamed from: d */
    public final UserResendResult m12805d(Tag tag, UserSelectorArg userSelectorArg) {
        UserResendResult userResendResult = new UserResendResult();
        userResendResult.f18570a = tag;
        userResendResult.f18572c = userSelectorArg;
        return userResendResult;
    }

    /* renamed from: e */
    public final UserResendResult m12806e(Tag tag, UserResendEmailsResult userResendEmailsResult) {
        UserResendResult userResendResult = new UserResendResult();
        userResendResult.f18570a = tag;
        userResendResult.f18571b = userResendEmailsResult;
        return userResendResult;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UserResendResult)) {
            return false;
        }
        UserResendResult userResendResult = (UserResendResult) obj;
        Tag tag = this.f18570a;
        if (tag != userResendResult.f18570a) {
            return false;
        }
        int i = C3270a.f18573a[tag.ordinal()];
        if (i == 1) {
            UserResendEmailsResult userResendEmailsResult = this.f18571b;
            UserResendEmailsResult userResendEmailsResult2 = userResendResult.f18571b;
            return userResendEmailsResult == userResendEmailsResult2 || userResendEmailsResult.equals(userResendEmailsResult2);
        }
        if (i != 2) {
            return i == 3;
        }
        UserSelectorArg userSelectorArg = this.f18572c;
        UserSelectorArg userSelectorArg2 = userResendResult.f18572c;
        return userSelectorArg == userSelectorArg2 || userSelectorArg.equals(userSelectorArg2);
    }

    public UserSelectorArg getInvalidUserValue() {
        if (this.f18570a == Tag.INVALID_USER) {
            return this.f18572c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.INVALID_USER, but was Tag." + this.f18570a.name());
    }

    public UserResendEmailsResult getSuccessValue() {
        if (this.f18570a == Tag.SUCCESS) {
            return this.f18571b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SUCCESS, but was Tag." + this.f18570a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18570a, this.f18571b, this.f18572c});
    }

    public boolean isInvalidUser() {
        return this.f18570a == Tag.INVALID_USER;
    }

    public boolean isOther() {
        return this.f18570a == Tag.OTHER;
    }

    public boolean isSuccess() {
        return this.f18570a == Tag.SUCCESS;
    }

    public Tag tag() {
        return this.f18570a;
    }

    public String toString() {
        return C3271b.f18574b.serialize((C3271b) this, false);
    }

    public String toStringMultiline() {
        return C3271b.f18574b.serialize((C3271b) this, true);
    }
}
