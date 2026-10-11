package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxException;
import com.dropbox.core.DbxUploader;
import com.dropbox.core.p006v2.DbxUploadStyleBuilder;
import com.dropbox.core.p006v2.fileproperties.PropertyGroup;
import com.dropbox.core.p006v2.files.CommitInfo;
import java.util.Date;
import java.util.List;

/* loaded from: classes4.dex */
public class UploadBuilder extends DbxUploadStyleBuilder<FileMetadata, UploadError, UploadErrorException> {

    /* renamed from: a */
    public final DbxUserFilesRequests f17436a;

    /* renamed from: b */
    public final CommitInfo.Builder f17437b;

    public UploadBuilder(DbxUserFilesRequests dbxUserFilesRequests, CommitInfo.Builder builder) {
        if (dbxUserFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17436a = dbxUserFilesRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17437b = builder;
    }

    public UploadBuilder withAutorename(Boolean bool) {
        this.f17437b.withAutorename(bool);
        return this;
    }

    public UploadBuilder withClientModified(Date date) {
        this.f17437b.withClientModified(date);
        return this;
    }

    public UploadBuilder withMode(WriteMode writeMode) {
        this.f17437b.withMode(writeMode);
        return this;
    }

    public UploadBuilder withMute(Boolean bool) {
        this.f17437b.withMute(bool);
        return this;
    }

    public UploadBuilder withPropertyGroups(List<PropertyGroup> list) {
        this.f17437b.withPropertyGroups(list);
        return this;
    }

    public UploadBuilder withStrictConflict(Boolean bool) {
        this.f17437b.withStrictConflict(bool);
        return this;
    }

    @Override // com.dropbox.core.p006v2.DbxUploadStyleBuilder
    public DbxUploader<FileMetadata, UploadError, UploadErrorException> start() throws UploadErrorException, DbxException {
        return this.f17436a.m10655c0(this.f17437b.build());
    }
}
