package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.AccessLevel;
import com.dropbox.core.p006v2.sharing.LinkAudience;
import com.dropbox.core.p006v2.sharing.LinkExpiry;
import com.dropbox.core.p006v2.sharing.LinkPassword;
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
public class LinkSettings {
    protected final AccessLevel accessLevel;
    protected final LinkAudience audience;
    protected final LinkExpiry expiry;
    protected final LinkPassword password;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected AccessLevel accessLevel = null;
        protected LinkAudience audience = null;
        protected LinkExpiry expiry = null;
        protected LinkPassword password = null;

        public LinkSettings build() {
            return new LinkSettings(this.accessLevel, this.audience, this.expiry, this.password);
        }

        public Builder withAccessLevel(AccessLevel accessLevel) {
            this.accessLevel = accessLevel;
            return this;
        }

        public Builder withAudience(LinkAudience linkAudience) {
            this.audience = linkAudience;
            return this;
        }

        public Builder withExpiry(LinkExpiry linkExpiry) {
            this.expiry = linkExpiry;
            return this;
        }

        public Builder withPassword(LinkPassword linkPassword) {
            this.password = linkPassword;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.LinkSettings$a */
    /* loaded from: classes4.dex */
    public static class C2865a extends StructSerializer<LinkSettings> {

        /* renamed from: b */
        public static final C2865a f17797b = new C2865a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LinkSettings deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            AccessLevel accessLevel = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            LinkAudience linkAudience = null;
            LinkExpiry linkExpiry = null;
            LinkPassword linkPassword = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("access_level".equals(currentName)) {
                    accessLevel = (AccessLevel) StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).deserialize(jsonParser);
                } else if ("audience".equals(currentName)) {
                    linkAudience = (LinkAudience) StoneSerializers.nullable(LinkAudience.Serializer.INSTANCE).deserialize(jsonParser);
                } else if ("expiry".equals(currentName)) {
                    linkExpiry = (LinkExpiry) StoneSerializers.nullable(LinkExpiry.C2859b.f17789b).deserialize(jsonParser);
                } else if ("password".equals(currentName)) {
                    linkPassword = (LinkPassword) StoneSerializers.nullable(LinkPassword.C2862b.f17794b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            LinkSettings linkSettings = new LinkSettings(accessLevel, linkAudience, linkExpiry, linkPassword);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(linkSettings, linkSettings.toStringMultiline());
            return linkSettings;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LinkSettings linkSettings, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (linkSettings.accessLevel != null) {
                jsonGenerator.writeFieldName("access_level");
                StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).serialize((StoneSerializer) linkSettings.accessLevel, jsonGenerator);
            }
            if (linkSettings.audience != null) {
                jsonGenerator.writeFieldName("audience");
                StoneSerializers.nullable(LinkAudience.Serializer.INSTANCE).serialize((StoneSerializer) linkSettings.audience, jsonGenerator);
            }
            if (linkSettings.expiry != null) {
                jsonGenerator.writeFieldName("expiry");
                StoneSerializers.nullable(LinkExpiry.C2859b.f17789b).serialize((StoneSerializer) linkSettings.expiry, jsonGenerator);
            }
            if (linkSettings.password != null) {
                jsonGenerator.writeFieldName("password");
                StoneSerializers.nullable(LinkPassword.C2862b.f17794b).serialize((StoneSerializer) linkSettings.password, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public LinkSettings(AccessLevel accessLevel, LinkAudience linkAudience, LinkExpiry linkExpiry, LinkPassword linkPassword) {
        this.accessLevel = accessLevel;
        this.audience = linkAudience;
        this.expiry = linkExpiry;
        this.password = linkPassword;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        LinkAudience linkAudience;
        LinkAudience linkAudience2;
        LinkExpiry linkExpiry;
        LinkExpiry linkExpiry2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        LinkSettings linkSettings = (LinkSettings) obj;
        AccessLevel accessLevel = this.accessLevel;
        AccessLevel accessLevel2 = linkSettings.accessLevel;
        if ((accessLevel == accessLevel2 || (accessLevel != null && accessLevel.equals(accessLevel2))) && (((linkAudience = this.audience) == (linkAudience2 = linkSettings.audience) || (linkAudience != null && linkAudience.equals(linkAudience2))) && ((linkExpiry = this.expiry) == (linkExpiry2 = linkSettings.expiry) || (linkExpiry != null && linkExpiry.equals(linkExpiry2))))) {
            LinkPassword linkPassword = this.password;
            LinkPassword linkPassword2 = linkSettings.password;
            if (linkPassword == linkPassword2) {
                return true;
            }
            if (linkPassword != null && linkPassword.equals(linkPassword2)) {
                return true;
            }
        }
        return false;
    }

    public AccessLevel getAccessLevel() {
        return this.accessLevel;
    }

    public LinkAudience getAudience() {
        return this.audience;
    }

    public LinkExpiry getExpiry() {
        return this.expiry;
    }

    public LinkPassword getPassword() {
        return this.password;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.accessLevel, this.audience, this.expiry, this.password});
    }

    public String toString() {
        return C2865a.f17797b.serialize((C2865a) this, false);
    }

    public String toStringMultiline() {
        return C2865a.f17797b.serialize((C2865a) this, true);
    }

    public LinkSettings() {
        this(null, null, null, null);
    }
}
