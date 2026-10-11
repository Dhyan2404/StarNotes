package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;

/* loaded from: classes4.dex */
public class DeviceManagementEnabledDetails {

    /* renamed from: com.dropbox.core.v2.teamlog.DeviceManagementEnabledDetails$a */
    /* loaded from: classes4.dex */
    public static class C3446a extends StructSerializer<DeviceManagementEnabledDetails> {

        /* renamed from: b */
        public static final C3446a f18839b = new C3446a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeviceManagementEnabledDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str == null) {
                DeviceManagementEnabledDetails deviceManagementEnabledDetails = new DeviceManagementEnabledDetails();
                if (!z) {
                    StoneSerializer.expectEndObject(jsonParser);
                }
                StoneDeserializerLogger.log(deviceManagementEnabledDetails, deviceManagementEnabledDetails.toStringMultiline());
                return deviceManagementEnabledDetails;
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeviceManagementEnabledDetails deviceManagementEnabledDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return getClass().toString().hashCode();
    }

    public String toString() {
        return C3446a.f18839b.serialize((C3446a) this, false);
    }

    public String toStringMultiline() {
        return C3446a.f18839b.serialize((C3446a) this, true);
    }
}
