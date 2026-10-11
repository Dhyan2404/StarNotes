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
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public final class UserSelectorArg {

    /* renamed from: a */
    public Tag f18577a;

    /* renamed from: b */
    public String f18578b;

    /* renamed from: c */
    public String f18579c;

    /* renamed from: d */
    public String f18580d;

    /* loaded from: classes4.dex */
    public enum Tag {
        TEAM_MEMBER_ID,
        EXTERNAL_ID,
        EMAIL
    }

    /* renamed from: com.dropbox.core.v2.team.UserSelectorArg$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3274a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18581a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18581a = iArr;
            try {
                iArr[Tag.TEAM_MEMBER_ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18581a[Tag.EXTERNAL_ID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18581a[Tag.EMAIL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.UserSelectorArg$b */
    /* loaded from: classes4.dex */
    public static class C3275b extends UnionSerializer<UserSelectorArg> {

        /* renamed from: b */
        public static final C3275b f18582b = new C3275b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UserSelectorArg deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            UserSelectorArg email;
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
            if ("team_member_id".equals(readTag)) {
                StoneSerializer.expectField("team_member_id", jsonParser);
                email = UserSelectorArg.teamMemberId(StoneSerializers.string().deserialize(jsonParser));
            } else if ("external_id".equals(readTag)) {
                StoneSerializer.expectField("external_id", jsonParser);
                email = UserSelectorArg.externalId(StoneSerializers.string().deserialize(jsonParser));
            } else {
                if (!"email".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                StoneSerializer.expectField("email", jsonParser);
                email = UserSelectorArg.email(StoneSerializers.string().deserialize(jsonParser));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return email;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UserSelectorArg userSelectorArg, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3274a.f18581a[userSelectorArg.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("team_member_id", jsonGenerator);
                jsonGenerator.writeFieldName("team_member_id");
                StoneSerializers.string().serialize((StoneSerializer<String>) userSelectorArg.f18578b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("external_id", jsonGenerator);
                jsonGenerator.writeFieldName("external_id");
                StoneSerializers.string().serialize((StoneSerializer<String>) userSelectorArg.f18579c, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 3) {
                throw new IllegalArgumentException("Unrecognized tag: " + userSelectorArg.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("email", jsonGenerator);
            jsonGenerator.writeFieldName("email");
            StoneSerializers.string().serialize((StoneSerializer<String>) userSelectorArg.f18580d, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static UserSelectorArg email(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new UserSelectorArg().m12817e(Tag.EMAIL, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    public static UserSelectorArg externalId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() <= 64) {
            return new UserSelectorArg().m12818f(Tag.EXTERNAL_ID, str);
        }
        throw new IllegalArgumentException("String is longer than 64");
    }

    public static UserSelectorArg teamMemberId(String str) {
        if (str != null) {
            return new UserSelectorArg().m12819g(Tag.TEAM_MEMBER_ID, str);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: d */
    public final UserSelectorArg m12816d(Tag tag) {
        UserSelectorArg userSelectorArg = new UserSelectorArg();
        userSelectorArg.f18577a = tag;
        return userSelectorArg;
    }

    /* renamed from: e */
    public final UserSelectorArg m12817e(Tag tag, String str) {
        UserSelectorArg userSelectorArg = new UserSelectorArg();
        userSelectorArg.f18577a = tag;
        userSelectorArg.f18580d = str;
        return userSelectorArg;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UserSelectorArg)) {
            return false;
        }
        UserSelectorArg userSelectorArg = (UserSelectorArg) obj;
        Tag tag = this.f18577a;
        if (tag != userSelectorArg.f18577a) {
            return false;
        }
        int i = C3274a.f18581a[tag.ordinal()];
        if (i == 1) {
            String str = this.f18578b;
            String str2 = userSelectorArg.f18578b;
            return str == str2 || str.equals(str2);
        }
        if (i == 2) {
            String str3 = this.f18579c;
            String str4 = userSelectorArg.f18579c;
            return str3 == str4 || str3.equals(str4);
        }
        if (i != 3) {
            return false;
        }
        String str5 = this.f18580d;
        String str6 = userSelectorArg.f18580d;
        return str5 == str6 || str5.equals(str6);
    }

    /* renamed from: f */
    public final UserSelectorArg m12818f(Tag tag, String str) {
        UserSelectorArg userSelectorArg = new UserSelectorArg();
        userSelectorArg.f18577a = tag;
        userSelectorArg.f18579c = str;
        return userSelectorArg;
    }

    /* renamed from: g */
    public final UserSelectorArg m12819g(Tag tag, String str) {
        UserSelectorArg userSelectorArg = new UserSelectorArg();
        userSelectorArg.f18577a = tag;
        userSelectorArg.f18578b = str;
        return userSelectorArg;
    }

    public String getEmailValue() {
        if (this.f18577a == Tag.EMAIL) {
            return this.f18580d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.EMAIL, but was Tag." + this.f18577a.name());
    }

    public String getExternalIdValue() {
        if (this.f18577a == Tag.EXTERNAL_ID) {
            return this.f18579c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.EXTERNAL_ID, but was Tag." + this.f18577a.name());
    }

    public String getTeamMemberIdValue() {
        if (this.f18577a == Tag.TEAM_MEMBER_ID) {
            return this.f18578b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_MEMBER_ID, but was Tag." + this.f18577a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18577a, this.f18578b, this.f18579c, this.f18580d});
    }

    public boolean isEmail() {
        return this.f18577a == Tag.EMAIL;
    }

    public boolean isExternalId() {
        return this.f18577a == Tag.EXTERNAL_ID;
    }

    public boolean isTeamMemberId() {
        return this.f18577a == Tag.TEAM_MEMBER_ID;
    }

    public Tag tag() {
        return this.f18577a;
    }

    public String toString() {
        return C3275b.f18582b.serialize((C3275b) this, false);
    }

    public String toStringMultiline() {
        return C3275b.f18582b.serialize((C3275b) this, true);
    }
}
