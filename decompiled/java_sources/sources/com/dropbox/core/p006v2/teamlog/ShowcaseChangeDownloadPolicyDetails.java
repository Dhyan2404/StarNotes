package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.ShowcaseDownloadPolicy;
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
public class ShowcaseChangeDownloadPolicyDetails {
    protected final ShowcaseDownloadPolicy newValue;
    protected final ShowcaseDownloadPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.ShowcaseChangeDownloadPolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C4162a extends StructSerializer<ShowcaseChangeDownloadPolicyDetails> {

        /* renamed from: b */
        public static final C4162a f20438b = new C4162a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ShowcaseChangeDownloadPolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            ShowcaseDownloadPolicy showcaseDownloadPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            ShowcaseDownloadPolicy showcaseDownloadPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    showcaseDownloadPolicy = ShowcaseDownloadPolicy.C4174b.f20450b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    showcaseDownloadPolicy2 = ShowcaseDownloadPolicy.C4174b.f20450b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (showcaseDownloadPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            if (showcaseDownloadPolicy2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            ShowcaseChangeDownloadPolicyDetails showcaseChangeDownloadPolicyDetails = new ShowcaseChangeDownloadPolicyDetails(showcaseDownloadPolicy, showcaseDownloadPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(showcaseChangeDownloadPolicyDetails, showcaseChangeDownloadPolicyDetails.toStringMultiline());
            return showcaseChangeDownloadPolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ShowcaseChangeDownloadPolicyDetails showcaseChangeDownloadPolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            ShowcaseDownloadPolicy.C4174b c4174b = ShowcaseDownloadPolicy.C4174b.f20450b;
            c4174b.serialize(showcaseChangeDownloadPolicyDetails.newValue, jsonGenerator);
            jsonGenerator.writeFieldName("previous_value");
            c4174b.serialize(showcaseChangeDownloadPolicyDetails.previousValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ShowcaseChangeDownloadPolicyDetails(ShowcaseDownloadPolicy showcaseDownloadPolicy, ShowcaseDownloadPolicy showcaseDownloadPolicy2) {
        if (showcaseDownloadPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = showcaseDownloadPolicy;
        if (showcaseDownloadPolicy2 == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = showcaseDownloadPolicy2;
    }

    public boolean equals(Object obj) {
        ShowcaseDownloadPolicy showcaseDownloadPolicy;
        ShowcaseDownloadPolicy showcaseDownloadPolicy2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ShowcaseChangeDownloadPolicyDetails showcaseChangeDownloadPolicyDetails = (ShowcaseChangeDownloadPolicyDetails) obj;
        ShowcaseDownloadPolicy showcaseDownloadPolicy3 = this.newValue;
        ShowcaseDownloadPolicy showcaseDownloadPolicy4 = showcaseChangeDownloadPolicyDetails.newValue;
        return (showcaseDownloadPolicy3 == showcaseDownloadPolicy4 || showcaseDownloadPolicy3.equals(showcaseDownloadPolicy4)) && ((showcaseDownloadPolicy = this.previousValue) == (showcaseDownloadPolicy2 = showcaseChangeDownloadPolicyDetails.previousValue) || showcaseDownloadPolicy.equals(showcaseDownloadPolicy2));
    }

    public ShowcaseDownloadPolicy getNewValue() {
        return this.newValue;
    }

    public ShowcaseDownloadPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C4162a.f20438b.serialize((C4162a) this, false);
    }

    public String toStringMultiline() {
        return C4162a.f20438b.serialize((C4162a) this, true);
    }
}
