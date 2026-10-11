package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.RevokeDeviceSessionStatus;
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
public class RevokeDeviceSessionBatchResult {
    protected final List<RevokeDeviceSessionStatus> revokeDevicesStatus;

    /* renamed from: com.dropbox.core.v2.team.RevokeDeviceSessionBatchResult$a */
    /* loaded from: classes4.dex */
    public static class C3199a extends StructSerializer<RevokeDeviceSessionBatchResult> {

        /* renamed from: b */
        public static final C3199a f18451b = new C3199a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RevokeDeviceSessionBatchResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("revoke_devices_status".equals(currentName)) {
                    list = (List) StoneSerializers.list(RevokeDeviceSessionStatus.C3202a.f18454b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"revoke_devices_status\" missing.");
            }
            RevokeDeviceSessionBatchResult revokeDeviceSessionBatchResult = new RevokeDeviceSessionBatchResult(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(revokeDeviceSessionBatchResult, revokeDeviceSessionBatchResult.toStringMultiline());
            return revokeDeviceSessionBatchResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RevokeDeviceSessionBatchResult revokeDeviceSessionBatchResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("revoke_devices_status");
            StoneSerializers.list(RevokeDeviceSessionStatus.C3202a.f18454b).serialize((StoneSerializer) revokeDeviceSessionBatchResult.revokeDevicesStatus, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public RevokeDeviceSessionBatchResult(List<RevokeDeviceSessionStatus> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'revokeDevicesStatus' is null");
        }
        Iterator<RevokeDeviceSessionStatus> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'revokeDevicesStatus' is null");
            }
        }
        this.revokeDevicesStatus = list;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        List<RevokeDeviceSessionStatus> list = this.revokeDevicesStatus;
        List<RevokeDeviceSessionStatus> list2 = ((RevokeDeviceSessionBatchResult) obj).revokeDevicesStatus;
        return list == list2 || list.equals(list2);
    }

    public List<RevokeDeviceSessionStatus> getRevokeDevicesStatus() {
        return this.revokeDevicesStatus;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.revokeDevicesStatus});
    }

    public String toString() {
        return C3199a.f18451b.serialize((C3199a) this, false);
    }

    public String toStringMultiline() {
        return C3199a.f18451b.serialize((C3199a) this, true);
    }
}
