package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.fileproperties.PropertyGroup;
import com.dropbox.core.p006v2.files.ExportInfo;
import com.dropbox.core.p006v2.files.FileLockMetadata;
import com.dropbox.core.p006v2.files.FileSharingInfo;
import com.dropbox.core.p006v2.files.MediaInfo;
import com.dropbox.core.p006v2.files.Metadata;
import com.dropbox.core.p006v2.files.SymlinkInfo;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.onyx.android.sdk.cloudstorage.constans.Constants;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class FileMetadata extends Metadata {
    protected final Date clientModified;
    protected final String contentHash;
    protected final ExportInfo exportInfo;
    protected final FileLockMetadata fileLockInfo;
    protected final Boolean hasExplicitSharedMembers;

    /* renamed from: id */
    protected final String f17149id;
    protected final boolean isDownloadable;
    protected final MediaInfo mediaInfo;
    protected final List<PropertyGroup> propertyGroups;
    protected final String rev;
    protected final Date serverModified;
    protected final FileSharingInfo sharingInfo;
    protected final long size;
    protected final SymlinkInfo symlinkInfo;

    /* loaded from: classes4.dex */
    public static class Builder extends Metadata.Builder {
        protected final Date clientModified;
        protected String contentHash;
        protected ExportInfo exportInfo;
        protected FileLockMetadata fileLockInfo;
        protected Boolean hasExplicitSharedMembers;

        /* renamed from: id */
        protected final String f17150id;
        protected boolean isDownloadable;
        protected MediaInfo mediaInfo;
        protected List<PropertyGroup> propertyGroups;
        protected final String rev;
        protected final Date serverModified;
        protected FileSharingInfo sharingInfo;
        protected final long size;
        protected SymlinkInfo symlinkInfo;

        public Builder(String str, String str2, Date date, Date date2, String str3, long j) {
            super(str);
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'id' is null");
            }
            if (str2.length() < 1) {
                throw new IllegalArgumentException("String 'id' is shorter than 1");
            }
            this.f17150id = str2;
            if (date == null) {
                throw new IllegalArgumentException("Required value for 'clientModified' is null");
            }
            this.clientModified = LangUtil.truncateMillis(date);
            if (date2 == null) {
                throw new IllegalArgumentException("Required value for 'serverModified' is null");
            }
            this.serverModified = LangUtil.truncateMillis(date2);
            if (str3 == null) {
                throw new IllegalArgumentException("Required value for 'rev' is null");
            }
            if (str3.length() < 9) {
                throw new IllegalArgumentException("String 'rev' is shorter than 9");
            }
            if (!Pattern.matches("[0-9a-f]+", str3)) {
                throw new IllegalArgumentException("String 'rev' does not match pattern");
            }
            this.rev = str3;
            this.size = j;
            this.mediaInfo = null;
            this.symlinkInfo = null;
            this.sharingInfo = null;
            this.isDownloadable = true;
            this.exportInfo = null;
            this.propertyGroups = null;
            this.hasExplicitSharedMembers = null;
            this.contentHash = null;
            this.fileLockInfo = null;
        }

        public Builder withContentHash(String str) {
            if (str != null) {
                if (str.length() < 64) {
                    throw new IllegalArgumentException("String 'contentHash' is shorter than 64");
                }
                if (str.length() > 64) {
                    throw new IllegalArgumentException("String 'contentHash' is longer than 64");
                }
            }
            this.contentHash = str;
            return this;
        }

        public Builder withExportInfo(ExportInfo exportInfo) {
            this.exportInfo = exportInfo;
            return this;
        }

        public Builder withFileLockInfo(FileLockMetadata fileLockMetadata) {
            this.fileLockInfo = fileLockMetadata;
            return this;
        }

        public Builder withHasExplicitSharedMembers(Boolean bool) {
            this.hasExplicitSharedMembers = bool;
            return this;
        }

        public Builder withIsDownloadable(Boolean bool) {
            if (bool != null) {
                this.isDownloadable = bool.booleanValue();
            } else {
                this.isDownloadable = true;
            }
            return this;
        }

        public Builder withMediaInfo(MediaInfo mediaInfo) {
            this.mediaInfo = mediaInfo;
            return this;
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

        public Builder withSharingInfo(FileSharingInfo fileSharingInfo) {
            this.sharingInfo = fileSharingInfo;
            return this;
        }

        public Builder withSymlinkInfo(SymlinkInfo symlinkInfo) {
            this.symlinkInfo = symlinkInfo;
            return this;
        }

        @Override // com.dropbox.core.v2.files.Metadata.Builder
        public FileMetadata build() {
            return new FileMetadata(this.name, this.f17150id, this.clientModified, this.serverModified, this.rev, this.size, this.pathLower, this.pathDisplay, this.parentSharedFolderId, this.mediaInfo, this.symlinkInfo, this.sharingInfo, this.isDownloadable, this.exportInfo, this.propertyGroups, this.hasExplicitSharedMembers, this.contentHash, this.fileLockInfo);
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

    /* renamed from: com.dropbox.core.v2.files.FileMetadata$a */
    /* loaded from: classes4.dex */
    public static class C2543a extends StructSerializer<FileMetadata> {

        /* renamed from: b */
        public static final C2543a f17151b = new C2543a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0012, code lost:
        
            if ("file".equals(r2) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.files.FileMetadata deserialize(com.fasterxml.jackson.core.JsonParser r26, boolean r27) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 598
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.files.FileMetadata.C2543a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.files.FileMetadata");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileMetadata fileMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("file", jsonGenerator);
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) fileMetadata.name, jsonGenerator);
            jsonGenerator.writeFieldName("id");
            StoneSerializers.string().serialize((StoneSerializer<String>) fileMetadata.f17149id, jsonGenerator);
            jsonGenerator.writeFieldName("client_modified");
            StoneSerializers.timestamp().serialize((StoneSerializer<Date>) fileMetadata.clientModified, jsonGenerator);
            jsonGenerator.writeFieldName("server_modified");
            StoneSerializers.timestamp().serialize((StoneSerializer<Date>) fileMetadata.serverModified, jsonGenerator);
            jsonGenerator.writeFieldName("rev");
            StoneSerializers.string().serialize((StoneSerializer<String>) fileMetadata.rev, jsonGenerator);
            jsonGenerator.writeFieldName("size");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(fileMetadata.size), jsonGenerator);
            if (fileMetadata.pathLower != null) {
                jsonGenerator.writeFieldName("path_lower");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) fileMetadata.pathLower, jsonGenerator);
            }
            if (fileMetadata.pathDisplay != null) {
                jsonGenerator.writeFieldName("path_display");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) fileMetadata.pathDisplay, jsonGenerator);
            }
            if (fileMetadata.parentSharedFolderId != null) {
                jsonGenerator.writeFieldName("parent_shared_folder_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) fileMetadata.parentSharedFolderId, jsonGenerator);
            }
            if (fileMetadata.mediaInfo != null) {
                jsonGenerator.writeFieldName("media_info");
                StoneSerializers.nullable(MediaInfo.C2594b.f17262b).serialize((StoneSerializer) fileMetadata.mediaInfo, jsonGenerator);
            }
            if (fileMetadata.symlinkInfo != null) {
                jsonGenerator.writeFieldName("symlink_info");
                StoneSerializers.nullableStruct(SymlinkInfo.C2661a.f17409b).serialize((StructSerializer) fileMetadata.symlinkInfo, jsonGenerator);
            }
            if (fileMetadata.sharingInfo != null) {
                jsonGenerator.writeFieldName("sharing_info");
                StoneSerializers.nullableStruct(FileSharingInfo.C2545a.f17153b).serialize((StructSerializer) fileMetadata.sharingInfo, jsonGenerator);
            }
            jsonGenerator.writeFieldName("is_downloadable");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(fileMetadata.isDownloadable), jsonGenerator);
            if (fileMetadata.exportInfo != null) {
                jsonGenerator.writeFieldName("export_info");
                StoneSerializers.nullableStruct(ExportInfo.C2535a.f17139b).serialize((StructSerializer) fileMetadata.exportInfo, jsonGenerator);
            }
            if (fileMetadata.propertyGroups != null) {
                jsonGenerator.writeFieldName("property_groups");
                StoneSerializers.nullable(StoneSerializers.list(PropertyGroup.Serializer.INSTANCE)).serialize((StoneSerializer) fileMetadata.propertyGroups, jsonGenerator);
            }
            if (fileMetadata.hasExplicitSharedMembers != null) {
                jsonGenerator.writeFieldName("has_explicit_shared_members");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize((StoneSerializer) fileMetadata.hasExplicitSharedMembers, jsonGenerator);
            }
            if (fileMetadata.contentHash != null) {
                jsonGenerator.writeFieldName(Constants.ALI_YUN_CONTENT_HASH);
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) fileMetadata.contentHash, jsonGenerator);
            }
            if (fileMetadata.fileLockInfo != null) {
                jsonGenerator.writeFieldName("file_lock_info");
                StoneSerializers.nullableStruct(FileLockMetadata.C2542a.f17148b).serialize((StructSerializer) fileMetadata.fileLockInfo, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FileMetadata(String str, String str2, Date date, Date date2, String str3, long j, String str4, String str5, String str6, MediaInfo mediaInfo, SymlinkInfo symlinkInfo, FileSharingInfo fileSharingInfo, boolean z, ExportInfo exportInfo, List<PropertyGroup> list, Boolean bool, String str7, FileLockMetadata fileLockMetadata) {
        super(str, str4, str5, str6);
        if (str2 != null) {
            if (str2.length() >= 1) {
                this.f17149id = str2;
                if (date != null) {
                    this.clientModified = LangUtil.truncateMillis(date);
                    if (date2 != null) {
                        this.serverModified = LangUtil.truncateMillis(date2);
                        if (str3 != null) {
                            if (str3.length() >= 9) {
                                if (Pattern.matches("[0-9a-f]+", str3)) {
                                    this.rev = str3;
                                    this.size = j;
                                    this.mediaInfo = mediaInfo;
                                    this.symlinkInfo = symlinkInfo;
                                    this.sharingInfo = fileSharingInfo;
                                    this.isDownloadable = z;
                                    this.exportInfo = exportInfo;
                                    if (list != null) {
                                        Iterator<PropertyGroup> it2 = list.iterator();
                                        while (it2.hasNext()) {
                                            if (it2.next() == null) {
                                                throw new IllegalArgumentException("An item in list 'propertyGroups' is null");
                                            }
                                        }
                                    }
                                    this.propertyGroups = list;
                                    this.hasExplicitSharedMembers = bool;
                                    if (str7 != null) {
                                        if (str7.length() >= 64) {
                                            if (str7.length() > 64) {
                                                throw new IllegalArgumentException("String 'contentHash' is longer than 64");
                                            }
                                        } else {
                                            throw new IllegalArgumentException("String 'contentHash' is shorter than 64");
                                        }
                                    }
                                    this.contentHash = str7;
                                    this.fileLockInfo = fileLockMetadata;
                                    return;
                                }
                                throw new IllegalArgumentException("String 'rev' does not match pattern");
                            }
                            throw new IllegalArgumentException("String 'rev' is shorter than 9");
                        }
                        throw new IllegalArgumentException("Required value for 'rev' is null");
                    }
                    throw new IllegalArgumentException("Required value for 'serverModified' is null");
                }
                throw new IllegalArgumentException("Required value for 'clientModified' is null");
            }
            throw new IllegalArgumentException("String 'id' is shorter than 1");
        }
        throw new IllegalArgumentException("Required value for 'id' is null");
    }

    public static Builder newBuilder(String str, String str2, Date date, Date date2, String str3, long j) {
        return new Builder(str, str2, date, date2, str3, j);
    }

    @Override // com.dropbox.core.p006v2.files.Metadata
    public boolean equals(Object obj) {
        String str;
        String str2;
        Date date;
        Date date2;
        Date date3;
        Date date4;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        MediaInfo mediaInfo;
        MediaInfo mediaInfo2;
        SymlinkInfo symlinkInfo;
        SymlinkInfo symlinkInfo2;
        FileSharingInfo fileSharingInfo;
        FileSharingInfo fileSharingInfo2;
        ExportInfo exportInfo;
        ExportInfo exportInfo2;
        List<PropertyGroup> list;
        List<PropertyGroup> list2;
        Boolean bool;
        Boolean bool2;
        String str11;
        String str12;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FileMetadata fileMetadata = (FileMetadata) obj;
        String str13 = this.name;
        String str14 = fileMetadata.name;
        if ((str13 == str14 || str13.equals(str14)) && (((str = this.f17149id) == (str2 = fileMetadata.f17149id) || str.equals(str2)) && (((date = this.clientModified) == (date2 = fileMetadata.clientModified) || date.equals(date2)) && (((date3 = this.serverModified) == (date4 = fileMetadata.serverModified) || date3.equals(date4)) && (((str3 = this.rev) == (str4 = fileMetadata.rev) || str3.equals(str4)) && this.size == fileMetadata.size && (((str5 = this.pathLower) == (str6 = fileMetadata.pathLower) || (str5 != null && str5.equals(str6))) && (((str7 = this.pathDisplay) == (str8 = fileMetadata.pathDisplay) || (str7 != null && str7.equals(str8))) && (((str9 = this.parentSharedFolderId) == (str10 = fileMetadata.parentSharedFolderId) || (str9 != null && str9.equals(str10))) && (((mediaInfo = this.mediaInfo) == (mediaInfo2 = fileMetadata.mediaInfo) || (mediaInfo != null && mediaInfo.equals(mediaInfo2))) && (((symlinkInfo = this.symlinkInfo) == (symlinkInfo2 = fileMetadata.symlinkInfo) || (symlinkInfo != null && symlinkInfo.equals(symlinkInfo2))) && (((fileSharingInfo = this.sharingInfo) == (fileSharingInfo2 = fileMetadata.sharingInfo) || (fileSharingInfo != null && fileSharingInfo.equals(fileSharingInfo2))) && this.isDownloadable == fileMetadata.isDownloadable && (((exportInfo = this.exportInfo) == (exportInfo2 = fileMetadata.exportInfo) || (exportInfo != null && exportInfo.equals(exportInfo2))) && (((list = this.propertyGroups) == (list2 = fileMetadata.propertyGroups) || (list != null && list.equals(list2))) && (((bool = this.hasExplicitSharedMembers) == (bool2 = fileMetadata.hasExplicitSharedMembers) || (bool != null && bool.equals(bool2))) && ((str11 = this.contentHash) == (str12 = fileMetadata.contentHash) || (str11 != null && str11.equals(str12))))))))))))))))) {
            FileLockMetadata fileLockMetadata = this.fileLockInfo;
            FileLockMetadata fileLockMetadata2 = fileMetadata.fileLockInfo;
            if (fileLockMetadata == fileLockMetadata2) {
                return true;
            }
            if (fileLockMetadata != null && fileLockMetadata.equals(fileLockMetadata2)) {
                return true;
            }
        }
        return false;
    }

    public Date getClientModified() {
        return this.clientModified;
    }

    public String getContentHash() {
        return this.contentHash;
    }

    public ExportInfo getExportInfo() {
        return this.exportInfo;
    }

    public FileLockMetadata getFileLockInfo() {
        return this.fileLockInfo;
    }

    public Boolean getHasExplicitSharedMembers() {
        return this.hasExplicitSharedMembers;
    }

    public String getId() {
        return this.f17149id;
    }

    public boolean getIsDownloadable() {
        return this.isDownloadable;
    }

    public MediaInfo getMediaInfo() {
        return this.mediaInfo;
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

    public String getRev() {
        return this.rev;
    }

    public Date getServerModified() {
        return this.serverModified;
    }

    public FileSharingInfo getSharingInfo() {
        return this.sharingInfo;
    }

    public long getSize() {
        return this.size;
    }

    public SymlinkInfo getSymlinkInfo() {
        return this.symlinkInfo;
    }

    @Override // com.dropbox.core.p006v2.files.Metadata
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17149id, this.clientModified, this.serverModified, this.rev, Long.valueOf(this.size), this.mediaInfo, this.symlinkInfo, this.sharingInfo, Boolean.valueOf(this.isDownloadable), this.exportInfo, this.propertyGroups, this.hasExplicitSharedMembers, this.contentHash, this.fileLockInfo});
    }

    @Override // com.dropbox.core.p006v2.files.Metadata
    public String toString() {
        return C2543a.f17151b.serialize((C2543a) this, false);
    }

    @Override // com.dropbox.core.p006v2.files.Metadata
    public String toStringMultiline() {
        return C2543a.f17151b.serialize((C2543a) this, true);
    }

    public FileMetadata(String str, String str2, Date date, Date date2, String str3, long j) {
        this(str, str2, date, date2, str3, j, null, null, null, null, null, null, true, null, null, null, null, null);
    }
}
