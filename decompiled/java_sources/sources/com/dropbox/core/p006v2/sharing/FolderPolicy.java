package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.AclUpdatePolicy;
import com.dropbox.core.p006v2.sharing.MemberPolicy;
import com.dropbox.core.p006v2.sharing.SharedLinkPolicy;
import com.dropbox.core.p006v2.sharing.ViewerInfoPolicy;
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
public class FolderPolicy {
    protected final AclUpdatePolicy aclUpdatePolicy;
    protected final MemberPolicy memberPolicy;
    protected final MemberPolicy resolvedMemberPolicy;
    protected final SharedLinkPolicy sharedLinkPolicy;
    protected final ViewerInfoPolicy viewerInfoPolicy;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected final AclUpdatePolicy aclUpdatePolicy;
        protected MemberPolicy memberPolicy;
        protected MemberPolicy resolvedMemberPolicy;
        protected final SharedLinkPolicy sharedLinkPolicy;
        protected ViewerInfoPolicy viewerInfoPolicy;

        public Builder(AclUpdatePolicy aclUpdatePolicy, SharedLinkPolicy sharedLinkPolicy) {
            if (aclUpdatePolicy == null) {
                throw new IllegalArgumentException("Required value for 'aclUpdatePolicy' is null");
            }
            this.aclUpdatePolicy = aclUpdatePolicy;
            if (sharedLinkPolicy == null) {
                throw new IllegalArgumentException("Required value for 'sharedLinkPolicy' is null");
            }
            this.sharedLinkPolicy = sharedLinkPolicy;
            this.memberPolicy = null;
            this.resolvedMemberPolicy = null;
            this.viewerInfoPolicy = null;
        }

        public FolderPolicy build() {
            return new FolderPolicy(this.aclUpdatePolicy, this.sharedLinkPolicy, this.memberPolicy, this.resolvedMemberPolicy, this.viewerInfoPolicy);
        }

        public Builder withMemberPolicy(MemberPolicy memberPolicy) {
            this.memberPolicy = memberPolicy;
            return this;
        }

        public Builder withResolvedMemberPolicy(MemberPolicy memberPolicy) {
            this.resolvedMemberPolicy = memberPolicy;
            return this;
        }

