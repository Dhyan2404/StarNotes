package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.PaperDefaultFolderPolicy;
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
public class PaperDefaultFolderPolicyChangedDetails {
    protected final PaperDefaultFolderPolicy newValue;
    protected final PaperDefaultFolderPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.PaperDefaultFolderPolicyChangedDetails$a */
    /* loaded from: classes4.dex */
    public static class C3866a extends StructSerializer<PaperDefaultFolderPolicyChangedDetails> {

        /* renamed from: b */
        public static final C3866a f20139b = new C3866a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperDefaultFolderPolicyChangedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            PaperDefaultFolderPolicy paperDefaultFolderPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            PaperDefaultFolderPolicy paperDefaultFolderPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    paperDefaultFolderPolicy = PaperDefaultFolderPolicy.C3865b.f20138b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    paperDefaultFolderPolicy2 = PaperDefaultFolderPolicy.C3865b.f20138b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (paperDefaultFolderPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            if (paperDefaultFolderPolicy2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            PaperDefaultFolderPolicyChangedDetails paperDefaultFolderPolicyChangedDetails = new PaperDefaultFolderPolicyChangedDetails(paperDefaultFolderPolicy, paperDefaultFolderPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(paperDefaultFolderPolicyChangedDetails, paperDefaultFolderPolicyChangedDetails.toStringMultiline());
            return paperDefaultFolderPolicyChangedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperDefaultFolderPolicyChangedDetails paperDefaultFolderPolicyChangedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            PaperDefaultFolderPolicy.C3865b c3865b = PaperDefaultFolderPolicy.C3865b.f20138b;
            c3865b.serialize(paperDefaultFolderPolicyChangedDetails.newValue, jsonGenerator);
            jsonGenerator.writeFieldName("previous_value");
            c3865b.serialize(paperDefaultFolderPolicyChangedDetails.previousValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PaperDefaultFolderPolicyChangedDetails(PaperDefaultFolderPolicy paperDefaultFolderPolicy, PaperDefaultFolderPolicy paperDefaultFolderPolicy2) {
        if (paperDefaultFolderPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = paperDefaultFolderPolicy;
        if (paperDefaultFolderPolicy2 == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = paperDefaultFolderPolicy2;
    }

    public boolean equals(Object obj) {
        PaperDefaultFolderPolicy paperDefaultFolderPolicy;
        PaperDefaultFolderPolicy paperDefaultFolderPolicy2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        PaperDefaultFolderPolicyChangedDetails paperDefaultFolderPolicyChangedDetails = (PaperDefaultFolderPolicyChangedDetails) obj;
        PaperDefaultFolderPolicy paperDefaultFolderPolicy3 = this.newValue;
        PaperDefaultFolderPolicy paperDefaultFolderPolicy4 = paperDefaultFolderPolicyChangedDetails.newValue;
        return (paperDefaultFolderPolicy3 == paperDefaultFolderPolicy4 || paperDefaultFolderPolicy3.equals(paperDefaultFolderPolicy4)) && ((paperDefaultFolderPolicy = this.previousValue) == (paperDefaultFolderPolicy2 = paperDefaultFolderPolicyChangedDetails.previousValue) || paperDefaultFolderPolicy.equals(paperDefaultFolderPolicy2));
    }

    public PaperDefaultFolderPolicy getNewValue() {
        return this.newValue;
    }

    public PaperDefaultFolderPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3866a.f20139b.serialize((C3866a) this, false);
    }

    public String toStringMultiline() {
        return C3866a.f20139b.serialize((C3866a) this, true);
    }
}
