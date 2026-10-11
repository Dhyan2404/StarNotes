package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.LinkAccessLevel;
import com.dropbox.core.p006v2.sharing.LinkAudience;
import com.dropbox.core.p006v2.sharing.RequestedVisibility;
import com.dropbox.core.p006v2.sharing.ResolvedVisibility;
import com.dropbox.core.p006v2.sharing.SharedLinkAccessFailureReason;
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
public class LinkPermissions {
    protected final boolean canRevoke;
    protected final LinkAudience effectiveAudience;
    protected final LinkAccessLevel linkAccessLevel;
    protected final RequestedVisibility requestedVisibility;
    protected final ResolvedVisibility resolvedVisibility;
    protected final SharedLinkAccessFailureReason revokeFailureReason;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected final boolean canRevoke;
        protected ResolvedVisibility resolvedVisibility = null;
        protected RequestedVisibility requestedVisibility = null;
        protected SharedLinkAccessFailureReason revokeFailureReason = null;
        protected LinkAudience effectiveAudience = null;
        protected LinkAccessLevel linkAccessLevel = null;

        public Builder(boolean z) {
            this.canRevoke = z;
        }

        public LinkPermissions build() {
            return new LinkPermissions(this.canRevoke, this.resolvedVisibility, this.requestedVisibility, this.revokeFailureReason, this.effectiveAudience, this.linkAccessLevel);
        }

        public Builder withEffectiveAudience(LinkAudience linkAudience) {
            this.effectiveAudience = linkAudience;
            return this;
        }

        public Builder withLinkAccessLevel(LinkAccessLevel linkAccessLevel) {
            this.linkAccessLevel = linkAccessLevel;
            return this;
        }

        public Builder withRequestedVisibility(RequestedVisibility requestedVisibility) {
            this.requestedVisibility = requestedVisibility;
            return this;
        }

        public Builder withResolvedVisibility(ResolvedVisibility resolvedVisibility) {
            this.resolvedVisibility = resolvedVisibility;
            return this;
        }

