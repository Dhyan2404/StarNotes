package com.dropbox.core.p006v2.sharing;

import androidx.core.app.NotificationCompat;
import com.dropbox.core.p006v2.sharing.AccessInheritance;
import com.dropbox.core.p006v2.sharing.AclUpdatePolicy;
import com.dropbox.core.p006v2.sharing.FolderAction;
import com.dropbox.core.p006v2.sharing.LinkSettings;
import com.dropbox.core.p006v2.sharing.MemberPolicy;
import com.dropbox.core.p006v2.sharing.ShareFolderArgBase;
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
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class ShareFolderArg extends ShareFolderArgBase {

    /* renamed from: h */
    public final List<FolderAction> f17927h;

    /* renamed from: i */
    public final LinkSettings f17928i;

    /* loaded from: classes4.dex */
    public static class Builder extends ShareFolderArgBase.Builder {
        protected List<FolderAction> actions;
        protected LinkSettings linkSettings;

        public Builder(String str) {
            super(str);
            this.actions = null;
            this.linkSettings = null;
        }

        public Builder withActions(List<FolderAction> list) {
            if (list != null) {
                Iterator<FolderAction> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'actions' is null");
                    }
                }
            }
            this.actions = list;
            return this;
        }

        public Builder withLinkSettings(LinkSettings linkSettings) {
            this.linkSettings = linkSettings;
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.ShareFolderArgBase.Builder
        public ShareFolderArg build() {
            return new ShareFolderArg(this.path, this.aclUpdatePolicy, this.forceAsync, this.memberPolicy, this.sharedLinkPolicy, this.viewerInfoPolicy, this.accessInheritance, this.actions, this.linkSettings);
        }

        @Override // com.dropbox.core.v2.sharing.ShareFolderArgBase.Builder
        public Builder withAccessInheritance(AccessInheritance accessInheritance) {
            super.withAccessInheritance(accessInheritance);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.ShareFolderArgBase.Builder
        public Builder withAclUpdatePolicy(AclUpdatePolicy aclUpdatePolicy) {
            super.withAclUpdatePolicy(aclUpdatePolicy);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.ShareFolderArgBase.Builder
        public Builder withForceAsync(Boolean bool) {
            super.withForceAsync(bool);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.ShareFolderArgBase.Builder
        public Builder withMemberPolicy(MemberPolicy memberPolicy) {
            super.withMemberPolicy(memberPolicy);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.ShareFolderArgBase.Builder
        public Builder withSharedLinkPolicy(SharedLinkPolicy sharedLinkPolicy) {
            super.withSharedLinkPolicy(sharedLinkPolicy);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.ShareFolderArgBase.Builder
        public Builder withViewerInfoPolicy(ViewerInfoPolicy viewerInfoPolicy) {
            super.withViewerInfoPolicy(viewerInfoPolicy);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ShareFolderArg$a */
    /* loaded from: classes4.dex */
    public static class C2928a extends StructSerializer<ShareFolderArg> {

        /* renamed from: b */
        public static final C2928a f17929b = new C2928a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ShareFolderArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            List list = null;
            LinkSettings linkSettings = null;
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
                } else if (NotificationCompat.WearableExtender.f5050p.equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(FolderAction.C2828b.f17733b)).deserialize(jsonParser);
                } else if ("link_settings".equals(currentName)) {
                    linkSettings = (LinkSettings) StoneSerializers.nullableStruct(LinkSettings.C2865a.f17797b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
            }
            ShareFolderArg shareFolderArg = new ShareFolderArg(str2, aclUpdatePolicy, bool.booleanValue(), memberPolicy, sharedLinkPolicy, viewerInfoPolicy, accessInheritance, list, linkSettings);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(shareFolderArg, shareFolderArg.mo11863i());
            return shareFolderArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ShareFolderArg shareFolderArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("path");
            StoneSerializers.string().serialize((StoneSerializer<String>) shareFolderArg.f17933d, jsonGenerator);
            if (shareFolderArg.f17930a != null) {
                jsonGenerator.writeFieldName("acl_update_policy");
                StoneSerializers.nullable(AclUpdatePolicy.Serializer.INSTANCE).serialize((StoneSerializer) shareFolderArg.f17930a, jsonGenerator);
            }
            jsonGenerator.writeFieldName("force_async");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(shareFolderArg.f17931b), jsonGenerator);
            if (shareFolderArg.f17932c != null) {
                jsonGenerator.writeFieldName("member_policy");
                StoneSerializers.nullable(MemberPolicy.Serializer.INSTANCE).serialize((StoneSerializer) shareFolderArg.f17932c, jsonGenerator);
            }
            if (shareFolderArg.f17934e != null) {
                jsonGenerator.writeFieldName("shared_link_policy");
                StoneSerializers.nullable(SharedLinkPolicy.Serializer.INSTANCE).serialize((StoneSerializer) shareFolderArg.f17934e, jsonGenerator);
            }
            if (shareFolderArg.f17935f != null) {
                jsonGenerator.writeFieldName("viewer_info_policy");
                StoneSerializers.nullable(ViewerInfoPolicy.Serializer.INSTANCE).serialize((StoneSerializer) shareFolderArg.f17935f, jsonGenerator);
            }
            jsonGenerator.writeFieldName("access_inheritance");
            AccessInheritance.C2794b.f17652b.serialize(shareFolderArg.f17936g, jsonGenerator);
            if (shareFolderArg.f17927h != null) {
                jsonGenerator.writeFieldName(NotificationCompat.WearableExtender.f5050p);
                StoneSerializers.nullable(StoneSerializers.list(FolderAction.C2828b.f17733b)).serialize((StoneSerializer) shareFolderArg.f17927h, jsonGenerator);
            }
            if (shareFolderArg.f17928i != null) {
                jsonGenerator.writeFieldName("link_settings");
                StoneSerializers.nullableStruct(LinkSettings.C2865a.f17797b).serialize((StructSerializer) shareFolderArg.f17928i, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ShareFolderArg(String str, AclUpdatePolicy aclUpdatePolicy, boolean z, MemberPolicy memberPolicy, SharedLinkPolicy sharedLinkPolicy, ViewerInfoPolicy viewerInfoPolicy, AccessInheritance accessInheritance, List<FolderAction> list, LinkSettings linkSettings) {
        super(str, aclUpdatePolicy, z, memberPolicy, sharedLinkPolicy, viewerInfoPolicy, accessInheritance);
        if (list != null) {
            Iterator<FolderAction> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'actions' is null");
                }
            }
        }
        this.f17927h = list;
        this.f17928i = linkSettings;
    }

    /* renamed from: l */
    public static Builder m11855l(String str) {
        return new Builder(str);
    }

    @Override // com.dropbox.core.p006v2.sharing.ShareFolderArgBase
    /* renamed from: a */
    public AccessInheritance mo11856a() {
        return this.f17936g;
    }

    @Override // com.dropbox.core.p006v2.sharing.ShareFolderArgBase
    /* renamed from: b */
    public AclUpdatePolicy mo11857b() {
        return this.f17930a;
    }

    @Override // com.dropbox.core.p006v2.sharing.ShareFolderArgBase
    /* renamed from: c */
    public boolean mo11858c() {
        return this.f17931b;
    }

    @Override // com.dropbox.core.p006v2.sharing.ShareFolderArgBase
    /* renamed from: d */
    public MemberPolicy mo11859d() {
        return this.f17932c;
    }

    @Override // com.dropbox.core.p006v2.sharing.ShareFolderArgBase
    /* renamed from: e */
    public String mo11860e() {
        return this.f17933d;
    }

    @Override // com.dropbox.core.p006v2.sharing.ShareFolderArgBase
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
        List<FolderAction> list;
        List<FolderAction> list2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ShareFolderArg shareFolderArg = (ShareFolderArg) obj;
        String str = this.f17933d;
        String str2 = shareFolderArg.f17933d;
        if ((str == str2 || str.equals(str2)) && (((aclUpdatePolicy = this.f17930a) == (aclUpdatePolicy2 = shareFolderArg.f17930a) || (aclUpdatePolicy != null && aclUpdatePolicy.equals(aclUpdatePolicy2))) && this.f17931b == shareFolderArg.f17931b && (((memberPolicy = this.f17932c) == (memberPolicy2 = shareFolderArg.f17932c) || (memberPolicy != null && memberPolicy.equals(memberPolicy2))) && (((sharedLinkPolicy = this.f17934e) == (sharedLinkPolicy2 = shareFolderArg.f17934e) || (sharedLinkPolicy != null && sharedLinkPolicy.equals(sharedLinkPolicy2))) && (((viewerInfoPolicy = this.f17935f) == (viewerInfoPolicy2 = shareFolderArg.f17935f) || (viewerInfoPolicy != null && viewerInfoPolicy.equals(viewerInfoPolicy2))) && (((accessInheritance = this.f17936g) == (accessInheritance2 = shareFolderArg.f17936g) || accessInheritance.equals(accessInheritance2)) && ((list = this.f17927h) == (list2 = shareFolderArg.f17927h) || (list != null && list.equals(list2))))))))) {
            LinkSettings linkSettings = this.f17928i;
            LinkSettings linkSettings2 = shareFolderArg.f17928i;
            if (linkSettings == linkSettings2) {
                return true;
            }
            if (linkSettings != null && linkSettings.equals(linkSettings2)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.dropbox.core.p006v2.sharing.ShareFolderArgBase
    /* renamed from: f */
    public SharedLinkPolicy mo11861f() {
        return this.f17934e;
    }

    @Override // com.dropbox.core.p006v2.sharing.ShareFolderArgBase
    /* renamed from: g */
    public ViewerInfoPolicy mo11862g() {
        return this.f17935f;
    }

    @Override // com.dropbox.core.p006v2.sharing.ShareFolderArgBase
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17927h, this.f17928i});
    }

    @Override // com.dropbox.core.p006v2.sharing.ShareFolderArgBase
    /* renamed from: i */
    public String mo11863i() {
        return C2928a.f17929b.serialize((C2928a) this, true);
    }

    /* renamed from: j */
    public List<FolderAction> m11864j() {
        return this.f17927h;
    }

    /* renamed from: k */
    public LinkSettings m11865k() {
        return this.f17928i;
    }

    @Override // com.dropbox.core.p006v2.sharing.ShareFolderArgBase
    public String toString() {
        return C2928a.f17929b.serialize((C2928a) this, false);
    }

    public ShareFolderArg(String str) {
        this(str, null, false, null, null, null, AccessInheritance.INHERIT, null, null);
    }
}
