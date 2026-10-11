package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.AccessLevel;
import com.dropbox.core.p006v2.sharing.AudienceRestrictingSharedFolder;
import com.dropbox.core.p006v2.sharing.LinkAudience;
import com.dropbox.core.p006v2.sharing.LinkPermission;
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
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class SharedContentLinkMetadataBase {
    protected final AccessLevel accessLevel;
    protected final List<LinkAudience> audienceOptions;
    protected final AudienceRestrictingSharedFolder audienceRestrictingSharedFolder;
    protected final LinkAudience currentAudience;
    protected final Date expiry;
    protected final List<LinkPermission> linkPermissions;
    protected final boolean passwordProtected;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected AccessLevel accessLevel;
        protected final List<LinkAudience> audienceOptions;
        protected AudienceRestrictingSharedFolder audienceRestrictingSharedFolder;
        protected final LinkAudience currentAudience;
        protected Date expiry;
        protected final List<LinkPermission> linkPermissions;
        protected final boolean passwordProtected;

        public Builder(List<LinkAudience> list, LinkAudience linkAudience, List<LinkPermission> list2, boolean z) {
            if (list == null) {
                throw new IllegalArgumentException("Required value for 'audienceOptions' is null");
            }
            Iterator<LinkAudience> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'audienceOptions' is null");
                }
            }
            this.audienceOptions = list;
            if (linkAudience == null) {
                throw new IllegalArgumentException("Required value for 'currentAudience' is null");
            }
            this.currentAudience = linkAudience;
            if (list2 == null) {
                throw new IllegalArgumentException("Required value for 'linkPermissions' is null");
            }
            Iterator<LinkPermission> it3 = list2.iterator();
            while (it3.hasNext()) {
                if (it3.next() == null) {
                    throw new IllegalArgumentException("An item in list 'linkPermissions' is null");
                }
            }
            this.linkPermissions = list2;
            this.passwordProtected = z;
            this.accessLevel = null;
            this.audienceRestrictingSharedFolder = null;
            this.expiry = null;
        }

        public SharedContentLinkMetadataBase build() {
            return new SharedContentLinkMetadataBase(this.audienceOptions, this.currentAudience, this.linkPermissions, this.passwordProtected, this.accessLevel, this.audienceRestrictingSharedFolder, this.expiry);
        }

        public Builder withAccessLevel(AccessLevel accessLevel) {
            this.accessLevel = accessLevel;
            return this;
        }

        public Builder withAudienceRestrictingSharedFolder(AudienceRestrictingSharedFolder audienceRestrictingSharedFolder) {
            this.audienceRestrictingSharedFolder = audienceRestrictingSharedFolder;
            return this;
        }

        public Builder withExpiry(Date date) {
            this.expiry = LangUtil.truncateMillis(date);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.SharedContentLinkMetadataBase$a */
    /* loaded from: classes4.dex */
    public static class C2939a extends StructSerializer<SharedContentLinkMetadataBase> {

        /* renamed from: b */
        public static final C2939a f17959b = new C2939a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedContentLinkMetadataBase deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            List list = null;
            LinkAudience linkAudience = null;
            List list2 = null;
            AccessLevel accessLevel = null;
            AudienceRestrictingSharedFolder audienceRestrictingSharedFolder = null;
            Date date = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("audience_options".equals(currentName)) {
                    list = (List) StoneSerializers.list(LinkAudience.Serializer.INSTANCE).deserialize(jsonParser);
                } else if ("current_audience".equals(currentName)) {
                    linkAudience = LinkAudience.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("link_permissions".equals(currentName)) {
                    list2 = (List) StoneSerializers.list(LinkPermission.C2863a.f17795b).deserialize(jsonParser);
                } else if ("password_protected".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("access_level".equals(currentName)) {
                    accessLevel = (AccessLevel) StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).deserialize(jsonParser);
                } else if ("audience_restricting_shared_folder".equals(currentName)) {
                    audienceRestrictingSharedFolder = (AudienceRestrictingSharedFolder) StoneSerializers.nullableStruct(AudienceRestrictingSharedFolder.C2808a.f17692b).deserialize(jsonParser);
                } else if ("expiry".equals(currentName)) {
                    date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"audience_options\" missing.");
            }
            if (linkAudience == null) {
                throw new JsonParseException(jsonParser, "Required field \"current_audience\" missing.");
            }
            if (list2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"link_permissions\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"password_protected\" missing.");
            }
            SharedContentLinkMetadataBase sharedContentLinkMetadataBase = new SharedContentLinkMetadataBase(list, linkAudience, list2, bool.booleanValue(), accessLevel, audienceRestrictingSharedFolder, date);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedContentLinkMetadataBase, sharedContentLinkMetadataBase.toStringMultiline());
            return sharedContentLinkMetadataBase;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedContentLinkMetadataBase sharedContentLinkMetadataBase, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("audience_options");
            LinkAudience.Serializer serializer = LinkAudience.Serializer.INSTANCE;
            StoneSerializers.list(serializer).serialize((StoneSerializer) sharedContentLinkMetadataBase.audienceOptions, jsonGenerator);
            jsonGenerator.writeFieldName("current_audience");
            serializer.serialize(sharedContentLinkMetadataBase.currentAudience, jsonGenerator);
            jsonGenerator.writeFieldName("link_permissions");
            StoneSerializers.list(LinkPermission.C2863a.f17795b).serialize((StoneSerializer) sharedContentLinkMetadataBase.linkPermissions, jsonGenerator);
            jsonGenerator.writeFieldName("password_protected");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(sharedContentLinkMetadataBase.passwordProtected), jsonGenerator);
            if (sharedContentLinkMetadataBase.accessLevel != null) {
                jsonGenerator.writeFieldName("access_level");
                StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).serialize((StoneSerializer) sharedContentLinkMetadataBase.accessLevel, jsonGenerator);
            }
            if (sharedContentLinkMetadataBase.audienceRestrictingSharedFolder != null) {
                jsonGenerator.writeFieldName("audience_restricting_shared_folder");
                StoneSerializers.nullableStruct(AudienceRestrictingSharedFolder.C2808a.f17692b).serialize((StructSerializer) sharedContentLinkMetadataBase.audienceRestrictingSharedFolder, jsonGenerator);
            }
            if (sharedContentLinkMetadataBase.expiry != null) {
                jsonGenerator.writeFieldName("expiry");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) sharedContentLinkMetadataBase.expiry, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedContentLinkMetadataBase(List<LinkAudience> list, LinkAudience linkAudience, List<LinkPermission> list2, boolean z, AccessLevel accessLevel, AudienceRestrictingSharedFolder audienceRestrictingSharedFolder, Date date) {
        this.accessLevel = accessLevel;
        if (list != null) {
            Iterator<LinkAudience> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'audienceOptions' is null");
                }
            }
            this.audienceOptions = list;
            this.audienceRestrictingSharedFolder = audienceRestrictingSharedFolder;
            if (linkAudience != null) {
                this.currentAudience = linkAudience;
                this.expiry = LangUtil.truncateMillis(date);
                if (list2 != null) {
                    Iterator<LinkPermission> it3 = list2.iterator();
                    while (it3.hasNext()) {
                        if (it3.next() == null) {
                            throw new IllegalArgumentException("An item in list 'linkPermissions' is null");
                        }
                    }
                    this.linkPermissions = list2;
                    this.passwordProtected = z;
                    return;
                }
                throw new IllegalArgumentException("Required value for 'linkPermissions' is null");
            }
            throw new IllegalArgumentException("Required value for 'currentAudience' is null");
        }
        throw new IllegalArgumentException("Required value for 'audienceOptions' is null");
    }

    public static Builder newBuilder(List<LinkAudience> list, LinkAudience linkAudience, List<LinkPermission> list2, boolean z) {
        return new Builder(list, linkAudience, list2, z);
    }

    public boolean equals(Object obj) {
        LinkAudience linkAudience;
        LinkAudience linkAudience2;
        List<LinkPermission> list;
        List<LinkPermission> list2;
        AccessLevel accessLevel;
        AccessLevel accessLevel2;
        AudienceRestrictingSharedFolder audienceRestrictingSharedFolder;
        AudienceRestrictingSharedFolder audienceRestrictingSharedFolder2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SharedContentLinkMetadataBase sharedContentLinkMetadataBase = (SharedContentLinkMetadataBase) obj;
        List<LinkAudience> list3 = this.audienceOptions;
        List<LinkAudience> list4 = sharedContentLinkMetadataBase.audienceOptions;
        if ((list3 == list4 || list3.equals(list4)) && (((linkAudience = this.currentAudience) == (linkAudience2 = sharedContentLinkMetadataBase.currentAudience) || linkAudience.equals(linkAudience2)) && (((list = this.linkPermissions) == (list2 = sharedContentLinkMetadataBase.linkPermissions) || list.equals(list2)) && this.passwordProtected == sharedContentLinkMetadataBase.passwordProtected && (((accessLevel = this.accessLevel) == (accessLevel2 = sharedContentLinkMetadataBase.accessLevel) || (accessLevel != null && accessLevel.equals(accessLevel2))) && ((audienceRestrictingSharedFolder = this.audienceRestrictingSharedFolder) == (audienceRestrictingSharedFolder2 = sharedContentLinkMetadataBase.audienceRestrictingSharedFolder) || (audienceRestrictingSharedFolder != null && audienceRestrictingSharedFolder.equals(audienceRestrictingSharedFolder2))))))) {
            Date date = this.expiry;
            Date date2 = sharedContentLinkMetadataBase.expiry;
            if (date == date2) {
                return true;
            }
            if (date != null && date.equals(date2)) {
                return true;
            }
        }
        return false;
    }

    public AccessLevel getAccessLevel() {
        return this.accessLevel;
    }

    public List<LinkAudience> getAudienceOptions() {
        return this.audienceOptions;
    }

    public AudienceRestrictingSharedFolder getAudienceRestrictingSharedFolder() {
        return this.audienceRestrictingSharedFolder;
    }

    public LinkAudience getCurrentAudience() {
        return this.currentAudience;
    }

    public Date getExpiry() {
        return this.expiry;
    }

    public List<LinkPermission> getLinkPermissions() {
        return this.linkPermissions;
    }

    public boolean getPasswordProtected() {
        return this.passwordProtected;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.accessLevel, this.audienceOptions, this.audienceRestrictingSharedFolder, this.currentAudience, this.expiry, this.linkPermissions, Boolean.valueOf(this.passwordProtected)});
    }

    public String toString() {
        return C2939a.f17959b.serialize((C2939a) this, false);
    }

    public String toStringMultiline() {
        return C2939a.f17959b.serialize((C2939a) this, true);
    }

    public SharedContentLinkMetadataBase(List<LinkAudience> list, LinkAudience linkAudience, List<LinkPermission> list2, boolean z) {
        this(list, linkAudience, list2, z, null, null, null);
    }
}
