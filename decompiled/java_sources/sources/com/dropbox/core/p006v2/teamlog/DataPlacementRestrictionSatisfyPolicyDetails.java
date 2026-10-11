package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.PlacementRestriction;
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
public class DataPlacementRestrictionSatisfyPolicyDetails {
    protected final PlacementRestriction placementRestriction;

    /* renamed from: com.dropbox.core.v2.teamlog.DataPlacementRestrictionSatisfyPolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C3410a extends StructSerializer<DataPlacementRestrictionSatisfyPolicyDetails> {

        /* renamed from: b */
        public static final C3410a f18802b = new C3410a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DataPlacementRestrictionSatisfyPolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            PlacementRestriction placementRestriction = null;
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
                if ("placement_restriction".equals(currentName)) {
                    placementRestriction = PlacementRestriction.C3964b.f20240b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (placementRestriction == null) {
                throw new JsonParseException(jsonParser, "Required field \"placement_restriction\" missing.");
            }
            DataPlacementRestrictionSatisfyPolicyDetails dataPlacementRestrictionSatisfyPolicyDetails = new DataPlacementRestrictionSatisfyPolicyDetails(placementRestriction);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(dataPlacementRestrictionSatisfyPolicyDetails, dataPlacementRestrictionSatisfyPolicyDetails.toStringMultiline());
            return dataPlacementRestrictionSatisfyPolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DataPlacementRestrictionSatisfyPolicyDetails dataPlacementRestrictionSatisfyPolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("placement_restriction");
            PlacementRestriction.C3964b.f20240b.serialize(dataPlacementRestrictionSatisfyPolicyDetails.placementRestriction, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DataPlacementRestrictionSatisfyPolicyDetails(PlacementRestriction placementRestriction) {
        if (placementRestriction == null) {
            throw new IllegalArgumentException("Required value for 'placementRestriction' is null");
        }
        this.placementRestriction = placementRestriction;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        PlacementRestriction placementRestriction = this.placementRestriction;
        PlacementRestriction placementRestriction2 = ((DataPlacementRestrictionSatisfyPolicyDetails) obj).placementRestriction;
        return placementRestriction == placementRestriction2 || placementRestriction.equals(placementRestriction2);
    }

    public PlacementRestriction getPlacementRestriction() {
        return this.placementRestriction;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.placementRestriction});
    }

    public String toString() {
        return C3410a.f18802b.serialize((C3410a) this, false);
    }

    public String toStringMultiline() {
        return C3410a.f18802b.serialize((C3410a) this, true);
    }
}
