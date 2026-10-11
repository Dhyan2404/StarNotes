package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.ShowcaseEnabledPolicy;
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
public class ShowcaseChangeEnabledPolicyDetails {
    protected final ShowcaseEnabledPolicy newValue;
    protected final ShowcaseEnabledPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.ShowcaseChangeEnabledPolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C4164a extends StructSerializer<ShowcaseChangeEnabledPolicyDetails> {

        /* renamed from: b */
        public static final C4164a f20440b = new C4164a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ShowcaseChangeEnabledPolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            ShowcaseEnabledPolicy showcaseEnabledPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            ShowcaseEnabledPolicy showcaseEnabledPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    showcaseEnabledPolicy = ShowcaseEnabledPolicy.C4180b.f20456b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    showcaseEnabledPolicy2 = ShowcaseEnabledPolicy.C4180b.f20456b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (showcaseEnabledPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            if (showcaseEnabledPolicy2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            ShowcaseChangeEnabledPolicyDetails showcaseChangeEnabledPolicyDetails = new ShowcaseChangeEnabledPolicyDetails(showcaseEnabledPolicy, showcaseEnabledPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(showcaseChangeEnabledPolicyDetails, showcaseChangeEnabledPolicyDetails.toStringMultiline());
            return showcaseChangeEnabledPolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ShowcaseChangeEnabledPolicyDetails showcaseChangeEnabledPolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            ShowcaseEnabledPolicy.C4180b c4180b = ShowcaseEnabledPolicy.C4180b.f20456b;
            c4180b.serialize(showcaseChangeEnabledPolicyDetails.newValue, jsonGenerator);
            jsonGenerator.writeFieldName("previous_value");
            c4180b.serialize(showcaseChangeEnabledPolicyDetails.previousValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ShowcaseChangeEnabledPolicyDetails(ShowcaseEnabledPolicy showcaseEnabledPolicy, ShowcaseEnabledPolicy showcaseEnabledPolicy2) {
        if (showcaseEnabledPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = showcaseEnabledPolicy;
        if (showcaseEnabledPolicy2 == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = showcaseEnabledPolicy2;
    }

    public boolean equals(Object obj) {
        ShowcaseEnabledPolicy showcaseEnabledPolicy;
        ShowcaseEnabledPolicy showcaseEnabledPolicy2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ShowcaseChangeEnabledPolicyDetails showcaseChangeEnabledPolicyDetails = (ShowcaseChangeEnabledPolicyDetails) obj;
        ShowcaseEnabledPolicy showcaseEnabledPolicy3 = this.newValue;
        ShowcaseEnabledPolicy showcaseEnabledPolicy4 = showcaseChangeEnabledPolicyDetails.newValue;
        return (showcaseEnabledPolicy3 == showcaseEnabledPolicy4 || showcaseEnabledPolicy3.equals(showcaseEnabledPolicy4)) && ((showcaseEnabledPolicy = this.previousValue) == (showcaseEnabledPolicy2 = showcaseChangeEnabledPolicyDetails.previousValue) || showcaseEnabledPolicy.equals(showcaseEnabledPolicy2));
    }

    public ShowcaseEnabledPolicy getNewValue() {
        return this.newValue;
    }

    public ShowcaseEnabledPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C4164a.f20440b.serialize((C4164a) this, false);
    }

    public String toStringMultiline() {
        return C4164a.f20440b.serialize((C4164a) this, true);
    }
}