        public Builder withViewerInfoPolicy(ViewerInfoPolicy viewerInfoPolicy) {
            this.viewerInfoPolicy = viewerInfoPolicy;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.FolderPolicy$a */
    /* loaded from: classes4.dex */
    public static class C2831a extends StructSerializer<FolderPolicy> {

        /* renamed from: b */
        public static final C2831a f17736b = new C2831a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FolderPolicy deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            AclUpdatePolicy aclUpdatePolicy = null;
            SharedLinkPolicy sharedLinkPolicy = null;
            MemberPolicy memberPolicy = null;
            MemberPolicy memberPolicy2 = null;
            ViewerInfoPolicy viewerInfoPolicy = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("acl_update_policy".equals(currentName)) {
                    aclUpdatePolicy = AclUpdatePolicy.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("shared_link_policy".equals(currentName)) {
                    sharedLinkPolicy = SharedLinkPolicy.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("member_policy".equals(currentName)) {
                    memberPolicy = (MemberPolicy) StoneSerializers.nullable(MemberPolicy.Serializer.INSTANCE).deserialize(jsonParser);
                } else if ("resolved_member_policy".equals(currentName)) {
                    memberPolicy2 = (MemberPolicy) StoneSerializers.nullable(MemberPolicy.Serializer.INSTANCE).deserialize(jsonParser);
                } else if ("viewer_info_policy".equals(currentName)) {
                    viewerInfoPolicy = (ViewerInfoPolicy) StoneSerializers.nullable(ViewerInfoPolicy.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (aclUpdatePolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"acl_update_policy\" missing.");
            }
            if (sharedLinkPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"shared_link_policy\" missing.");
            }
            FolderPolicy folderPolicy = new FolderPolicy(aclUpdatePolicy, sharedLinkPolicy, memberPolicy, memberPolicy2, viewerInfoPolicy);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(folderPolicy, folderPolicy.toStringMultiline());
            return folderPolicy;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FolderPolicy folderPolicy, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("acl_update_policy");
            AclUpdatePolicy.Serializer.INSTANCE.serialize(folderPolicy.aclUpdatePolicy, jsonGenerator);
            jsonGenerator.writeFieldName("shared_link_policy");
            SharedLinkPolicy.Serializer.INSTANCE.serialize(folderPolicy.sharedLinkPolicy, jsonGenerator);
            if (folderPolicy.memberPolicy != null) {
                jsonGenerator.writeFieldName("member_policy");
                StoneSerializers.nullable(MemberPolicy.Serializer.INSTANCE).serialize((StoneSerializer) folderPolicy.memberPolicy, jsonGenerator);
            }
            if (folderPolicy.resolvedMemberPolicy != null) {
                jsonGenerator.writeFieldName("resolved_member_policy");
                StoneSerializers.nullable(MemberPolicy.Serializer.INSTANCE).serialize((StoneSerializer) folderPolicy.resolvedMemberPolicy, jsonGenerator);
            }
            if (folderPolicy.viewerInfoPolicy != null) {
                jsonGenerator.writeFieldName("viewer_info_policy");
                StoneSerializers.nullable(ViewerInfoPolicy.Serializer.INSTANCE).serialize((StoneSerializer) folderPolicy.viewerInfoPolicy, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FolderPolicy(AclUpdatePolicy aclUpdatePolicy, SharedLinkPolicy sharedLinkPolicy, MemberPolicy memberPolicy, MemberPolicy memberPolicy2, ViewerInfoPolicy viewerInfoPolicy) {
        this.memberPolicy = memberPolicy;
        this.resolvedMemberPolicy = memberPolicy2;
        if (aclUpdatePolicy != null) {
            this.aclUpdatePolicy = aclUpdatePolicy;
            if (sharedLinkPolicy != null) {
                this.sharedLinkPolicy = sharedLinkPolicy;
                this.viewerInfoPolicy = viewerInfoPolicy;
                return;
            }
            throw new IllegalArgumentException("Required value for 'sharedLinkPolicy' is null");
        }
        throw new IllegalArgumentException("Required value for 'aclUpdatePolicy' is null");
    }

    public static Builder newBuilder(AclUpdatePolicy aclUpdatePolicy, SharedLinkPolicy sharedLinkPolicy) {
        return new Builder(aclUpdatePolicy, sharedLinkPolicy);
    }

    public boolean equals(Object obj) {
        SharedLinkPolicy sharedLinkPolicy;
        SharedLinkPolicy sharedLinkPolicy2;
        MemberPolicy memberPolicy;
        MemberPolicy memberPolicy2;
        MemberPolicy memberPolicy3;
        MemberPolicy memberPolicy4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FolderPolicy folderPolicy = (FolderPolicy) obj;
        AclUpdatePolicy aclUpdatePolicy = this.aclUpdatePolicy;
        AclUpdatePolicy aclUpdatePolicy2 = folderPolicy.aclUpdatePolicy;
        if ((aclUpdatePolicy == aclUpdatePolicy2 || aclUpdatePolicy.equals(aclUpdatePolicy2)) && (((sharedLinkPolicy = this.sharedLinkPolicy) == (sharedLinkPolicy2 = folderPolicy.sharedLinkPolicy) || sharedLinkPolicy.equals(sharedLinkPolicy2)) && (((memberPolicy = this.memberPolicy) == (memberPolicy2 = folderPolicy.memberPolicy) || (memberPolicy != null && memberPolicy.equals(memberPolicy2))) && ((memberPolicy3 = this.resolvedMemberPolicy) == (memberPolicy4 = folderPolicy.resolvedMemberPolicy) || (memberPolicy3 != null && memberPolicy3.equals(memberPolicy4)))))) {
            ViewerInfoPolicy viewerInfoPolicy = this.viewerInfoPolicy;
            ViewerInfoPolicy viewerInfoPolicy2 = folderPolicy.viewerInfoPolicy;
            if (viewerInfoPolicy == viewerInfoPolicy2) {
                return true;
            }
            if (viewerInfoPolicy != null && viewerInfoPolicy.equals(viewerInfoPolicy2)) {
                return true;
            }
        }
        return false;
    }

    public AclUpdatePolicy getAclUpdatePolicy() {
        return this.aclUpdatePolicy;
    }

    public MemberPolicy getMemberPolicy() {
        return this.memberPolicy;
    }

    public MemberPolicy getResolvedMemberPolicy() {
        return this.resolvedMemberPolicy;
    }

    public SharedLinkPolicy getSharedLinkPolicy() {
        return this.sharedLinkPolicy;
    }

    public ViewerInfoPolicy getViewerInfoPolicy() {
        return this.viewerInfoPolicy;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.memberPolicy, this.resolvedMemberPolicy, this.aclUpdatePolicy, this.sharedLinkPolicy, this.viewerInfoPolicy});
    }

    public String toString() {
        return C2831a.f17736b.serialize((C2831a) this, false);
    }

    public String toStringMultiline() {
        return C2831a.f17736b.serialize((C2831a) this, true);
    }

    public FolderPolicy(AclUpdatePolicy aclUpdatePolicy, SharedLinkPolicy sharedLinkPolicy) {
        this(aclUpdatePolicy, sharedLinkPolicy, null, null, null);
    }
}
