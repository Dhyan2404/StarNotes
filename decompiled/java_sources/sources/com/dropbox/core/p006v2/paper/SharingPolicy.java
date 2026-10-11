package com.dropbox.core.p006v2.paper;

import com.dropbox.core.p006v2.paper.SharingPublicPolicyType;
import com.dropbox.core.p006v2.paper.SharingTeamPolicyType;
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
public class SharingPolicy {
    protected final SharingPublicPolicyType publicSharingPolicy;
    protected final SharingTeamPolicyType teamSharingPolicy;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected SharingPublicPolicyType publicSharingPolicy = null;
        protected SharingTeamPolicyType teamSharingPolicy = null;

        public SharingPolicy build() {
            return new SharingPolicy(this.publicSharingPolicy, this.teamSharingPolicy);
        }

        public Builder withPublicSharingPolicy(SharingPublicPolicyType sharingPublicPolicyType) {
            this.publicSharingPolicy = sharingPublicPolicyType;
            return this;
        }

        public Builder withTeamSharingPolicy(SharingTeamPolicyType sharingTeamPolicyType) {
            this.teamSharingPolicy = sharingTeamPolicyType;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.SharingPolicy$a */
    /* loaded from: classes4.dex */
    public static class C2774a extends StructSerializer<SharingPolicy> {

        /* renamed from: b */
        public static final C2774a f17619b = new C2774a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharingPolicy deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            SharingPublicPolicyType sharingPublicPolicyType = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            SharingTeamPolicyType sharingTeamPolicyType = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("public_sharing_policy".equals(currentName)) {
                    sharingPublicPolicyType = (SharingPublicPolicyType) StoneSerializers.nullable(SharingPublicPolicyType.C2776b.f17621b).deserialize(jsonParser);
                } else if ("team_sharing_policy".equals(currentName)) {
                    sharingTeamPolicyType = (SharingTeamPolicyType) StoneSerializers.nullable(SharingTeamPolicyType.C2778b.f17623b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            SharingPolicy sharingPolicy = new SharingPolicy(sharingPublicPolicyType, sharingTeamPolicyType);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharingPolicy, sharingPolicy.toStringMultiline());
            return sharingPolicy;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharingPolicy sharingPolicy, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (sharingPolicy.publicSharingPolicy != null) {
                jsonGenerator.writeFieldName("public_sharing_policy");
                StoneSerializers.nullable(SharingPublicPolicyType.C2776b.f17621b).serialize((StoneSerializer) sharingPolicy.publicSharingPolicy, jsonGenerator);
            }
            if (sharingPolicy.teamSharingPolicy != null) {
                jsonGenerator.writeFieldName("team_sharing_policy");
                StoneSerializers.nullable(SharingTeamPolicyType.C2778b.f17623b).serialize((StoneSerializer) sharingPolicy.teamSharingPolicy, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharingPolicy(SharingPublicPolicyType sharingPublicPolicyType, SharingTeamPolicyType sharingTeamPolicyType) {
        this.publicSharingPolicy = sharingPublicPolicyType;
        this.teamSharingPolicy = sharingTeamPolicyType;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SharingPolicy sharingPolicy = (SharingPolicy) obj;
        SharingPublicPolicyType sharingPublicPolicyType = this.publicSharingPolicy;
        SharingPublicPolicyType sharingPublicPolicyType2 = sharingPolicy.publicSharingPolicy;
        if (sharingPublicPolicyType == sharingPublicPolicyType2 || (sharingPublicPolicyType != null && sharingPublicPolicyType.equals(sharingPublicPolicyType2))) {
            SharingTeamPolicyType sharingTeamPolicyType = this.teamSharingPolicy;
            SharingTeamPolicyType sharingTeamPolicyType2 = sharingPolicy.teamSharingPolicy;
            if (sharingTeamPolicyType == sharingTeamPolicyType2) {
                return true;
            }
            if (sharingTeamPolicyType != null && sharingTeamPolicyType.equals(sharingTeamPolicyType2)) {
                return true;
            }
        }
        return false;
    }

    public SharingPublicPolicyType getPublicSharingPolicy() {
        return this.publicSharingPolicy;
    }

    public SharingTeamPolicyType getTeamSharingPolicy() {
        return this.teamSharingPolicy;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.publicSharingPolicy, this.teamSharingPolicy});
    }

    public String toString() {
        return C2774a.f17619b.serialize((C2774a) this, false);
    }

    public String toStringMultiline() {
        return C2774a.f17619b.serialize((C2774a) this, true);
    }

    public SharingPolicy() {
        this(null, null);
    }
}
