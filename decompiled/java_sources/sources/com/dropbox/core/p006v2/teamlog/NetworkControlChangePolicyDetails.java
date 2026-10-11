package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.NetworkControlPolicy;
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
public class NetworkControlChangePolicyDetails {
    protected final NetworkControlPolicy newValue;
    protected final NetworkControlPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.NetworkControlChangePolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C3797a extends StructSerializer<NetworkControlChangePolicyDetails> {

        /* renamed from: b */
        public static final C3797a f20070b = new C3797a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public NetworkControlChangePolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            NetworkControlPolicy networkControlPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            NetworkControlPolicy networkControlPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    networkControlPolicy = NetworkControlPolicy.C3800b.f20073b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    networkControlPolicy2 = (NetworkControlPolicy) StoneSerializers.nullable(NetworkControlPolicy.C3800b.f20073b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (networkControlPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            NetworkControlChangePolicyDetails networkControlChangePolicyDetails = new NetworkControlChangePolicyDetails(networkControlPolicy, networkControlPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(networkControlChangePolicyDetails, networkControlChangePolicyDetails.toStringMultiline());
            return networkControlChangePolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(NetworkControlChangePolicyDetails networkControlChangePolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            NetworkControlPolicy.C3800b c3800b = NetworkControlPolicy.C3800b.f20073b;
            c3800b.serialize(networkControlChangePolicyDetails.newValue, jsonGenerator);
            if (networkControlChangePolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(c3800b).serialize((StoneSerializer) networkControlChangePolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public NetworkControlChangePolicyDetails(NetworkControlPolicy networkControlPolicy, NetworkControlPolicy networkControlPolicy2) {
        if (networkControlPolicy != null) {
            this.newValue = networkControlPolicy;
            this.previousValue = networkControlPolicy2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'newValue' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        NetworkControlChangePolicyDetails networkControlChangePolicyDetails = (NetworkControlChangePolicyDetails) obj;
        NetworkControlPolicy networkControlPolicy = this.newValue;
        NetworkControlPolicy networkControlPolicy2 = networkControlChangePolicyDetails.newValue;
        if (networkControlPolicy == networkControlPolicy2 || networkControlPolicy.equals(networkControlPolicy2)) {
            NetworkControlPolicy networkControlPolicy3 = this.previousValue;
            NetworkControlPolicy networkControlPolicy4 = networkControlChangePolicyDetails.previousValue;
            if (networkControlPolicy3 == networkControlPolicy4) {
                return true;
            }
            if (networkControlPolicy3 != null && networkControlPolicy3.equals(networkControlPolicy4)) {
                return true;
            }
        }
        return false;
    }

    public NetworkControlPolicy getNewValue() {
        return this.newValue;
    }

    public NetworkControlPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3797a.f20070b.serialize((C3797a) this, false);
    }

    public String toStringMultiline() {
        return C3797a.f20070b.serialize((C3797a) this, true);
    }

    public NetworkControlChangePolicyDetails(NetworkControlPolicy networkControlPolicy) {
        this(networkControlPolicy, null);
    }
}
