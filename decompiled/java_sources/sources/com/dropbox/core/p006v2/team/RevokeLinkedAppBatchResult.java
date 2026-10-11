package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.RevokeLinkedAppStatus;
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
public class RevokeLinkedAppBatchResult {
    protected final List<RevokeLinkedAppStatus> revokeLinkedAppStatus;

    /* renamed from: com.dropbox.core.v2.team.RevokeLinkedAppBatchResult$a */
    /* loaded from: classes4.dex */
    public static class C3206a extends StructSerializer<RevokeLinkedAppBatchResult> {

        /* renamed from: b */
        public static final C3206a f18458b = new C3206a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RevokeLinkedAppBatchResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            List list = null;
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
                if ("revoke_linked_app_status".equals(currentName)) {
                    list = (List) StoneSerializers.list(RevokeLinkedAppStatus.C3209a.f18461b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"revoke_linked_app_status\" missing.");
            }
            RevokeLinkedAppBatchResult revokeLinkedAppBatchResult = new RevokeLinkedAppBatchResult(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(revokeLinkedAppBatchResult, revokeLinkedAppBatchResult.toStringMultiline());
            return revokeLinkedAppBatchResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RevokeLinkedAppBatchResult revokeLinkedAppBatchResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("revoke_linked_app_status");
            StoneSerializers.list(RevokeLinkedAppStatus.C3209a.f18461b).serialize((StoneSerializer) revokeLinkedAppBatchResult.revokeLinkedAppStatus, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public RevokeLinkedAppBatchResult(List<RevokeLinkedAppStatus> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'revokeLinkedAppStatus' is null");
        }
        Iterator<RevokeLinkedAppStatus> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'revokeLinkedAppStatus' is null");
            }
        }
        this.revokeLinkedAppStatus = list;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        List<RevokeLinkedAppStatus> list = this.revokeLinkedAppStatus;
        List<RevokeLinkedAppStatus> list2 = ((RevokeLinkedAppBatchResult) obj).revokeLinkedAppStatus;
        return list == list2 || list.equals(list2);
    }

    public List<RevokeLinkedAppStatus> getRevokeLinkedAppStatus() {
        return this.revokeLinkedAppStatus;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.revokeLinkedAppStatus});
    }

    public String toString() {
        return C3206a.f18458b.serialize((C3206a) this, false);
    }

    public String toStringMultiline() {
        return C3206a.f18458b.serialize((C3206a) this, true);
    }
}
