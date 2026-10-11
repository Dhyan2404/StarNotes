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
public class DataPlacementRestrictionChangePolicyDetails {
    protected final PlacementRestriction newValue;
    protected final PlacementRestriction previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.DataPlacementRestrictionChangePolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C3408a extends StructSerializer<DataPlacementRestrictionChangePolicyDetails> {

        /* renamed from: b */
        public static final C3408a f18800b = new C3408a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DataPlacementRestrictionChangePolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            PlacementRestriction placementRestriction2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("previous_value".equals(currentName)) {
                    placementRestriction = PlacementRestriction.C3964b.f20240b.deserialize(jsonParser);
                } else if ("new_value".equals(currentName)) {
                    placementRestriction2 = PlacementRestriction.C3964b.f20240b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (placementRestriction == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            if (placementRestriction2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            DataPlacementRestrictionChangePolicyDetails dataPlacementRestrictionChangePolicyDetails = new DataPlacementRestrictionChangePolicyDetails(placementRestriction, placementRestriction2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(dataPlacementRestrictionChangePolicyDetails, dataPlacementRestrictionChangePolicyDetails.toStringMultiline());
            return dataPlacementRestrictionChangePolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DataPlacementRestrictionChangePolicyDetails dataPlacementRestrictionChangePolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("previous_value");
            PlacementRestriction.C3964b c3964b = PlacementRestriction.C3964b.f20240b;
            c3964b.serialize(dataPlacementRestrictionChangePolicyDetails.previousValue, jsonGenerator);
            jsonGenerator.writeFieldName("new_value");
            c3964b.serialize(dataPlacementRestrictionChangePolicyDetails.newValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DataPlacementRestrictionChangePolicyDetails(PlacementRestriction placementRestriction, PlacementRestriction placementRestriction2) {
        if (placementRestriction == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = placementRestriction;
        if (placementRestriction2 == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = placementRestriction2;
    }

    public boolean equals(Object obj) {
        PlacementRestriction placementRestriction;
        PlacementRestriction placementRestriction2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        DataPlacementRestrictionChangePolicyDetails dataPlacementRestrictionChangePolicyDetails = (DataPlacementRestrictionChangePolicyDetails) obj;
        PlacementRestriction placementRestriction3 = this.previousValue;
        PlacementRestriction placementRestriction4 = dataPlacementRestrictionChangePolicyDetails.previousValue;
        return (placementRestriction3 == placementRestriction4 || placementRestriction3.equals(placementRestriction4)) && ((placementRestriction = this.newValue) == (placementRestriction2 = dataPlacementRestrictionChangePolicyDetails.newValue) || placementRestriction.equals(placementRestriction2));
    }

    public PlacementRestriction getNewValue() {
        return this.newValue;
    }

    public PlacementRestriction getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousValue, this.newValue});
    }

    public String toString() {
        return C3408a.f18800b.serialize((C3408a) this, false);
    }

    public String toStringMultiline() {
        return C3408a.f18800b.serialize((C3408a) this, true);
    }
}
