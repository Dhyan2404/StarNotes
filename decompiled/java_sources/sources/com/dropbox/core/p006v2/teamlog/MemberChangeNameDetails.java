package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.UserNameLogInfo;
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

/* loaded from: classes4.dex */
public class MemberChangeNameDetails {
    protected final UserNameLogInfo newValue;
    protected final UserNameLogInfo previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.MemberChangeNameDetails$a */
    /* loaded from: classes4.dex */
    public static class C3739a extends StructSerializer<MemberChangeNameDetails> {

        /* renamed from: b */
        public static final C3739a f20012b = new C3739a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberChangeNameDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            UserNameLogInfo userNameLogInfo2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    userNameLogInfo = UserNameLogInfo.C4393a.f20681b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    userNameLogInfo2 = (UserNameLogInfo) StoneSerializers.nullableStruct(UserNameLogInfo.C4393a.f20681b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (userNameLogInfo == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            MemberChangeNameDetails memberChangeNameDetails = new MemberChangeNameDetails(userNameLogInfo, userNameLogInfo2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(memberChangeNameDetails, memberChangeNameDetails.toStringMultiline());
            return memberChangeNameDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberChangeNameDetails memberChangeNameDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            UserNameLogInfo.C4393a c4393a = UserNameLogInfo.C4393a.f20681b;
            c4393a.serialize((UserNameLogInfo.C4393a) memberChangeNameDetails.newValue, jsonGenerator);
            if (memberChangeNameDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullableStruct(c4393a).serialize((StructSerializer) memberChangeNameDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MemberChangeNameDetails(UserNameLogInfo userNameLogInfo, UserNameLogInfo userNameLogInfo2) {
        if (userNameLogInfo != null) {
            this.newValue = userNameLogInfo;
            this.previousValue = userNameLogInfo2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'newValue' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MemberChangeNameDetails memberChangeNameDetails = (MemberChangeNameDetails) obj;
        UserNameLogInfo userNameLogInfo = this.newValue;
        UserNameLogInfo userNameLogInfo2 = memberChangeNameDetails.newValue;
        if (userNameLogInfo == userNameLogInfo2 || userNameLogInfo.equals(userNameLogInfo2)) {
            UserNameLogInfo userNameLogInfo3 = this.previousValue;
            UserNameLogInfo userNameLogInfo4 = memberChangeNameDetails.previousValue;
            if (userNameLogInfo3 == userNameLogInfo4) {
                return true;
            }
            if (userNameLogInfo3 != null && userNameLogInfo3.equals(userNameLogInfo4)) {
                return true;
            }
        }
        return false;
    }

    public UserNameLogInfo getNewValue() {
        return this.newValue;
    }

    public UserNameLogInfo getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3739a.f20012b.serialize((C3739a) this, false);
    }

    public String toStringMultiline() {
        return C3739a.f20012b.serialize((C3739a) this, true);
    }

    public MemberChangeNameDetails(UserNameLogInfo userNameLogInfo) {
        this(userNameLogInfo, null);
    }
}
