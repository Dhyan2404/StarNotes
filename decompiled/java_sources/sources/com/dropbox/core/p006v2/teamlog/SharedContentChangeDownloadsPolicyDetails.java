package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.DownloadPolicyType;
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
public class SharedContentChangeDownloadsPolicyDetails {
    protected final DownloadPolicyType newValue;
    protected final DownloadPolicyType previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedContentChangeDownloadsPolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C4036a extends StructSerializer<SharedContentChangeDownloadsPolicyDetails> {

        /* renamed from: b */
        public static final C4036a f20312b = new C4036a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedContentChangeDownloadsPolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            DownloadPolicyType downloadPolicyType = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            DownloadPolicyType downloadPolicyType2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    downloadPolicyType = DownloadPolicyType.C3480b.f18873b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    downloadPolicyType2 = (DownloadPolicyType) StoneSerializers.nullable(DownloadPolicyType.C3480b.f18873b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (downloadPolicyType == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            SharedContentChangeDownloadsPolicyDetails sharedContentChangeDownloadsPolicyDetails = new SharedContentChangeDownloadsPolicyDetails(downloadPolicyType, downloadPolicyType2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedContentChangeDownloadsPolicyDetails, sharedContentChangeDownloadsPolicyDetails.toStringMultiline());
            return sharedContentChangeDownloadsPolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedContentChangeDownloadsPolicyDetails sharedContentChangeDownloadsPolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            DownloadPolicyType.C3480b c3480b = DownloadPolicyType.C3480b.f18873b;
            c3480b.serialize(sharedContentChangeDownloadsPolicyDetails.newValue, jsonGenerator);
            if (sharedContentChangeDownloadsPolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(c3480b).serialize((StoneSerializer) sharedContentChangeDownloadsPolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedContentChangeDownloadsPolicyDetails(DownloadPolicyType downloadPolicyType, DownloadPolicyType downloadPolicyType2) {
        if (downloadPolicyType != null) {
            this.newValue = downloadPolicyType;
            this.previousValue = downloadPolicyType2;
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
        SharedContentChangeDownloadsPolicyDetails sharedContentChangeDownloadsPolicyDetails = (SharedContentChangeDownloadsPolicyDetails) obj;
        DownloadPolicyType downloadPolicyType = this.newValue;
        DownloadPolicyType downloadPolicyType2 = sharedContentChangeDownloadsPolicyDetails.newValue;
        if (downloadPolicyType == downloadPolicyType2 || downloadPolicyType.equals(downloadPolicyType2)) {
            DownloadPolicyType downloadPolicyType3 = this.previousValue;
            DownloadPolicyType downloadPolicyType4 = sharedContentChangeDownloadsPolicyDetails.previousValue;
            if (downloadPolicyType3 == downloadPolicyType4) {
                return true;
            }
            if (downloadPolicyType3 != null && downloadPolicyType3.equals(downloadPolicyType4)) {
                return true;
            }
        }
        return false;
    }

    public DownloadPolicyType getNewValue() {
        return this.newValue;
    }

    public DownloadPolicyType getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C4036a.f20312b.serialize((C4036a) this, false);
    }

    public String toStringMultiline() {
        return C4036a.f20312b.serialize((C4036a) this, true);
    }

    public SharedContentChangeDownloadsPolicyDetails(DownloadPolicyType downloadPolicyType) {
        this(downloadPolicyType, null);
    }
}
