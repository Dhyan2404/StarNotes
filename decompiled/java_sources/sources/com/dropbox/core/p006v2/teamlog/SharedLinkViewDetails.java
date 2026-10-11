package com.dropbox.core.p006v2.teamlog;

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

/* loaded from: classes4.dex */
public class SharedLinkViewDetails {
    protected final UserLogInfo sharedLinkOwner;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedLinkViewDetails$a */
    /* loaded from: classes4.dex */
    public static class C4136a extends StructSerializer<SharedLinkViewDetails> {

        /* renamed from: b */
        public static final C4136a f20412b = new C4136a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedLinkViewDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("shared_link_owner".equals(currentName)) {
                    userLogInfo = (UserLogInfo) StoneSerializers.nullableStruct(UserLogInfo.C4392a.f20680b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            SharedLinkViewDetails sharedLinkViewDetails = new SharedLinkViewDetails(userLogInfo);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedLinkViewDetails, sharedLinkViewDetails.toStringMultiline());
            return sharedLinkViewDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedLinkViewDetails sharedLinkViewDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (sharedLinkViewDetails.sharedLinkOwner != null) {
                jsonGenerator.writeFieldName("shared_link_owner");
                StoneSerializers.nullableStruct(UserLogInfo.C4392a.f20680b).serialize((StructSerializer) sharedLinkViewDetails.sharedLinkOwner, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedLinkViewDetails(UserLogInfo userLogInfo) {
        this.sharedLinkOwner = userLogInfo;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        UserLogInfo userLogInfo = this.sharedLinkOwner;
        UserLogInfo userLogInfo2 = ((SharedLinkViewDetails) obj).sharedLinkOwner;
        if (userLogInfo != userLogInfo2) {
            return userLogInfo != null && userLogInfo.equals(userLogInfo2);
        }
        return true;
    }

    public UserLogInfo getSharedLinkOwner() {
        return this.sharedLinkOwner;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharedLinkOwner});
    }

    public String toString() {
        return C4136a.f20412b.serialize((C4136a) this, false);
    }

    public String toStringMultiline() {
        return C4136a.f20412b.serialize((C4136a) this, true);
    }

    public SharedLinkViewDetails() {
        this(null);
    }
}
