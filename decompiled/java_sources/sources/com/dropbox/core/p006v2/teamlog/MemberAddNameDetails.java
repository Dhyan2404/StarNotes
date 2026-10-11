package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.UserNameLogInfo;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class MemberAddNameDetails {
    protected final UserNameLogInfo newValue;

    /* renamed from: com.dropbox.core.v2.teamlog.MemberAddNameDetails$a */
    /* loaded from: classes4.dex */
    public static class C3729a extends StructSerializer<MemberAddNameDetails> {

        /* renamed from: b */
        public static final C3729a f20002b = new C3729a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberAddNameDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            UserNameLogInfo userNameLogInfo = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    userNameLogInfo = UserNameLogInfo.C4393a.f20681b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (userNameLogInfo == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            MemberAddNameDetails memberAddNameDetails = new MemberAddNameDetails(userNameLogInfo);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(memberAddNameDetails, memberAddNameDetails.toStringMultiline());
            return memberAddNameDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberAddNameDetails memberAddNameDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            UserNameLogInfo.C4393a.f20681b.serialize((UserNameLogInfo.C4393a) memberAddNameDetails.newValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MemberAddNameDetails(UserNameLogInfo userNameLogInfo) {
        if (userNameLogInfo == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = userNameLogInfo;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        UserNameLogInfo userNameLogInfo = this.newValue;
        UserNameLogInfo userNameLogInfo2 = ((MemberAddNameDetails) obj).newValue;
        return userNameLogInfo == userNameLogInfo2 || userNameLogInfo.equals(userNameLogInfo2);
    }

    public UserNameLogInfo getNewValue() {
        return this.newValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue});
    }

    public String toString() {
        return C3729a.f20002b.serialize((C3729a) this, false);
    }

    public String toStringMultiline() {
        return C3729a.f20002b.serialize((C3729a) this, true);
    }
}
