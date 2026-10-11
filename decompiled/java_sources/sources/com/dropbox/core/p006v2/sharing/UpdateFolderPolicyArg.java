package com.dropbox.core.p006v2.sharing;

import androidx.core.app.NotificationCompat;
import com.dropbox.core.p006v2.sharing.AclUpdatePolicy;
import com.dropbox.core.p006v2.sharing.FolderAction;
import com.dropbox.core.p006v2.sharing.LinkSettings;
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
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class UpdateFolderPolicyArg {

    /* renamed from: a */
    public final String f18016a;

    /* renamed from: b */
    public final MemberPolicy f18017b;

    /* renamed from: c */
    public final AclUpdatePolicy f18018c;

    /* renamed from: d */
    public final ViewerInfoPolicy f18019d;

    /* renamed from: e */
    public final SharedLinkPolicy f18020e;

    /* renamed from: f */
    public final LinkSettings f18021f;

    /* renamed from: g */
    public final List<FolderAction> f18022g;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected AclUpdatePolicy aclUpdatePolicy;
        protected List<FolderAction> actions;
        protected LinkSettings linkSettings;
        protected MemberPolicy memberPolicy;
        protected final String sharedFolderId;
        protected SharedLinkPolicy sharedLinkPolicy;
        protected ViewerInfoPolicy viewerInfoPolicy;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
            }
            if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
            }
            this.sharedFolderId = str;
            this.memberPolicy = null;
            this.aclUpdatePolicy = null;
            this.viewerInfoPolicy = null;
            this.sharedLinkPolicy = null;
            this.linkSettings = null;
            this.actions = null;
        }

        public UpdateFolderPolicyArg build() {
            return new UpdateFolderPolicyArg(this.sharedFolderId, this.memberPolicy, this.aclUpdatePolicy, this.viewerInfoPolicy, this.sharedLinkPolicy, this.linkSettings, this.actions);
        }

        public Builder withAclUpdatePolicy(AclUpdatePolicy aclUpdatePolicy) {
            this.aclUpdatePolicy = aclUpdatePolicy;
            return this;
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

    /* renamed from: com.dropbox.core.v2.sharing.UpdateFolderPolicyArg$a */
    /* loaded from: classes4.dex */
    public static class C2975a extends StructSerializer<UpdateFolderPolicyArg> {

        /* renamed from: b */
        public static final C2975a f18023b = new C2975a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UpdateFolderPolicyArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str2 = null;
            MemberPolicy memberPolicy = null;
            AclUpdatePolicy aclUpdatePolicy = null;
            ViewerInfoPolicy viewerInfoPolicy = null;
            SharedLinkPolicy sharedLinkPolicy = null;
            LinkSettings linkSettings = null;
            List list = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("shared_folder_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("member_policy".equals(currentName)) {
                    memberPolicy = (MemberPolicy) StoneSerializers.nullable(MemberPolicy.Serializer.INSTANCE).deserialize(jsonParser);
                } else if ("acl_update_policy".equals(currentName)) {
                    aclUpdatePolicy = (AclUpdatePolicy) StoneSerializers.nullable(AclUpdatePolicy.Serializer.INSTANCE).deserialize(jsonParser);
                } else if ("viewer_info_policy".equals(currentName)) {
                    viewerInfoPolicy = (ViewerInfoPolicy) StoneSerializers.nullable(ViewerInfoPolicy.Serializer.INSTANCE).deserialize(jsonParser);
                } else if ("shared_link_policy".equals(currentName)) {
                    sharedLinkPolicy = (SharedLinkPolicy) StoneSerializers.nullable(SharedLinkPolicy.Serializer.INSTANCE).deserialize(jsonParser);
                } else if ("link_settings".equals(currentName)) {
                    linkSettings = (LinkSettings) StoneSerializers.nullableStruct(LinkSettings.C2865a.f17797b).deserialize(jsonParser);
                } else if (NotificationCompat.WearableExtender.f5050p.equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(FolderAction.C2828b.f17733b)).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"shared_folder_id\" missing.");
            }
            UpdateFolderPolicyArg updateFolderPolicyArg = new UpdateFolderPolicyArg(str2, memberPolicy, aclUpdatePolicy, viewerInfoPolicy, sharedLinkPolicy, linkSettings, list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(updateFolderPolicyArg, updateFolderPolicyArg.m11976i());
            return updateFolderPolicyArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UpdateFolderPolicyArg updateFolderPolicyArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("shared_folder_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) updateFolderPolicyArg.f18016a, jsonGenerator);
            if (updateFolderPolicyArg.f18017b != null) {
                jsonGenerator.writeFieldName("member_policy");
                StoneSerializers.nullable(MemberPolicy.Serializer.INSTANCE).serialize((StoneSerializer) updateFolderPolicyArg.f18017b, jsonGenerator);
            }
            if (updateFolderPolicyArg.f18018c != null) {
                jsonGenerator.writeFieldName("acl_update_policy");
                StoneSerializers.nullable(AclUpdatePolicy.Serializer.INSTANCE).serialize((StoneSerializer) updateFolderPolicyArg.f18018c, jsonGenerator);
            }
            if (updateFolderPolicyArg.f18019d != null) {
                jsonGenerator.writeFieldName("viewer_info_policy");
                StoneSerializers.nullable(ViewerInfoPolicy.Serializer.INSTANCE).serialize((StoneSerializer) updateFolderPolicyArg.f18019d, jsonGenerator);
            }
            if (updateFolderPolicyArg.f18020e != null) {
                jsonGenerator.writeFieldName("shared_link_policy");
                StoneSerializers.nullable(SharedLinkPolicy.Serializer.INSTANCE).serialize((StoneSerializer) updateFolderPolicyArg.f18020e, jsonGenerator);
            }
            if (updateFolderPolicyArg.f18021f != null) {
                jsonGenerator.writeFieldName("link_settings");
                StoneSerializers.nullableStruct(LinkSettings.C2865a.f17797b).serialize((StructSerializer) updateFolderPolicyArg.f18021f, jsonGenerator);
            }
            if (updateFolderPolicyArg.f18022g != null) {
                jsonGenerator.writeFieldName(NotificationCompat.WearableExtender.f5050p);
                StoneSerializers.nullable(StoneSerializers.list(FolderAction.C2828b.f17733b)).serialize((StoneSerializer) updateFolderPolicyArg.f18022g, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public UpdateFolderPolicyArg(String str, MemberPolicy memberPolicy, AclUpdatePolicy aclUpdatePolicy, ViewerInfoPolicy viewerInfoPolicy, SharedLinkPolicy sharedLinkPolicy, LinkSettings linkSettings, List<FolderAction> list) {
        if (str != null) {
            if (Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                this.f18016a = str;
                this.f18017b = memberPolicy;
                this.f18018c = aclUpdatePolicy;
                this.f18019d = viewerInfoPolicy;
                this.f18020e = sharedLinkPolicy;
                this.f18021f = linkSettings;
                if (list != null) {
                    Iterator<FolderAction> it2 = list.iterator();
                    while (it2.hasNext()) {
                        if (it2.next() == null) {
                            throw new IllegalArgumentException("An item in list 'actions' is null");
                        }
                    }
                }
                this.f18022g = list;
                return;
            }
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
        }
        throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
    }

    /* renamed from: h */
    public static Builder m11968h(String str) {
        return new Builder(str);
    }

    /* renamed from: a */
    public AclUpdatePolicy m11969a() {
        return this.f18018c;
    }

    /* renamed from: b */
    public List<FolderAction> m11970b() {
        return this.f18022g;
    }

    /* renamed from: c */
    public LinkSettings m11971c() {
        return this.f18021f;
    }

    /* renamed from: d */
    public MemberPolicy m11972d() {
        return this.f18017b;
    }

    /* renamed from: e */
    public String m11973e() {
        return this.f18016a;
    }

    public boolean equals(Object obj) {
        MemberPolicy memberPolicy;
        MemberPolicy memberPolicy2;
        AclUpdatePolicy aclUpdatePolicy;
        AclUpdatePolicy aclUpdatePolicy2;
        ViewerInfoPolicy viewerInfoPolicy;
        ViewerInfoPolicy viewerInfoPolicy2;
        SharedLinkPolicy sharedLinkPolicy;
        SharedLinkPolicy sharedLinkPolicy2;
        LinkSettings linkSettings;
        LinkSettings linkSettings2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        UpdateFolderPolicyArg updateFolderPolicyArg = (UpdateFolderPolicyArg) obj;
        String str = this.f18016a;
        String str2 = updateFolderPolicyArg.f18016a;
        if ((str == str2 || str.equals(str2)) && (((memberPolicy = this.f18017b) == (memberPolicy2 = updateFolderPolicyArg.f18017b) || (memberPolicy != null && memberPolicy.equals(memberPolicy2))) && (((aclUpdatePolicy = this.f18018c) == (aclUpdatePolicy2 = updateFolderPolicyArg.f18018c) || (aclUpdatePolicy != null && aclUpdatePolicy.equals(aclUpdatePolicy2))) && (((viewerInfoPolicy = this.f18019d) == (viewerInfoPolicy2 = updateFolderPolicyArg.f18019d) || (viewerInfoPolicy != null && viewerInfoPolicy.equals(viewerInfoPolicy2))) && (((sharedLinkPolicy = this.f18020e) == (sharedLinkPolicy2 = updateFolderPolicyArg.f18020e) || (sharedLinkPolicy != null && sharedLinkPolicy.equals(sharedLinkPolicy2))) && ((linkSettings = this.f18021f) == (linkSettings2 = updateFolderPolicyArg.f18021f) || (linkSettings != null && linkSettings.equals(linkSettings2)))))))) {
            List<FolderAction> list = this.f18022g;
            List<FolderAction> list2 = updateFolderPolicyArg.f18022g;
            if (list == list2) {
                return true;
            }
            if (list != null && list.equals(list2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: f */
    public SharedLinkPolicy m11974f() {
        return this.f18020e;
    }

    /* renamed from: g */
    public ViewerInfoPolicy m11975g() {
        return this.f18019d;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18016a, this.f18017b, this.f18018c, this.f18019d, this.f18020e, this.f18021f, this.f18022g});
    }

    /* renamed from: i */
    public String m11976i() {
        return C2975a.f18023b.serialize((C2975a) this, true);
    }

    public String toString() {
        return C2975a.f18023b.serialize((C2975a) this, false);
    }

    public UpdateFolderPolicyArg(String str) {
        this(str, null, null, null, null, null, null);
    }
}
