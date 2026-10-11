package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.PaperDesktopPolicy;
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
public class PaperDesktopPolicyChangedDetails {
    protected final PaperDesktopPolicy newValue;
    protected final PaperDesktopPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.PaperDesktopPolicyChangedDetails$a */
    /* loaded from: classes4.dex */
    public static class C3870a extends StructSerializer<PaperDesktopPolicyChangedDetails> {

        /* renamed from: b */
        public static final C3870a f20143b = new C3870a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperDesktopPolicyChangedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            PaperDesktopPolicy paperDesktopPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            PaperDesktopPolicy paperDesktopPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    paperDesktopPolicy = PaperDesktopPolicy.C3869b.f20142b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    paperDesktopPolicy2 = PaperDesktopPolicy.C3869b.f20142b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (paperDesktopPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            if (paperDesktopPolicy2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            PaperDesktopPolicyChangedDetails paperDesktopPolicyChangedDetails = new PaperDesktopPolicyChangedDetails(paperDesktopPolicy, paperDesktopPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(paperDesktopPolicyChangedDetails, paperDesktopPolicyChangedDetails.toStringMultiline());
            return paperDesktopPolicyChangedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperDesktopPolicyChangedDetails paperDesktopPolicyChangedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            PaperDesktopPolicy.C3869b c3869b = PaperDesktopPolicy.C3869b.f20142b;
            c3869b.serialize(paperDesktopPolicyChangedDetails.newValue, jsonGenerator);
            jsonGenerator.writeFieldName("previous_value");
            c3869b.serialize(paperDesktopPolicyChangedDetails.previousValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PaperDesktopPolicyChangedDetails(PaperDesktopPolicy paperDesktopPolicy, PaperDesktopPolicy paperDesktopPolicy2) {
        if (paperDesktopPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = paperDesktopPolicy;
        if (paperDesktopPolicy2 == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = paperDesktopPolicy2;
    }

    public boolean equals(Object obj) {
        PaperDesktopPolicy paperDesktopPolicy;
        PaperDesktopPolicy paperDesktopPolicy2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        PaperDesktopPolicyChangedDetails paperDesktopPolicyChangedDetails = (PaperDesktopPolicyChangedDetails) obj;
        PaperDesktopPolicy paperDesktopPolicy3 = this.newValue;
        PaperDesktopPolicy paperDesktopPolicy4 = paperDesktopPolicyChangedDetails.newValue;
        return (paperDesktopPolicy3 == paperDesktopPolicy4 || paperDesktopPolicy3.equals(paperDesktopPolicy4)) && ((paperDesktopPolicy = this.previousValue) == (paperDesktopPolicy2 = paperDesktopPolicyChangedDetails.previousValue) || paperDesktopPolicy.equals(paperDesktopPolicy2));
    }

    public PaperDesktopPolicy getNewValue() {
        return this.newValue;
    }

    public PaperDesktopPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3870a.f20143b.serialize((C3870a) this, false);
    }

    public String toStringMultiline() {
        return C3870a.f20143b.serialize((C3870a) this, true);
    }
}
