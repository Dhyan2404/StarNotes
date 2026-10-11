package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.SpaceCapsType;
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
public class MemberSpaceLimitsChangeCapsTypePolicyDetails {
    protected final SpaceCapsType newValue;
    protected final SpaceCapsType previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.MemberSpaceLimitsChangeCapsTypePolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C3767a extends StructSerializer<MemberSpaceLimitsChangeCapsTypePolicyDetails> {

        /* renamed from: b */
        public static final C3767a f20040b = new C3767a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberSpaceLimitsChangeCapsTypePolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            SpaceCapsType spaceCapsType = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            SpaceCapsType spaceCapsType2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("previous_value".equals(currentName)) {
                    spaceCapsType = SpaceCapsType.C4234b.f20510b.deserialize(jsonParser);
                } else if ("new_value".equals(currentName)) {
                    spaceCapsType2 = SpaceCapsType.C4234b.f20510b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (spaceCapsType == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            if (spaceCapsType2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            MemberSpaceLimitsChangeCapsTypePolicyDetails memberSpaceLimitsChangeCapsTypePolicyDetails = new MemberSpaceLimitsChangeCapsTypePolicyDetails(spaceCapsType, spaceCapsType2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(memberSpaceLimitsChangeCapsTypePolicyDetails, memberSpaceLimitsChangeCapsTypePolicyDetails.toStringMultiline());
            return memberSpaceLimitsChangeCapsTypePolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberSpaceLimitsChangeCapsTypePolicyDetails memberSpaceLimitsChangeCapsTypePolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("previous_value");
            SpaceCapsType.C4234b c4234b = SpaceCapsType.C4234b.f20510b;
            c4234b.serialize(memberSpaceLimitsChangeCapsTypePolicyDetails.previousValue, jsonGenerator);
            jsonGenerator.writeFieldName("new_value");
            c4234b.serialize(memberSpaceLimitsChangeCapsTypePolicyDetails.newValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MemberSpaceLimitsChangeCapsTypePolicyDetails(SpaceCapsType spaceCapsType, SpaceCapsType spaceCapsType2) {
        if (spaceCapsType == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = spaceCapsType;
        if (spaceCapsType2 == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = spaceCapsType2;
    }

    public boolean equals(Object obj) {
        SpaceCapsType spaceCapsType;
        SpaceCapsType spaceCapsType2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MemberSpaceLimitsChangeCapsTypePolicyDetails memberSpaceLimitsChangeCapsTypePolicyDetails = (MemberSpaceLimitsChangeCapsTypePolicyDetails) obj;
        SpaceCapsType spaceCapsType3 = this.previousValue;
        SpaceCapsType spaceCapsType4 = memberSpaceLimitsChangeCapsTypePolicyDetails.previousValue;
        return (spaceCapsType3 == spaceCapsType4 || spaceCapsType3.equals(spaceCapsType4)) && ((spaceCapsType = this.newValue) == (spaceCapsType2 = memberSpaceLimitsChangeCapsTypePolicyDetails.newValue) || spaceCapsType.equals(spaceCapsType2));
    }

    public SpaceCapsType getNewValue() {
        return this.newValue;
    }

    public SpaceCapsType getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousValue, this.newValue});
    }

    public String toString() {
        return C3767a.f20040b.serialize((C3767a) this, false);
    }

    public String toStringMultiline() {
        return C3767a.f20040b.serialize((C3767a) this, true);
    }
}
