package com.dropbox.core.p006v2.team;

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
public final class RemoveCustomQuotaResult {
    public static final RemoveCustomQuotaResult OTHER = new RemoveCustomQuotaResult().m12603c(Tag.OTHER);

    /* renamed from: a */
    public Tag f18421a;

    /* renamed from: b */
    public UserSelectorArg f18422b;

    /* renamed from: c */
    public UserSelectorArg f18423c;

    /* loaded from: classes4.dex */
    public enum Tag {
        SUCCESS,
        INVALID_USER,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.team.RemoveCustomQuotaResult$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3188a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18424a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18424a = iArr;
            try {
                iArr[Tag.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18424a[Tag.INVALID_USER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18424a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.RemoveCustomQuotaResult$b */
    /* loaded from: classes4.dex */
    public static class C3189b extends UnionSerializer<RemoveCustomQuotaResult> {

        /* renamed from: b */
        public static final C3189b f18425b = new C3189b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RemoveCustomQuotaResult deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            RemoveCustomQuotaResult removeCustomQuotaResult;
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
                removeCustomQuotaResult = RemoveCustomQuotaResult.success(UserSelectorArg.C3275b.f18582b.deserialize(jsonParser));
            } else if ("invalid_user".equals(readTag)) {
                StoneSerializer.expectField("invalid_user", jsonParser);
                removeCustomQuotaResult = RemoveCustomQuotaResult.invalidUser(UserSelectorArg.C3275b.f18582b.deserialize(jsonParser));
            } else {
                removeCustomQuotaResult = RemoveCustomQuotaResult.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return removeCustomQuotaResult;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RemoveCustomQuotaResult removeCustomQuotaResult, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3188a.f18424a[removeCustomQuotaResult.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag(FirebaseAnalytics.Param.SUCCESS, jsonGenerator);
                jsonGenerator.writeFieldName(FirebaseAnalytics.Param.SUCCESS);
                UserSelectorArg.C3275b.f18582b.serialize(removeCustomQuotaResult.f18422b, jsonGenerator);
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
            UserSelectorArg.C3275b.f18582b.serialize(removeCustomQuotaResult.f18423c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static RemoveCustomQuotaResult invalidUser(UserSelectorArg userSelectorArg) {
        if (userSelectorArg != null) {
            return new RemoveCustomQuotaResult().m12604d(Tag.INVALID_USER, userSelectorArg);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static RemoveCustomQuotaResult success(UserSelectorArg userSelectorArg) {
        if (userSelectorArg != null) {
            return new RemoveCustomQuotaResult().m12605e(Tag.SUCCESS, userSelectorArg);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final RemoveCustomQuotaResult m12603c(Tag tag) {
        RemoveCustomQuotaResult removeCustomQuotaResult = new RemoveCustomQuotaResult();
        removeCustomQuotaResult.f18421a = tag;
        return removeCustomQuotaResult;
    }

    /* renamed from: d */
    public final RemoveCustomQuotaResult m12604d(Tag tag, UserSelectorArg userSelectorArg) {
        RemoveCustomQuotaResult removeCustomQuotaResult = new RemoveCustomQuotaResult();
        removeCustomQuotaResult.f18421a = tag;
        removeCustomQuotaResult.f18423c = userSelectorArg;
        return removeCustomQuotaResult;
    }

    /* renamed from: e */
    public final RemoveCustomQuotaResult m12605e(Tag tag, UserSelectorArg userSelectorArg) {
        RemoveCustomQuotaResult removeCustomQuotaResult = new RemoveCustomQuotaResult();
        removeCustomQuotaResult.f18421a = tag;
        removeCustomQuotaResult.f18422b = userSelectorArg;
        return removeCustomQuotaResult;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof RemoveCustomQuotaResult)) {
            return false;
        }
        RemoveCustomQuotaResult removeCustomQuotaResult = (RemoveCustomQuotaResult) obj;
        Tag tag = this.f18421a;
        if (tag != removeCustomQuotaResult.f18421a) {
            return false;
        }
        int i = C3188a.f18424a[tag.ordinal()];
        if (i == 1) {
            UserSelectorArg userSelectorArg = this.f18422b;
            UserSelectorArg userSelectorArg2 = removeCustomQuotaResult.f18422b;
            return userSelectorArg == userSelectorArg2 || userSelectorArg.equals(userSelectorArg2);
        }
        if (i != 2) {
            return i == 3;
        }
        UserSelectorArg userSelectorArg3 = this.f18423c;
        UserSelectorArg userSelectorArg4 = removeCustomQuotaResult.f18423c;
        return userSelectorArg3 == userSelectorArg4 || userSelectorArg3.equals(userSelectorArg4);
    }

    public UserSelectorArg getInvalidUserValue() {
        if (this.f18421a == Tag.INVALID_USER) {
            return this.f18423c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.INVALID_USER, but was Tag." + this.f18421a.name());
    }

    public UserSelectorArg getSuccessValue() {
        if (this.f18421a == Tag.SUCCESS) {
            return this.f18422b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SUCCESS, but was Tag." + this.f18421a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18421a, this.f18422b, this.f18423c});
    }

    public boolean isInvalidUser() {
        return this.f18421a == Tag.INVALID_USER;
    }

    public boolean isOther() {
        return this.f18421a == Tag.OTHER;
    }

    public boolean isSuccess() {
        return this.f18421a == Tag.SUCCESS;
    }

    public Tag tag() {
        return this.f18421a;
    }

    public String toString() {
        return C3189b.f18425b.serialize((C3189b) this, false);
    }

    public String toStringMultiline() {
        return C3189b.f18425b.serialize((C3189b) this, true);
    }
}
