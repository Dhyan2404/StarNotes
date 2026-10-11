package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.SpaceLimitsStatus;
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
public class MemberSpaceLimitsChangeStatusDetails {
    protected final SpaceLimitsStatus newValue;
    protected final SpaceLimitsStatus previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.MemberSpaceLimitsChangeStatusDetails$a */
    /* loaded from: classes4.dex */
    public static class C3773a extends StructSerializer<MemberSpaceLimitsChangeStatusDetails> {

        /* renamed from: b */
        public static final C3773a f20046b = new C3773a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberSpaceLimitsChangeStatusDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            SpaceLimitsStatus spaceLimitsStatus = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            SpaceLimitsStatus spaceLimitsStatus2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("previous_value".equals(currentName)) {
                    spaceLimitsStatus = SpaceLimitsStatus.C4236b.f20512b.deserialize(jsonParser);
                } else if ("new_value".equals(currentName)) {
                    spaceLimitsStatus2 = SpaceLimitsStatus.C4236b.f20512b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (spaceLimitsStatus == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            if (spaceLimitsStatus2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            MemberSpaceLimitsChangeStatusDetails memberSpaceLimitsChangeStatusDetails = new MemberSpaceLimitsChangeStatusDetails(spaceLimitsStatus, spaceLimitsStatus2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(memberSpaceLimitsChangeStatusDetails, memberSpaceLimitsChangeStatusDetails.toStringMultiline());
            return memberSpaceLimitsChangeStatusDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberSpaceLimitsChangeStatusDetails memberSpaceLimitsChangeStatusDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("previous_value");
            SpaceLimitsStatus.C4236b c4236b = SpaceLimitsStatus.C4236b.f20512b;
            c4236b.serialize(memberSpaceLimitsChangeStatusDetails.previousValue, jsonGenerator);
            jsonGenerator.writeFieldName("new_value");
            c4236b.serialize(memberSpaceLimitsChangeStatusDetails.newValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MemberSpaceLimitsChangeStatusDetails(SpaceLimitsStatus spaceLimitsStatus, SpaceLimitsStatus spaceLimitsStatus2) {
        if (spaceLimitsStatus == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = spaceLimitsStatus;
        if (spaceLimitsStatus2 == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = spaceLimitsStatus2;
    }

    public boolean equals(Object obj) {
        SpaceLimitsStatus spaceLimitsStatus;
        SpaceLimitsStatus spaceLimitsStatus2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MemberSpaceLimitsChangeStatusDetails memberSpaceLimitsChangeStatusDetails = (MemberSpaceLimitsChangeStatusDetails) obj;
        SpaceLimitsStatus spaceLimitsStatus3 = this.previousValue;
        SpaceLimitsStatus spaceLimitsStatus4 = memberSpaceLimitsChangeStatusDetails.previousValue;
        return (spaceLimitsStatus3 == spaceLimitsStatus4 || spaceLimitsStatus3.equals(spaceLimitsStatus4)) && ((spaceLimitsStatus = this.newValue) == (spaceLimitsStatus2 = memberSpaceLimitsChangeStatusDetails.newValue) || spaceLimitsStatus.equals(spaceLimitsStatus2));
    }

    public SpaceLimitsStatus getNewValue() {
        return this.newValue;
    }

    public SpaceLimitsStatus getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousValue, this.newValue});
    }

    public String toString() {
        return C3773a.f20046b.serialize((C3773a) this, false);
    }

    public String toStringMultiline() {
        return C3773a.f20046b.serialize((C3773a) this, true);
    }
}
