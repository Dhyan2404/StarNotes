package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.AccessLevel;
import com.dropbox.core.p006v2.sharing.AudienceRestrictingSharedFolder;
import com.dropbox.core.p006v2.sharing.LinkAudience;
import com.dropbox.core.p006v2.sharing.LinkPermission;
import com.dropbox.core.p006v2.sharing.SharedContentLinkMetadataBase;
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
import java.util.Date;
import java.util.List;

/* loaded from: classes4.dex */
public class ExpectedSharedContentLinkMetadata extends SharedContentLinkMetadataBase {

    /* loaded from: classes4.dex */
    public static class Builder extends SharedContentLinkMetadataBase.Builder {
        public Builder(List<LinkAudience> list, LinkAudience linkAudience, List<LinkPermission> list2, boolean z) {
            super(list, linkAudience, list2, z);
        }

        @Override // com.dropbox.core.v2.sharing.SharedContentLinkMetadataBase.Builder
        public ExpectedSharedContentLinkMetadata build() {
            return new ExpectedSharedContentLinkMetadata(this.audienceOptions, this.currentAudience, this.linkPermissions, this.passwordProtected, this.accessLevel, this.audienceRestrictingSharedFolder, this.expiry);
        }

        @Override // com.dropbox.core.v2.sharing.SharedContentLinkMetadataBase.Builder
        public Builder withAccessLevel(AccessLevel accessLevel) {
            super.withAccessLevel(accessLevel);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.SharedContentLinkMetadataBase.Builder
        public Builder withAudienceRestrictingSharedFolder(AudienceRestrictingSharedFolder audienceRestrictingSharedFolder) {
            super.withAudienceRestrictingSharedFolder(audienceRestrictingSharedFolder);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.SharedContentLinkMetadataBase.Builder
        public Builder withExpiry(Date date) {
            super.withExpiry(date);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ExpectedSharedContentLinkMetadata$a */
    /* loaded from: classes4.dex */
    public static class C2815a extends StructSerializer<ExpectedSharedContentLinkMetadata> {

        /* renamed from: b */
        public static final C2815a f17711b = new C2815a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ExpectedSharedContentLinkMetadata deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            ExpectedSharedContentLinkMetadata expectedSharedContentLinkMetadata = new ExpectedSharedContentLinkMetadata(list, linkAudience, list2, bool.booleanValue(), accessLevel, audienceRestrictingSharedFolder, date);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(expectedSharedContentLinkMetadata, expectedSharedContentLinkMetadata.toStringMultiline());
            return expectedSharedContentLinkMetadata;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ExpectedSharedContentLinkMetadata expectedSharedContentLinkMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("audience_options");
            LinkAudience.Serializer serializer = LinkAudience.Serializer.INSTANCE;
            StoneSerializers.list(serializer).serialize((StoneSerializer) expectedSharedContentLinkMetadata.audienceOptions, jsonGenerator);
            jsonGenerator.writeFieldName("current_audience");
            serializer.serialize(expectedSharedContentLinkMetadata.currentAudience, jsonGenerator);
            jsonGenerator.writeFieldName("link_permissions");
            StoneSerializers.list(LinkPermission.C2863a.f17795b).serialize((StoneSerializer) expectedSharedContentLinkMetadata.linkPermissions, jsonGenerator);
            jsonGenerator.writeFieldName("password_protected");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(expectedSharedContentLinkMetadata.passwordProtected), jsonGenerator);
            if (expectedSharedContentLinkMetadata.accessLevel != null) {
                jsonGenerator.writeFieldName("access_level");
                StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).serialize((StoneSerializer) expectedSharedContentLinkMetadata.accessLevel, jsonGenerator);
            }
            if (expectedSharedContentLinkMetadata.audienceRestrictingSharedFolder != null) {
                jsonGenerator.writeFieldName("audience_restricting_shared_folder");
                StoneSerializers.nullableStruct(AudienceRestrictingSharedFolder.C2808a.f17692b).serialize((StructSerializer) expectedSharedContentLinkMetadata.audienceRestrictingSharedFolder, jsonGenerator);
            }
            if (expectedSharedContentLinkMetadata.expiry != null) {
                jsonGenerator.writeFieldName("expiry");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) expectedSharedContentLinkMetadata.expiry, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ExpectedSharedContentLinkMetadata(List<LinkAudience> list, LinkAudience linkAudience, List<LinkPermission> list2, boolean z, AccessLevel accessLevel, AudienceRestrictingSharedFolder audienceRestrictingSharedFolder, Date date) {
        super(list, linkAudience, list2, z, accessLevel, audienceRestrictingSharedFolder, date);
    }

    public static Builder newBuilder(List<LinkAudience> list, LinkAudience linkAudience, List<LinkPermission> list2, boolean z) {
        return new Builder(list, linkAudience, list2, z);
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedContentLinkMetadataBase
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
        ExpectedSharedContentLinkMetadata expectedSharedContentLinkMetadata = (ExpectedSharedContentLinkMetadata) obj;
        List<LinkAudience> list3 = this.audienceOptions;
        List<LinkAudience> list4 = expectedSharedContentLinkMetadata.audienceOptions;
        if ((list3 == list4 || list3.equals(list4)) && (((linkAudience = this.currentAudience) == (linkAudience2 = expectedSharedContentLinkMetadata.currentAudience) || linkAudience.equals(linkAudience2)) && (((list = this.linkPermissions) == (list2 = expectedSharedContentLinkMetadata.linkPermissions) || list.equals(list2)) && this.passwordProtected == expectedSharedContentLinkMetadata.passwordProtected && (((accessLevel = this.accessLevel) == (accessLevel2 = expectedSharedContentLinkMetadata.accessLevel) || (accessLevel != null && accessLevel.equals(accessLevel2))) && ((audienceRestrictingSharedFolder = this.audienceRestrictingSharedFolder) == (audienceRestrictingSharedFolder2 = expectedSharedContentLinkMetadata.audienceRestrictingSharedFolder) || (audienceRestrictingSharedFolder != null && audienceRestrictingSharedFolder.equals(audienceRestrictingSharedFolder2))))))) {
            Date date = this.expiry;
            Date date2 = expectedSharedContentLinkMetadata.expiry;
            if (date == date2) {
                return true;
            }
            if (date != null && date.equals(date2)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedContentLinkMetadataBase
    public AccessLevel getAccessLevel() {
        return this.accessLevel;
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedContentLinkMetadataBase
    public List<LinkAudience> getAudienceOptions() {
        return this.audienceOptions;
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedContentLinkMetadataBase
    public AudienceRestrictingSharedFolder getAudienceRestrictingSharedFolder() {
        return this.audienceRestrictingSharedFolder;
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedContentLinkMetadataBase
    public LinkAudience getCurrentAudience() {
        return this.currentAudience;
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedContentLinkMetadataBase
    public Date getExpiry() {
        return this.expiry;
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedContentLinkMetadataBase
    public List<LinkPermission> getLinkPermissions() {
        return this.linkPermissions;
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedContentLinkMetadataBase
    public boolean getPasswordProtected() {
        return this.passwordProtected;
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedContentLinkMetadataBase
    public int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedContentLinkMetadataBase
    public String toString() {
        return C2815a.f17711b.serialize((C2815a) this, false);
    }

    @Override // com.dropbox.core.p006v2.sharing.SharedContentLinkMetadataBase
    public String toStringMultiline() {
        return C2815a.f17711b.serialize((C2815a) this, true);
    }

    public ExpectedSharedContentLinkMetadata(List<LinkAudience> list, LinkAudience linkAudience, List<LinkPermission> list2, boolean z) {
        this(list, linkAudience, list2, z, null, null, null);
    }
}
