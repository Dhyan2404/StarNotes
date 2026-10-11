package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.fileproperties.PropertyGroup;
import com.dropbox.core.p006v2.files.FolderSharingInfo;
import com.dropbox.core.p006v2.files.Metadata;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.onyx.android.sdk.data.common.cloud.Constant;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class FolderMetadata extends Metadata {

    /* renamed from: id */
    protected final String f17156id;
    protected final List<PropertyGroup> propertyGroups;
    protected final String sharedFolderId;
    protected final FolderSharingInfo sharingInfo;

    /* loaded from: classes4.dex */
    public static class Builder extends Metadata.Builder {

        /* renamed from: id */
        protected final String f17157id;
        protected List<PropertyGroup> propertyGroups;
        protected String sharedFolderId;
        protected FolderSharingInfo sharingInfo;

        public Builder(String str, String str2) {
            super(str);
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'id' is null");
            }
            if (str2.length() < 1) {
                throw new IllegalArgumentException("String 'id' is shorter than 1");
            }
            this.f17157id = str2;
            this.sharedFolderId = null;
            this.sharingInfo = null;
            this.propertyGroups = null;
        }

        public Builder withPropertyGroups(List<PropertyGroup> list) {
            if (list != null) {
                Iterator<PropertyGroup> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'propertyGroups' is null");
                    }
                }
            }
            this.propertyGroups = list;
            return this;
        }

        public Builder withSharedFolderId(String str) {
            if (str != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
            }
            this.sharedFolderId = str;
            return this;
        }

        public Builder withSharingInfo(FolderSharingInfo folderSharingInfo) {
            this.sharingInfo = folderSharingInfo;
            return this;
        }

        @Override // com.dropbox.core.v2.files.Metadata.Builder
        public FolderMetadata build() {
            return new FolderMetadata(this.name, this.f17157id, this.pathLower, this.pathDisplay, this.parentSharedFolderId, this.sharedFolderId, this.sharingInfo, this.propertyGroups);
        }

        @Override // com.dropbox.core.v2.files.Metadata.Builder
        public Builder withParentSharedFolderId(String str) {
            super.withParentSharedFolderId(str);
            return this;
        }

        @Override // com.dropbox.core.v2.files.Metadata.Builder
        public Builder withPathDisplay(String str) {
            super.withPathDisplay(str);
            return this;
        }

        @Override // com.dropbox.core.v2.files.Metadata.Builder
        public Builder withPathLower(String str) {
            super.withPathLower(str);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.files.FolderMetadata$a */
    /* loaded from: classes4.dex */
    public static class C2548a extends StructSerializer<FolderMetadata> {

        /* renamed from: b */
        public static final C2548a f17158b = new C2548a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
        
            if (com.onyx.android.sdk.data.common.cloud.Constant.FOLDER.equals(r0) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.files.FolderMetadata deserialize(com.fasterxml.jackson.core.JsonParser r11, boolean r12) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 303
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.files.FolderMetadata.C2548a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.files.FolderMetadata");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FolderMetadata folderMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag(Constant.FOLDER, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) folderMetadata.name, jsonGenerator);
            jsonGenerator.writeFieldName("id");
            StoneSerializers.string().serialize((StoneSerializer<String>) folderMetadata.f17156id, jsonGenerator);
            if (folderMetadata.pathLower != null) {
                jsonGenerator.writeFieldName("path_lower");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) folderMetadata.pathLower, jsonGenerator);
            }
            if (folderMetadata.pathDisplay != null) {
                jsonGenerator.writeFieldName("path_display");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) folderMetadata.pathDisplay, jsonGenerator);
            }
            if (folderMetadata.parentSharedFolderId != null) {
                jsonGenerator.writeFieldName("parent_shared_folder_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) folderMetadata.parentSharedFolderId, jsonGenerator);
            }
            if (folderMetadata.sharedFolderId != null) {
                jsonGenerator.writeFieldName("shared_folder_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) folderMetadata.sharedFolderId, jsonGenerator);
            }
            if (folderMetadata.sharingInfo != null) {
                jsonGenerator.writeFieldName("sharing_info");
                StoneSerializers.nullableStruct(FolderSharingInfo.C2549a.f17159b).serialize((StructSerializer) folderMetadata.sharingInfo, jsonGenerator);
            }
            if (folderMetadata.propertyGroups != null) {
                jsonGenerator.writeFieldName("property_groups");
                StoneSerializers.nullable(StoneSerializers.list(PropertyGroup.Serializer.INSTANCE)).serialize((StoneSerializer) folderMetadata.propertyGroups, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FolderMetadata(String str, String str2, String str3, String str4, String str5, String str6, FolderSharingInfo folderSharingInfo, List<PropertyGroup> list) {
        super(str, str3, str4, str5);
        if (str2 != null) {
            if (str2.length() >= 1) {
                this.f17156id = str2;
                if (str6 != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str6)) {
                    throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
                }
                this.sharedFolderId = str6;
                this.sharingInfo = folderSharingInfo;
                if (list != null) {
                    Iterator<PropertyGroup> it2 = list.iterator();
                    while (it2.hasNext()) {
                        if (it2.next() == null) {
                            throw new IllegalArgumentException("An item in list 'propertyGroups' is null");
                        }
                    }
                }
                this.propertyGroups = list;
                return;
            }
            throw new IllegalArgumentException("String 'id' is shorter than 1");
        }
        throw new IllegalArgumentException("Required value for 'id' is null");
    }

    public static Builder newBuilder(String str, String str2) {
        return new Builder(str, str2);
    }

    @Override // com.dropbox.core.p006v2.files.Metadata
    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        FolderSharingInfo folderSharingInfo;
        FolderSharingInfo folderSharingInfo2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FolderMetadata folderMetadata = (FolderMetadata) obj;
        String str11 = this.name;
        String str12 = folderMetadata.name;
        if ((str11 == str12 || str11.equals(str12)) && (((str = this.f17156id) == (str2 = folderMetadata.f17156id) || str.equals(str2)) && (((str3 = this.pathLower) == (str4 = folderMetadata.pathLower) || (str3 != null && str3.equals(str4))) && (((str5 = this.pathDisplay) == (str6 = folderMetadata.pathDisplay) || (str5 != null && str5.equals(str6))) && (((str7 = this.parentSharedFolderId) == (str8 = folderMetadata.parentSharedFolderId) || (str7 != null && str7.equals(str8))) && (((str9 = this.sharedFolderId) == (str10 = folderMetadata.sharedFolderId) || (str9 != null && str9.equals(str10))) && ((folderSharingInfo = this.sharingInfo) == (folderSharingInfo2 = folderMetadata.sharingInfo) || (folderSharingInfo != null && folderSharingInfo.equals(folderSharingInfo2))))))))) {
            List<PropertyGroup> list = this.propertyGroups;
            List<PropertyGroup> list2 = folderMetadata.propertyGroups;
            if (list == list2) {
                return true;
            }
            if (list != null && list.equals(list2)) {
                return true;
            }
        }
        return false;
    }

    public String getId() {
        return this.f17156id;
    }

    @Override // com.dropbox.core.p006v2.files.Metadata
    public String getName() {
        return this.name;
    }

    @Override // com.dropbox.core.p006v2.files.Metadata
    public String getParentSharedFolderId() {
        return this.parentSharedFolderId;
    }

    @Override // com.dropbox.core.p006v2.files.Metadata
    public String getPathDisplay() {
        return this.pathDisplay;
    }

    @Override // com.dropbox.core.p006v2.files.Metadata
    public String getPathLower() {
        return this.pathLower;
    }

    public List<PropertyGroup> getPropertyGroups() {
        return this.propertyGroups;
    }

    public String getSharedFolderId() {
        return this.sharedFolderId;
    }

    public FolderSharingInfo getSharingInfo() {
        return this.sharingInfo;
    }

    @Override // com.dropbox.core.p006v2.files.Metadata
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17156id, this.sharedFolderId, this.sharingInfo, this.propertyGroups});
    }

    @Override // com.dropbox.core.p006v2.files.Metadata
    public String toString() {
        return C2548a.f17158b.serialize((C2548a) this, false);
    }

    @Override // com.dropbox.core.p006v2.files.Metadata
    public String toStringMultiline() {
        return C2548a.f17158b.serialize((C2548a) this, true);
    }

    public FolderMetadata(String str, String str2) {
        this(str, str2, null, null, null, null, null, null);
    }
}
