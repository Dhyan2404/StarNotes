package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.ExternalUserLogInfo;
import com.dropbox.core.p006v2.teamlog.UserLogInfo;
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
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class SharedLinkShareDetails {
    protected final List<ExternalUserLogInfo> externalUsers;
    protected final UserLogInfo sharedLinkOwner;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected UserLogInfo sharedLinkOwner = null;
        protected List<ExternalUserLogInfo> externalUsers = null;

        public SharedLinkShareDetails build() {
            return new SharedLinkShareDetails(this.sharedLinkOwner, this.externalUsers);
        }

        public Builder withExternalUsers(List<ExternalUserLogInfo> list) {
            if (list != null) {
                Iterator<ExternalUserLogInfo> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'externalUsers' is null");
                    }
                }
            }
            this.externalUsers = list;
            return this;
        }

        public Builder withSharedLinkOwner(UserLogInfo userLogInfo) {
            this.sharedLinkOwner = userLogInfo;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.SharedLinkShareDetails$a */
    /* loaded from: classes4.dex */
    public static class C4134a extends StructSerializer<SharedLinkShareDetails> {

        /* renamed from: b */
        public static final C4134a f20410b = new C4134a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedLinkShareDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            UserLogInfo userLogInfo = null;
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
                if ("shared_link_owner".equals(currentName)) {
                    userLogInfo = (UserLogInfo) StoneSerializers.nullableStruct(UserLogInfo.C4392a.f20680b).deserialize(jsonParser);
                } else if ("external_users".equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(ExternalUserLogInfo.C3524a.f19776b)).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            SharedLinkShareDetails sharedLinkShareDetails = new SharedLinkShareDetails(userLogInfo, list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedLinkShareDetails, sharedLinkShareDetails.toStringMultiline());
            return sharedLinkShareDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedLinkShareDetails sharedLinkShareDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (sharedLinkShareDetails.sharedLinkOwner != null) {
                jsonGenerator.writeFieldName("shared_link_owner");
                StoneSerializers.nullableStruct(UserLogInfo.C4392a.f20680b).serialize((StructSerializer) sharedLinkShareDetails.sharedLinkOwner, jsonGenerator);
            }
            if (sharedLinkShareDetails.externalUsers != null) {
                jsonGenerator.writeFieldName("external_users");
                StoneSerializers.nullable(StoneSerializers.list(ExternalUserLogInfo.C3524a.f19776b)).serialize((StoneSerializer) sharedLinkShareDetails.externalUsers, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedLinkShareDetails(UserLogInfo userLogInfo, List<ExternalUserLogInfo> list) {
        this.sharedLinkOwner = userLogInfo;
        if (list != null) {
            Iterator<ExternalUserLogInfo> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'externalUsers' is null");
                }
            }
        }
        this.externalUsers = list;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SharedLinkShareDetails sharedLinkShareDetails = (SharedLinkShareDetails) obj;
        UserLogInfo userLogInfo = this.sharedLinkOwner;
        UserLogInfo userLogInfo2 = sharedLinkShareDetails.sharedLinkOwner;
        if (userLogInfo == userLogInfo2 || (userLogInfo != null && userLogInfo.equals(userLogInfo2))) {
            List<ExternalUserLogInfo> list = this.externalUsers;
            List<ExternalUserLogInfo> list2 = sharedLinkShareDetails.externalUsers;
            if (list == list2) {
                return true;
            }
            if (list != null && list.equals(list2)) {
                return true;
            }
        }
        return false;
    }

    public List<ExternalUserLogInfo> getExternalUsers() {
        return this.externalUsers;
    }

    public UserLogInfo getSharedLinkOwner() {
        return this.sharedLinkOwner;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharedLinkOwner, this.externalUsers});
    }

    public String toString() {
        return C4134a.f20410b.serialize((C4134a) this, false);
    }

    public String toStringMultiline() {
        return C4134a.f20410b.serialize((C4134a) this, true);
    }

    public SharedLinkShareDetails() {
        this(null, null);
    }
}
