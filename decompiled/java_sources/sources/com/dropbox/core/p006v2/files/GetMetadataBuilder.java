package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.fileproperties.TemplateFilterBase;
import com.dropbox.core.p006v2.files.GetMetadataArg;

/* loaded from: classes4.dex */
public class GetMetadataBuilder {

    /* renamed from: a */
    public final DbxUserFilesRequests f17171a;

    /* renamed from: b */
    public final GetMetadataArg.Builder f17172b;

    public GetMetadataBuilder(DbxUserFilesRequests dbxUserFilesRequests, GetMetadataArg.Builder builder) {
        if (dbxUserFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17171a = dbxUserFilesRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17172b = builder;
    }

    public Metadata start() throws GetMetadataErrorException, DbxException {
        return this.f17171a.m10681w(this.f17172b.build());
    }

    public GetMetadataBuilder withIncludeDeleted(Boolean bool) {
        this.f17172b.withIncludeDeleted(bool);
        return this;
    }

    public GetMetadataBuilder withIncludeHasExplicitSharedMembers(Boolean bool) {
        this.f17172b.withIncludeHasExplicitSharedMembers(bool);
        return this;
    }

    public GetMetadataBuilder withIncludeMediaInfo(Boolean bool) {
        this.f17172b.withIncludeMediaInfo(bool);
        return this;
    }

    public GetMetadataBuilder withIncludePropertyGroups(TemplateFilterBase templateFilterBase) {
        this.f17172b.withIncludePropertyGroups(templateFilterBase);
        return this;
    }
}
