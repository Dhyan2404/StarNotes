package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.fileproperties.TemplateFilterBase;
import com.dropbox.core.p006v2.files.ListFolderArg;

/* loaded from: classes4.dex */
public class ListFolderBuilder {

    /* renamed from: a */
    public final DbxUserFilesRequests f17210a;

    /* renamed from: b */
    public final ListFolderArg.Builder f17211b;

    public ListFolderBuilder(DbxUserFilesRequests dbxUserFilesRequests, ListFolderArg.Builder builder) {
        if (dbxUserFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17210a = dbxUserFilesRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17211b = builder;
    }

    public ListFolderResult start() throws ListFolderErrorException, DbxException {
        return this.f17210a.m10627D(this.f17211b.build());
    }

    public ListFolderBuilder withIncludeDeleted(Boolean bool) {
        this.f17211b.withIncludeDeleted(bool);
        return this;
    }

    public ListFolderBuilder withIncludeHasExplicitSharedMembers(Boolean bool) {
        this.f17211b.withIncludeHasExplicitSharedMembers(bool);
        return this;
    }

    public ListFolderBuilder withIncludeMediaInfo(Boolean bool) {
        this.f17211b.withIncludeMediaInfo(bool);
        return this;
    }

    public ListFolderBuilder withIncludeMountedFolders(Boolean bool) {
        this.f17211b.withIncludeMountedFolders(bool);
        return this;
    }

    public ListFolderBuilder withIncludeNonDownloadableFiles(Boolean bool) {
        this.f17211b.withIncludeNonDownloadableFiles(bool);
        return this;
    }

    public ListFolderBuilder withIncludePropertyGroups(TemplateFilterBase templateFilterBase) {
        this.f17211b.withIncludePropertyGroups(templateFilterBase);
        return this;
    }

    public ListFolderBuilder withLimit(Long l) {
        this.f17211b.withLimit(l);
        return this;
    }

    public ListFolderBuilder withRecursive(Boolean bool) {
        this.f17211b.withRecursive(bool);
        return this;
    }

    public ListFolderBuilder withSharedLink(SharedLink sharedLink) {
        this.f17211b.withSharedLink(sharedLink);
        return this;
    }
}