        public Builder withRevokeFailureReason(SharedLinkAccessFailureReason sharedLinkAccessFailureReason) {
            this.revokeFailureReason = sharedLinkAccessFailureReason;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.LinkPermissions$a */
    /* loaded from: classes4.dex */
    public static class C2864a extends StructSerializer<LinkPermissions> {

        /* renamed from: b */
        public static final C2864a f17796b = new C2864a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LinkPermissions deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Boolean bool = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            ResolvedVisibility resolvedVisibility = null;
            RequestedVisibility requestedVisibility = null;
            SharedLinkAccessFailureReason sharedLinkAccessFailureReason = null;
            LinkAudience linkAudience = null;
            LinkAccessLevel linkAccessLevel = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("can_revoke".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("resolved_visibility".equals(currentName)) {
                    resolvedVisibility = (ResolvedVisibility) StoneSerializers.nullable(ResolvedVisibility.C2923b.f17920b).deserialize(jsonParser);
                } else if ("requested_visibility".equals(currentName)) {
                    requestedVisibility = (RequestedVisibility) StoneSerializers.nullable(RequestedVisibility.C2921b.f17918b).deserialize(jsonParser);
                } else if ("revoke_failure_reason".equals(currentName)) {
                    sharedLinkAccessFailureReason = (SharedLinkAccessFailureReason) StoneSerializers.nullable(SharedLinkAccessFailureReason.C2950b.f17974b).deserialize(jsonParser);
                } else if ("effective_audience".equals(currentName)) {
                    linkAudience = (LinkAudience) StoneSerializers.nullable(LinkAudience.Serializer.INSTANCE).deserialize(jsonParser);
                } else if ("link_access_level".equals(currentName)) {
                    linkAccessLevel = (LinkAccessLevel) StoneSerializers.nullable(LinkAccessLevel.C2854b.f17782b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"can_revoke\" missing.");
            }
            LinkPermissions linkPermissions = new LinkPermissions(bool.booleanValue(), resolvedVisibility, requestedVisibility, sharedLinkAccessFailureReason, linkAudience, linkAccessLevel);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(linkPermissions, linkPermissions.toStringMultiline());
            return linkPermissions;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LinkPermissions linkPermissions, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("can_revoke");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(linkPermissions.canRevoke), jsonGenerator);
            if (linkPermissions.resolvedVisibility != null) {
                jsonGenerator.writeFieldName("resolved_visibility");
                StoneSerializers.nullable(ResolvedVisibility.C2923b.f17920b).serialize((StoneSerializer) linkPermissions.resolvedVisibility, jsonGenerator);
            }
            if (linkPermissions.requestedVisibility != null) {
                jsonGenerator.writeFieldName("requested_visibility");
                StoneSerializers.nullable(RequestedVisibility.C2921b.f17918b).serialize((StoneSerializer) linkPermissions.requestedVisibility, jsonGenerator);
            }
            if (linkPermissions.revokeFailureReason != null) {
                jsonGenerator.writeFieldName("revoke_failure_reason");
                StoneSerializers.nullable(SharedLinkAccessFailureReason.C2950b.f17974b).serialize((StoneSerializer) linkPermissions.revokeFailureReason, jsonGenerator);
            }
            if (linkPermissions.effectiveAudience != null) {
                jsonGenerator.writeFieldName("effective_audience");
                StoneSerializers.nullable(LinkAudience.Serializer.INSTANCE).serialize((StoneSerializer) linkPermissions.effectiveAudience, jsonGenerator);
            }
            if (linkPermissions.linkAccessLevel != null) {
                jsonGenerator.writeFieldName("link_access_level");
                StoneSerializers.nullable(LinkAccessLevel.C2854b.f17782b).serialize((StoneSerializer) linkPermissions.linkAccessLevel, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public LinkPermissions(boolean z, ResolvedVisibility resolvedVisibility, RequestedVisibility requestedVisibility, SharedLinkAccessFailureReason sharedLinkAccessFailureReason, LinkAudience linkAudience, LinkAccessLevel linkAccessLevel) {
        this.resolvedVisibility = resolvedVisibility;
        this.requestedVisibility = requestedVisibility;
        this.canRevoke = z;
        this.revokeFailureReason = sharedLinkAccessFailureReason;
        this.effectiveAudience = linkAudience;
        this.linkAccessLevel = linkAccessLevel;
    }

    public static Builder newBuilder(boolean z) {
        return new Builder(z);
    }

    public boolean equals(Object obj) {
        ResolvedVisibility resolvedVisibility;
        ResolvedVisibility resolvedVisibility2;
        RequestedVisibility requestedVisibility;
        RequestedVisibility requestedVisibility2;
        SharedLinkAccessFailureReason sharedLinkAccessFailureReason;
        SharedLinkAccessFailureReason sharedLinkAccessFailureReason2;
        LinkAudience linkAudience;
        LinkAudience linkAudience2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        LinkPermissions linkPermissions = (LinkPermissions) obj;
        if (this.canRevoke == linkPermissions.canRevoke && (((resolvedVisibility = this.resolvedVisibility) == (resolvedVisibility2 = linkPermissions.resolvedVisibility) || (resolvedVisibility != null && resolvedVisibility.equals(resolvedVisibility2))) && (((requestedVisibility = this.requestedVisibility) == (requestedVisibility2 = linkPermissions.requestedVisibility) || (requestedVisibility != null && requestedVisibility.equals(requestedVisibility2))) && (((sharedLinkAccessFailureReason = this.revokeFailureReason) == (sharedLinkAccessFailureReason2 = linkPermissions.revokeFailureReason) || (sharedLinkAccessFailureReason != null && sharedLinkAccessFailureReason.equals(sharedLinkAccessFailureReason2))) && ((linkAudience = this.effectiveAudience) == (linkAudience2 = linkPermissions.effectiveAudience) || (linkAudience != null && linkAudience.equals(linkAudience2))))))) {
            LinkAccessLevel linkAccessLevel = this.linkAccessLevel;
            LinkAccessLevel linkAccessLevel2 = linkPermissions.linkAccessLevel;
            if (linkAccessLevel == linkAccessLevel2) {
                return true;
            }
            if (linkAccessLevel != null && linkAccessLevel.equals(linkAccessLevel2)) {
                return true;
            }
        }
        return false;
    }

    public boolean getCanRevoke() {
        return this.canRevoke;
    }

    public LinkAudience getEffectiveAudience() {
        return this.effectiveAudience;
    }

    public LinkAccessLevel getLinkAccessLevel() {
        return this.linkAccessLevel;
    }

    public RequestedVisibility getRequestedVisibility() {
        return this.requestedVisibility;
    }

    public ResolvedVisibility getResolvedVisibility() {
        return this.resolvedVisibility;
    }

    public SharedLinkAccessFailureReason getRevokeFailureReason() {
        return this.revokeFailureReason;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.resolvedVisibility, this.requestedVisibility, Boolean.valueOf(this.canRevoke), this.revokeFailureReason, this.effectiveAudience, this.linkAccessLevel});
    }

    public String toString() {
        return C2864a.f17796b.serialize((C2864a) this, false);
    }

    public String toStringMultiline() {
        return C2864a.f17796b.serialize((C2864a) this, true);
    }

    public LinkPermissions(boolean z) {
        this(z, null, null, null, null, null);
    }
}
