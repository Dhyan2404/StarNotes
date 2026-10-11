package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxException;
import com.dropbox.core.DbxUploader;
import com.dropbox.core.p006v2.DbxUploadStyleBuilder;
import com.dropbox.core.p006v2.fileproperties.PropertyGroup;
import com.dropbox.core.p006v2.files.CommitInfoWithProperties;
import java.util.Date;
import java.util.List;

/* loaded from: classes4.dex */
public class AlphaUploadBuilder extends DbxUploadStyleBuilder<FileMetadata, UploadErrorWithProperties, UploadErrorWithPropertiesException> {

    /* renamed from: a */
    public final DbxUserFilesRequests f17040a;

    /* renamed from: b */
    public final CommitInfoWithProperties.Builder f17041b;

    public AlphaUploadBuilder(DbxUserFilesRequests dbxUserFilesRequests, CommitInfoWithProperties.Builder builder) {
        if (dbxUserFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17040a = dbxUserFilesRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17041b = builder;
    }

    public AlphaUploadBuilder withAutorename(Boolean bool) {
        this.f17041b.withAutorename(bool);
        return this;
    }

    public AlphaUploadBuilder withClientModified(Date date) {
        this.f17041b.withClientModified(date);
        return this;
    }

    public AlphaUploadBuilder withMode(WriteMode writeMode) {
        this.f17041b.withMode(writeMode);
        return this;
    }

    public AlphaUploadBuilder withMute(Boolean bool) {
        this.f17041b.withMute(bool);
        return this;
    }

    public AlphaUploadBuilder withPropertyGroups(List<PropertyGroup> list) {
        this.f17041b.withPropertyGroups(list);
        return this;
    }

    public AlphaUploadBuilder withStrictConflict(Boolean bool) {
        this.f17041b.withStrictConflict(bool);
        return this;
    }

    @Override // com.dropbox.core.p006v2.DbxUploadStyleBuilder
    public DbxUploader<FileMetadata, UploadErrorWithProperties, UploadErrorWithPropertiesException> start() throws UploadErrorWithPropertiesException, DbxException {
        return this.f17040a.m10652b(this.f17041b.build());
    }
}
