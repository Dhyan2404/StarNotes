package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.LinkAudience;
import com.dropbox.core.p006v2.sharing.RequestedLinkAccessLevel;
import com.dropbox.core.p006v2.sharing.RequestedVisibility;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import org.apache.http.cookie.ClientCookie;

/* loaded from: classes4.dex */
public class SharedLinkSettings {
    protected final RequestedLinkAccessLevel access;
    protected final LinkAudience audience;
    protected final Date expires;
    protected final String linkPassword;
    protected final RequestedVisibility requestedVisibility;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected RequestedVisibility requestedVisibility = null;
        protected String linkPassword = null;
        protected Date expires = null;
        protected LinkAudience audience = null;
        protected RequestedLinkAccessLevel access = null;

        public SharedLinkSettings build() {
            return new SharedLinkSettings(this.requestedVisibility, this.linkPassword, this.expires, this.audience, this.access);
        }

        public Builder withAccess(RequestedLinkAccessLevel requestedLinkAccessLevel) {
            this.access = requestedLinkAccessLevel;
            return this;
        }

        public Builder withAudience(LinkAudience linkAudience) {
            this.audience = linkAudience;
            return this;
        }

        public Builder withExpires(Date date) {
            this.expires = LangUtil.truncateMillis(date);
            return this;
        }

        public Builder withLinkPassword(String str) {
            this.linkPassword = str;
            return this;
        }

        public Builder withRequestedVisibility(RequestedVisibility requestedVisibility) {
            this.requestedVisibility = requestedVisibility;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.SharedLinkSettings$a */
    /* loaded from: classes4.dex */
    public static class C2957a extends StructSerializer<SharedLinkSettings> {

        /* renamed from: b */
        public static final C2957a f17985b = new C2957a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedLinkSettings deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            RequestedVisibility requestedVisibility = null;
            String str2 = null;
            Date date = null;
            LinkAudience linkAudience = null;
            RequestedLinkAccessLevel requestedLinkAccessLevel = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("requested_visibility".equals(currentName)) {
                    requestedVisibility = (RequestedVisibility) StoneSerializers.nullable(RequestedVisibility.C2921b.f17918b).deserialize(jsonParser);
                } else if ("link_password".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if (ClientCookie.EXPIRES_ATTR.equals(currentName)) {
                    date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else if ("audience".equals(currentName)) {
                    linkAudience = (LinkAudience) StoneSerializers.nullable(LinkAudience.Serializer.INSTANCE).deserialize(jsonParser);
                } else if ("access".equals(currentName)) {
                    requestedLinkAccessLevel = (RequestedLinkAccessLevel) StoneSerializers.nullable(RequestedLinkAccessLevel.C2919b.f17916b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            SharedLinkSettings sharedLinkSettings = new SharedLinkSettings(requestedVisibility, str2, date, linkAudience, requestedLinkAccessLevel);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedLinkSettings, sharedLinkSettings.toStringMultiline());
            return sharedLinkSettings;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedLinkSettings sharedLinkSettings, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (sharedLinkSettings.requestedVisibility != null) {
                jsonGenerator.writeFieldName("requested_visibility");
                StoneSerializers.nullable(RequestedVisibility.C2921b.f17918b).serialize((StoneSerializer) sharedLinkSettings.requestedVisibility, jsonGenerator);
            }
            if (sharedLinkSettings.linkPassword != null) {
                jsonGenerator.writeFieldName("link_password");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedLinkSettings.linkPassword, jsonGenerator);
            }
            if (sharedLinkSettings.expires != null) {
                jsonGenerator.writeFieldName(ClientCookie.EXPIRES_ATTR);
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) sharedLinkSettings.expires, jsonGenerator);
            }
            if (sharedLinkSettings.audience != null) {
                jsonGenerator.writeFieldName("audience");
                StoneSerializers.nullable(LinkAudience.Serializer.INSTANCE).serialize((StoneSerializer) sharedLinkSettings.audience, jsonGenerator);
            }
            if (sharedLinkSettings.access != null) {
                jsonGenerator.writeFieldName("access");
                StoneSerializers.nullable(RequestedLinkAccessLevel.C2919b.f17916b).serialize((StoneSerializer) sharedLinkSettings.access, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedLinkSettings(RequestedVisibility requestedVisibility, String str, Date date, LinkAudience linkAudience, RequestedLinkAccessLevel requestedLinkAccessLevel) {
        this.requestedVisibility = requestedVisibility;
        this.linkPassword = str;
        this.expires = LangUtil.truncateMillis(date);
        this.audience = linkAudience;
        this.access = requestedLinkAccessLevel;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        Date date;
        Date date2;
        LinkAudience linkAudience;
        LinkAudience linkAudience2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SharedLinkSettings sharedLinkSettings = (SharedLinkSettings) obj;
        RequestedVisibility requestedVisibility = this.requestedVisibility;
        RequestedVisibility requestedVisibility2 = sharedLinkSettings.requestedVisibility;
        if ((requestedVisibility == requestedVisibility2 || (requestedVisibility != null && requestedVisibility.equals(requestedVisibility2))) && (((str = this.linkPassword) == (str2 = sharedLinkSettings.linkPassword) || (str != null && str.equals(str2))) && (((date = this.expires) == (date2 = sharedLinkSettings.expires) || (date != null && date.equals(date2))) && ((linkAudience = this.audience) == (linkAudience2 = sharedLinkSettings.audience) || (linkAudience != null && linkAudience.equals(linkAudience2)))))) {
            RequestedLinkAccessLevel requestedLinkAccessLevel = this.access;
            RequestedLinkAccessLevel requestedLinkAccessLevel2 = sharedLinkSettings.access;
            if (requestedLinkAccessLevel == requestedLinkAccessLevel2) {
                return true;
            }
            if (requestedLinkAccessLevel != null && requestedLinkAccessLevel.equals(requestedLinkAccessLevel2)) {
                return true;
            }
        }
        return false;
    }

    public RequestedLinkAccessLevel getAccess() {
        return this.access;
    }

    public LinkAudience getAudience() {
        return this.audience;
    }

    public Date getExpires() {
        return this.expires;
    }

    public String getLinkPassword() {
        return this.linkPassword;
    }

    public RequestedVisibility getRequestedVisibility() {
        return this.requestedVisibility;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.requestedVisibility, this.linkPassword, this.expires, this.audience, this.access});
    }

    public String toString() {
        return C2957a.f17985b.serialize((C2957a) this, false);
    }

    public String toStringMultiline() {
        return C2957a.f17985b.serialize((C2957a) this, true);
    }

    public SharedLinkSettings() {
        this(null, null, null, null, null);
    }
}
