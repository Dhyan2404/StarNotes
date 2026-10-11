package com.dropbox.core.p006v2.paper;

import com.dropbox.core.p006v2.paper.PaperDocPermissionLevel;
import com.dropbox.core.p006v2.sharing.UserInfo;
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
public class UserInfoWithPermissionLevel {
    protected final PaperDocPermissionLevel permissionLevel;
    protected final UserInfo user;

    /* renamed from: com.dropbox.core.v2.paper.UserInfoWithPermissionLevel$a */
    /* loaded from: classes4.dex */
    public static class C2779a extends StructSerializer<UserInfoWithPermissionLevel> {

        /* renamed from: b */
        public static final C2779a f17624b = new C2779a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UserInfoWithPermissionLevel deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            UserInfo userInfo = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            PaperDocPermissionLevel paperDocPermissionLevel = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("user".equals(currentName)) {
                    userInfo = UserInfo.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("permission_level".equals(currentName)) {
                    paperDocPermissionLevel = PaperDocPermissionLevel.C2765b.f17607b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (userInfo == null) {
                throw new JsonParseException(jsonParser, "Required field \"user\" missing.");
            }
            if (paperDocPermissionLevel == null) {
                throw new JsonParseException(jsonParser, "Required field \"permission_level\" missing.");
            }
            UserInfoWithPermissionLevel userInfoWithPermissionLevel = new UserInfoWithPermissionLevel(userInfo, paperDocPermissionLevel);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(userInfoWithPermissionLevel, userInfoWithPermissionLevel.toStringMultiline());
            return userInfoWithPermissionLevel;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UserInfoWithPermissionLevel userInfoWithPermissionLevel, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("user");
            UserInfo.Serializer.INSTANCE.serialize((UserInfo.Serializer) userInfoWithPermissionLevel.user, jsonGenerator);
            jsonGenerator.writeFieldName("permission_level");
            PaperDocPermissionLevel.C2765b.f17607b.serialize(userInfoWithPermissionLevel.permissionLevel, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public UserInfoWithPermissionLevel(UserInfo userInfo, PaperDocPermissionLevel paperDocPermissionLevel) {
        if (userInfo == null) {
            throw new IllegalArgumentException("Required value for 'user' is null");
        }
        this.user = userInfo;
        if (paperDocPermissionLevel == null) {
            throw new IllegalArgumentException("Required value for 'permissionLevel' is null");
        }
        this.permissionLevel = paperDocPermissionLevel;
    }

    public boolean equals(Object obj) {
        PaperDocPermissionLevel paperDocPermissionLevel;
        PaperDocPermissionLevel paperDocPermissionLevel2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        UserInfoWithPermissionLevel userInfoWithPermissionLevel = (UserInfoWithPermissionLevel) obj;
        UserInfo userInfo = this.user;
        UserInfo userInfo2 = userInfoWithPermissionLevel.user;
        return (userInfo == userInfo2 || userInfo.equals(userInfo2)) && ((paperDocPermissionLevel = this.permissionLevel) == (paperDocPermissionLevel2 = userInfoWithPermissionLevel.permissionLevel) || paperDocPermissionLevel.equals(paperDocPermissionLevel2));
    }

    public PaperDocPermissionLevel getPermissionLevel() {
        return this.permissionLevel;
    }

    public UserInfo getUser() {
        return this.user;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.user, this.permissionLevel});
    }

    public String toString() {
        return C2779a.f17624b.serialize((C2779a) this, false);
    }

    public String toStringMultiline() {
        return C2779a.f17624b.serialize((C2779a) this, true);
    }
}
