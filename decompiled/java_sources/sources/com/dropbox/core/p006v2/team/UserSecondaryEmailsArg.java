package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.UserSelectorArg;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class UserSecondaryEmailsArg {
    protected final List<String> secondaryEmails;
    protected final UserSelectorArg user;

    /* renamed from: com.dropbox.core.v2.team.UserSecondaryEmailsArg$a */
    /* loaded from: classes4.dex */
    public static class C3272a extends StructSerializer<UserSecondaryEmailsArg> {

        /* renamed from: b */
        public static final C3272a f18575b = new C3272a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UserSecondaryEmailsArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            UserSelectorArg userSelectorArg = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            List list = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("user".equals(currentName)) {
                    userSelectorArg = UserSelectorArg.C3275b.f18582b.deserialize(jsonParser);
                } else if ("secondary_emails".equals(currentName)) {
                    list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (userSelectorArg == null) {
                throw new JsonParseException(jsonParser, "Required field \"user\" missing.");
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"secondary_emails\" missing.");
            }
            UserSecondaryEmailsArg userSecondaryEmailsArg = new UserSecondaryEmailsArg(userSelectorArg, list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(userSecondaryEmailsArg, userSecondaryEmailsArg.toStringMultiline());
            return userSecondaryEmailsArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UserSecondaryEmailsArg userSecondaryEmailsArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("user");
            UserSelectorArg.C3275b.f18582b.serialize(userSecondaryEmailsArg.user, jsonGenerator);
            jsonGenerator.writeFieldName("secondary_emails");
            StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) userSecondaryEmailsArg.secondaryEmails, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public UserSecondaryEmailsArg(UserSelectorArg userSelectorArg, List<String> list) {
        if (userSelectorArg == null) {
            throw new IllegalArgumentException("Required value for 'user' is null");
        }
        this.user = userSelectorArg;
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'secondaryEmails' is null");
        }
        for (String str : list) {
            if (str == null) {
                throw new IllegalArgumentException("An item in list 'secondaryEmails' is null");
            }
            if (str.length() > 255) {
                throw new IllegalArgumentException("Stringan item in list 'secondaryEmails' is longer than 255");
            }
            if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
                throw new IllegalArgumentException("Stringan item in list 'secondaryEmails' does not match pattern");
            }
        }
        this.secondaryEmails = list;
    }

    public boolean equals(Object obj) {
        List<String> list;
        List<String> list2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        UserSecondaryEmailsArg userSecondaryEmailsArg = (UserSecondaryEmailsArg) obj;
        UserSelectorArg userSelectorArg = this.user;
        UserSelectorArg userSelectorArg2 = userSecondaryEmailsArg.user;
        return (userSelectorArg == userSelectorArg2 || userSelectorArg.equals(userSelectorArg2)) && ((list = this.secondaryEmails) == (list2 = userSecondaryEmailsArg.secondaryEmails) || list.equals(list2));
    }

    public List<String> getSecondaryEmails() {
        return this.secondaryEmails;
    }

    public UserSelectorArg getUser() {
        return this.user;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.user, this.secondaryEmails});
    }

    public String toString() {
        return C3272a.f18575b.serialize((C3272a) this, false);
    }

    public String toStringMultiline() {
        return C3272a.f18575b.serialize((C3272a) this, true);
    }
}
