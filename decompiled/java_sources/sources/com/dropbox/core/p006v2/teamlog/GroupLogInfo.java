package com.dropbox.core.p006v2.teamlog;

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
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class GroupLogInfo {
    protected final String displayName;
    protected final String externalId;
    protected final String groupId;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected final String displayName;
        protected String externalId;
        protected String groupId;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'displayName' is null");
            }
            this.displayName = str;
            this.groupId = null;
            this.externalId = null;
        }

        public GroupLogInfo build() {
            return new GroupLogInfo(this.displayName, this.groupId, this.externalId);
        }

        public Builder withExternalId(String str) {
            this.externalId = str;
            return this;
        }

        public Builder withGroupId(String str) {
            this.groupId = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.GroupLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C3662a extends StructSerializer<GroupLogInfo> {

        /* renamed from: b */
        public static final C3662a f19930b = new C3662a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupLogInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str3 = null;
            String str4 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("display_name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if (FirebaseAnalytics.Param.GROUP_ID.equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("external_id".equals(currentName)) {
                    str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"display_name\" missing.");
            }
            GroupLogInfo groupLogInfo = new GroupLogInfo(str2, str3, str4);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(groupLogInfo, groupLogInfo.toStringMultiline());
            return groupLogInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupLogInfo groupLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("display_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) groupLogInfo.displayName, jsonGenerator);
            if (groupLogInfo.groupId != null) {
                jsonGenerator.writeFieldName(FirebaseAnalytics.Param.GROUP_ID);
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) groupLogInfo.groupId, jsonGenerator);
            }
            if (groupLogInfo.externalId != null) {
                jsonGenerator.writeFieldName("external_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) groupLogInfo.externalId, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GroupLogInfo(String str, String str2, String str3) {
        this.groupId = str2;
        if (str != null) {
            this.displayName = str;
            this.externalId = str3;
            return;
        }
        throw new IllegalArgumentException("Required value for 'displayName' is null");
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GroupLogInfo groupLogInfo = (GroupLogInfo) obj;
        String str3 = this.displayName;
        String str4 = groupLogInfo.displayName;
        if ((str3 == str4 || str3.equals(str4)) && ((str = this.groupId) == (str2 = groupLogInfo.groupId) || (str != null && str.equals(str2)))) {
            String str5 = this.externalId;
            String str6 = groupLogInfo.externalId;
            if (str5 == str6) {
                return true;
            }
            if (str5 != null && str5.equals(str6)) {
                return true;
            }
        }
        return false;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public String getExternalId() {
        return this.externalId;
    }

    public String getGroupId() {
        return this.groupId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.groupId, this.displayName, this.externalId});
    }

    public String toString() {
        return C3662a.f19930b.serialize((C3662a) this, false);
    }

    public String toStringMultiline() {
        return C3662a.f19930b.serialize((C3662a) this, true);
    }

    public GroupLogInfo(String str) {
        this(str, null, null);
    }
}
