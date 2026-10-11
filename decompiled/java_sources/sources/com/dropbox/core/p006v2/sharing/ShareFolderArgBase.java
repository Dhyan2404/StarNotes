package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.AccessInheritance;
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
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class ShareFolderArgBase {

    /* renamed from: a */
    public final AclUpdatePolicy f17930a;

    /* renamed from: b */
    public final boolean f17931b;

    /* renamed from: c */
    public final MemberPolicy f17932c;

    /* renamed from: d */
    public final String f17933d;

    /* renamed from: e */
    public final SharedLinkPolicy f17934e;

    /* renamed from: f */
    public final ViewerInfoPolicy f17935f;

    /* renamed from: g */
    public final AccessInheritance f17936g;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected AccessInheritance accessInheritance;
        protected AclUpdatePolicy aclUpdatePolicy;
        protected boolean forceAsync;
        protected MemberPolicy memberPolicy;
        protected final String path;
        protected SharedLinkPolicy sharedLinkPolicy;
        protected ViewerInfoPolicy viewerInfoPolicy;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'path' is null");
            }
            if (!Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)", str)) {
                throw new IllegalArgumentException("String 'path' does not match pattern");
            }
            this.path = str;
            this.aclUpdatePolicy = null;
            this.forceAsync = false;
            this.memberPolicy = null;
            this.sharedLinkPolicy = null;
            this.viewerInfoPolicy = null;
            this.accessInheritance = AccessInheritance.INHERIT;
        }

        public ShareFolderArgBase build() {
            return new ShareFolderArgBase(this.path, this.aclUpdatePolicy, this.forceAsync, this.memberPolicy, this.sharedLinkPolicy, this.viewerInfoPolicy, this.accessInheritance);
        }

        public Builder withAccessInheritance(AccessInheritance accessInheritance) {
            if (accessInheritance != null) {
                this.accessInheritance = accessInheritance;
            } else {
                this.accessInheritance = AccessInheritance.INHERIT;
            }
            return this;
        }

        public Builder withAclUpdatePolicy(AclUpdatePolicy aclUpdatePolicy) {
            this.aclUpdatePolicy = aclUpdatePolicy;
            return this;
        }

        public Builder withForceAsync(Boolean bool) {
            if (bool != null) {
                this.forceAsync = bool.booleanValue();
            } else {
                this.forceAsync = false;
            }
            return this;
        }

        public Builder withMemberPolicy(MemberPolicy memberPolicy) {
            this.memberPolicy = memberPolicy;
            return this;
        }

        public Builder withSharedLinkPolicy(SharedLinkPolicy sharedLinkPolicy) {
            this.sharedLinkPolicy = sharedLinkPolicy;
            return this;
        }

        public Builder withViewerInfoPolicy(ViewerInfoPolicy viewerInfoPolicy) {
            this.viewerInfoPolicy = viewerInfoPolicy;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ShareFolderArgBase$a */
    /* loaded from: classes4.dex */
    public static class C2929a extends StructSerializer<ShareFolderArgBase> {

        /* renamed from: b */
        public static final C2929a f17937b = new C2929a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ShareFolderArgBase deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Boolean bool = Boolean.FALSE;
            String str2 = null;
            AclUpdatePolicy aclUpdatePolicy = null;
            MemberPolicy memberPolicy = null;
            SharedLinkPolicy sharedLinkPolicy = null;
            ViewerInfoPolicy viewerInfoPolicy = null;
            AccessInheritance accessInheritance = AccessInheritance.INHERIT;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("path".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("acl_update_policy".equals(currentName)) {
                    aclUpdatePolicy = (AclUpdatePolicy) StoneSerializers.nullable(AclUpdatePolicy.Serializer.INSTANCE).deserialize(jsonParser);
                } else if ("force_async".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("member_policy".equals(currentName)) {
                    memberPolicy = (MemberPolicy) StoneSerializers.nullable(MemberPolicy.Serializer.INSTANCE).deserialize(jsonParser);
                } else if ("shared_link_policy".equals(currentName)) {
                    sharedLinkPolicy = (SharedLinkPolicy) StoneSerializers.nullable(SharedLinkPolicy.Serializer.INSTANCE).deserialize(jsonParser);
                } else if ("viewer_info_policy".equals(currentName)) {
                    viewerInfoPolicy = (ViewerInfoPolicy) StoneSerializers.nullable(ViewerInfoPolicy.Serializer.INSTANCE).deserialize(jsonParser);
                } else if ("access_inheritance".equals(currentName)) {
                    accessInheritance = AccessInheritance.C2794b.f17652b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
            }
            ShareFolderArgBase shareFolderArgBase = new ShareFolderArgBase(str2, aclUpdatePolicy, bool.booleanValue(), memberPolicy, sharedLinkPolicy, viewerInfoPolicy, accessInheritance);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(shareFolderArgBase, shareFolderArgBase.mo11863i());
            return shareFolderArgBase;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ShareFolderArgBase shareFolderArgBase, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("path");
            StoneSerializers.string().serialize((StoneSerializer<String>) shareFolderArgBase.f17933d, jsonGenerator);
            if (shareFolderArgBase.f17930a != null) {
                jsonGenerator.writeFieldName("acl_update_policy");
                StoneSerializers.nullable(AclUpdatePolicy.Serializer.INSTANCE).serialize((StoneSerializer) shareFolderArgBase.f17930a, jsonGenerator);
            }
            jsonGenerator.writeFieldName("force_async");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(shareFolderArgBase.f17931b), jsonGenerator);
            if (shareFolderArgBase.f17932c != null) {
                jsonGenerator.writeFieldName("member_policy");
                StoneSerializers.nullable(MemberPolicy.Serializer.INSTANCE).serialize((StoneSerializer) shareFolderArgBase.f17932c, jsonGenerator);
            }
            if (shareFolderArgBase.f17934e != null) {
                jsonGenerator.writeFieldName("shared_link_policy");
                StoneSerializers.nullable(SharedLinkPolicy.Serializer.INSTANCE).serialize((StoneSerializer) shareFolderArgBase.f17934e, jsonGenerator);
            }
            if (shareFolderArgBase.f17935f != null) {
                jsonGenerator.writeFieldName("viewer_info_policy");
                StoneSerializers.nullable(ViewerInfoPolicy.Serializer.INSTANCE).serialize((StoneSerializer) shareFolderArgBase.f17935f, jsonGenerator);
            }
            jsonGenerator.writeFieldName("access_inheritance");
            AccessInheritance.C2794b.f17652b.serialize(shareFolderArgBase.f17936g, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ShareFolderArgBase(String str, AclUpdatePolicy aclUpdatePolicy, boolean z, MemberPolicy memberPolicy, SharedLinkPolicy sharedLinkPolicy, ViewerInfoPolicy viewerInfoPolicy, AccessInheritance accessInheritance) {
        this.f17930a = aclUpdatePolicy;
        this.f17931b = z;
        this.f17932c = memberPolicy;
        if (str != null) {
            if (Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)", str)) {
                this.f17933d = str;
                this.f17934e = sharedLinkPolicy;
                this.f17935f = viewerInfoPolicy;
                if (accessInheritance != null) {
                    this.f17936g = accessInheritance;
                    return;
                }
                throw new IllegalArgumentException("Required value for 'accessInheritance' is null");
            }
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        throw new IllegalArgumentException("Required value for 'path' is null");
    }

    /* renamed from: h */
    public static Builder m11868h(String str) {
        return new Builder(str);
    }

    /* renamed from: a */
    public AccessInheritance mo11856a() {
        return this.f17936g;
    }

    /* renamed from: b */
    public AclUpdatePolicy mo11857b() {
        return this.f17930a;
    }

    /* renamed from: c */
    public boolean mo11858c() {
        return this.f17931b;
    }

    /* renamed from: d */
    public MemberPolicy mo11859d() {
        return this.f17932c;
    }

    /* renamed from: e */
    public String mo11860e() {
        return this.f17933d;
    }

    public boolean equals(Object obj) {
        AclUpdatePolicy aclUpdatePolicy;
        AclUpdatePolicy aclUpdatePolicy2;
        MemberPolicy memberPolicy;
        MemberPolicy memberPolicy2;
        SharedLinkPolicy sharedLinkPolicy;
        SharedLinkPolicy sharedLinkPolicy2;
        ViewerInfoPolicy viewerInfoPolicy;
        ViewerInfoPolicy viewerInfoPolicy2;
        AccessInheritance accessInheritance;
        AccessInheritance accessInheritance2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ShareFolderArgBase shareFolderArgBase = (ShareFolderArgBase) obj;
        String str = this.f17933d;
        String str2 = shareFolderArgBase.f17933d;
        return (str == str2 || str.equals(str2)) && ((aclUpdatePolicy = this.f17930a) == (aclUpdatePolicy2 = shareFolderArgBase.f17930a) || (aclUpdatePolicy != null && aclUpdatePolicy.equals(aclUpdatePolicy2))) && this.f17931b == shareFolderArgBase.f17931b && (((memberPolicy = this.f17932c) == (memberPolicy2 = shareFolderArgBase.f17932c) || (memberPolicy != null && memberPolicy.equals(memberPolicy2))) && (((sharedLinkPolicy = this.f17934e) == (sharedLinkPolicy2 = shareFolderArgBase.f17934e) || (sharedLinkPolicy != null && sharedLinkPolicy.equals(sharedLinkPolicy2))) && (((viewerInfoPolicy = this.f17935f) == (viewerInfoPolicy2 = shareFolderArgBase.f17935f) || (viewerInfoPolicy != null && viewerInfoPolicy.equals(viewerInfoPolicy2))) && ((accessInheritance = this.f17936g) == (accessInheritance2 = shareFolderArgBase.f17936g) || accessInheritance.equals(accessInheritance2)))));
    }

    /* renamed from: f */
    public SharedLinkPolicy mo11861f() {
        return this.f17934e;
    }

    /* renamed from: g */
    public ViewerInfoPolicy mo11862g() {
        return this.f17935f;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17930a, Boolean.valueOf(this.f17931b), this.f17932c, this.f17933d, this.f17934e, this.f17935f, this.f17936g});
    }

    /* renamed from: i */
    public String mo11863i() {
        return C2929a.f17937b.serialize((C2929a) this, true);
    }

    public String toString() {
        return C2929a.f17937b.serialize((C2929a) this, false);
    }

    public ShareFolderArgBase(String str) {
        this(str, null, false, null, null, null, AccessInheritance.INHERIT);
    }
}
