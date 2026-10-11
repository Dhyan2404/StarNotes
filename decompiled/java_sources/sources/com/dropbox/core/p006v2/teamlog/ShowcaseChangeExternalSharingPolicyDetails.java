package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.ShowcaseExternalSharingPolicy;
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
public class ShowcaseChangeExternalSharingPolicyDetails {
    protected final ShowcaseExternalSharingPolicy newValue;
    protected final ShowcaseExternalSharingPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.ShowcaseChangeExternalSharingPolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C4166a extends StructSerializer<ShowcaseChangeExternalSharingPolicyDetails> {

        /* renamed from: b */
        public static final C4166a f20442b = new C4166a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ShowcaseChangeExternalSharingPolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            ShowcaseExternalSharingPolicy showcaseExternalSharingPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            ShowcaseExternalSharingPolicy showcaseExternalSharingPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    showcaseExternalSharingPolicy = ShowcaseExternalSharingPolicy.C4182b.f20458b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    showcaseExternalSharingPolicy2 = ShowcaseExternalSharingPolicy.C4182b.f20458b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (showcaseExternalSharingPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            if (showcaseExternalSharingPolicy2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            ShowcaseChangeExternalSharingPolicyDetails showcaseChangeExternalSharingPolicyDetails = new ShowcaseChangeExternalSharingPolicyDetails(showcaseExternalSharingPolicy, showcaseExternalSharingPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(showcaseChangeExternalSharingPolicyDetails, showcaseChangeExternalSharingPolicyDetails.toStringMultiline());
            return showcaseChangeExternalSharingPolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ShowcaseChangeExternalSharingPolicyDetails showcaseChangeExternalSharingPolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            ShowcaseExternalSharingPolicy.C4182b c4182b = ShowcaseExternalSharingPolicy.C4182b.f20458b;
            c4182b.serialize(showcaseChangeExternalSharingPolicyDetails.newValue, jsonGenerator);
            jsonGenerator.writeFieldName("previous_value");
            c4182b.serialize(showcaseChangeExternalSharingPolicyDetails.previousValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ShowcaseChangeExternalSharingPolicyDetails(ShowcaseExternalSharingPolicy showcaseExternalSharingPolicy, ShowcaseExternalSharingPolicy showcaseExternalSharingPolicy2) {
        if (showcaseExternalSharingPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = showcaseExternalSharingPolicy;
        if (showcaseExternalSharingPolicy2 == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = showcaseExternalSharingPolicy2;
    }

    public boolean equals(Object obj) {
        ShowcaseExternalSharingPolicy showcaseExternalSharingPolicy;
        ShowcaseExternalSharingPolicy showcaseExternalSharingPolicy2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ShowcaseChangeExternalSharingPolicyDetails showcaseChangeExternalSharingPolicyDetails = (ShowcaseChangeExternalSharingPolicyDetails) obj;
        ShowcaseExternalSharingPolicy showcaseExternalSharingPolicy3 = this.newValue;
        ShowcaseExternalSharingPolicy showcaseExternalSharingPolicy4 = showcaseChangeExternalSharingPolicyDetails.newValue;
        return (showcaseExternalSharingPolicy3 == showcaseExternalSharingPolicy4 || showcaseExternalSharingPolicy3.equals(showcaseExternalSharingPolicy4)) && ((showcaseExternalSharingPolicy = this.previousValue) == (showcaseExternalSharingPolicy2 = showcaseChangeExternalSharingPolicyDetails.previousValue) || showcaseExternalSharingPolicy.equals(showcaseExternalSharingPolicy2));
    }

    public ShowcaseExternalSharingPolicy getNewValue() {
        return this.newValue;
    }

    public ShowcaseExternalSharingPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C4166a.f20442b.serialize((C4166a) this, false);
    }

    public String toStringMultiline() {
        return C4166a.f20442b.serialize((C4166a) this, true);
    }
}
