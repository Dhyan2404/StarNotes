package com.dropbox.core.p006v2.teamlog;

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
public class PaperDocChangeSharingPolicyDetails {
    protected final String eventUuid;
    protected final String publicSharingPolicy;
    protected final String teamSharingPolicy;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected final String eventUuid;
        protected String publicSharingPolicy;
        protected String teamSharingPolicy;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'eventUuid' is null");
            }
            this.eventUuid = str;
            this.publicSharingPolicy = null;
            this.teamSharingPolicy = null;
        }

        public PaperDocChangeSharingPolicyDetails build() {
            return new PaperDocChangeSharingPolicyDetails(this.eventUuid, this.publicSharingPolicy, this.teamSharingPolicy);
        }

        public Builder withPublicSharingPolicy(String str) {
            this.publicSharingPolicy = str;
            return this;
        }

        public Builder withTeamSharingPolicy(String str) {
            this.teamSharingPolicy = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.PaperDocChangeSharingPolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C3876a extends StructSerializer<PaperDocChangeSharingPolicyDetails> {

        /* renamed from: b */
        public static final C3876a f20149b = new C3876a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperDocChangeSharingPolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str3 = null;
            String str4 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("event_uuid".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("public_sharing_policy".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("team_sharing_policy".equals(currentName)) {
                    str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"event_uuid\" missing.");
            }
            PaperDocChangeSharingPolicyDetails paperDocChangeSharingPolicyDetails = new PaperDocChangeSharingPolicyDetails(str2, str3, str4);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(paperDocChangeSharingPolicyDetails, paperDocChangeSharingPolicyDetails.toStringMultiline());
            return paperDocChangeSharingPolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperDocChangeSharingPolicyDetails paperDocChangeSharingPolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("event_uuid");
            StoneSerializers.string().serialize((StoneSerializer<String>) paperDocChangeSharingPolicyDetails.eventUuid, jsonGenerator);
            if (paperDocChangeSharingPolicyDetails.publicSharingPolicy != null) {
                jsonGenerator.writeFieldName("public_sharing_policy");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) paperDocChangeSharingPolicyDetails.publicSharingPolicy, jsonGenerator);
            }
            if (paperDocChangeSharingPolicyDetails.teamSharingPolicy != null) {
                jsonGenerator.writeFieldName("team_sharing_policy");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) paperDocChangeSharingPolicyDetails.teamSharingPolicy, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PaperDocChangeSharingPolicyDetails(String str, String str2, String str3) {
        if (str != null) {
            this.eventUuid = str;
            this.publicSharingPolicy = str2;
            this.teamSharingPolicy = str3;
            return;
        }
        throw new IllegalArgumentException("Required value for 'eventUuid' is null");
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        PaperDocChangeSharingPolicyDetails paperDocChangeSharingPolicyDetails = (PaperDocChangeSharingPolicyDetails) obj;
        String str3 = this.eventUuid;
        String str4 = paperDocChangeSharingPolicyDetails.eventUuid;
        if ((str3 == str4 || str3.equals(str4)) && ((str = this.publicSharingPolicy) == (str2 = paperDocChangeSharingPolicyDetails.publicSharingPolicy) || (str != null && str.equals(str2)))) {
            String str5 = this.teamSharingPolicy;
            String str6 = paperDocChangeSharingPolicyDetails.teamSharingPolicy;
            if (str5 == str6) {
                return true;
            }
            if (str5 != null && str5.equals(str6)) {
                return true;
            }
        }
        return false;
    }

    public String getEventUuid() {
        return this.eventUuid;
    }

    public String getPublicSharingPolicy() {
        return this.publicSharingPolicy;
    }

    public String getTeamSharingPolicy() {
        return this.teamSharingPolicy;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.eventUuid, this.publicSharingPolicy, this.teamSharingPolicy});
    }

    public String toString() {
        return C3876a.f20149b.serialize((C3876a) this, false);
    }

    public String toStringMultiline() {
        return C3876a.f20149b.serialize((C3876a) this, true);
    }

    public PaperDocChangeSharingPolicyDetails(String str) {
        this(str, null, null);
    }
}
