package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.fileproperties.TemplateFilterBase;
import com.dropbox.core.p006v2.files.ListFolderArg;

/* loaded from: classes4.dex */
public class ListFolderGetLatestCursorBuilder {

    /* renamed from: a */
    public final DbxUserFilesRequests f17221a;

    /* renamed from: b */
    public final ListFolderArg.Builder f17222b;

    public ListFolderGetLatestCursorBuilder(DbxUserFilesRequests dbxUserFilesRequests, ListFolderArg.Builder builder) {
        if (dbxUserFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17221a = dbxUserFilesRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17222b = builder;
    }

    public ListFolderGetLatestCursorResult start() throws ListFolderErrorException, DbxException {
        return this.f17221a.m10629F(this.f17222b.build());
    }

    public ListFolderGetLatestCursorBuilder withIncludeDeleted(Boolean bool) {
        this.f17222b.withIncludeDeleted(bool);
        return this;
    }

    public ListFolderGetLatestCursorBuilder withIncludeHasExplicitSharedMembers(Boolean bool) {
        this.f17222b.withIncludeHasExplicitSharedMembers(bool);
        return this;
    }

    public ListFolderGetLatestCursorBuilder withIncludeMediaInfo(Boolean bool) {
        this.f17222b.withIncludeMediaInfo(bool);
        return this;
    }

    public ListFolderGetLatestCursorBuilder withIncludeMountedFolders(Boolean bool) {
        this.f17222b.withIncludeMountedFolders(bool);
        return this;
    }

    public ListFolderGetLatestCursorBuilder withIncludeNonDownloadableFiles(Boolean bool) {
        this.f17222b.withIncludeNonDownloadableFiles(bool);
        return this;
    }

    public ListFolderGetLatestCursorBuilder withIncludePropertyGroups(TemplateFilterBase templateFilterBase) {
        this.f17222b.withIncludePropertyGroups(templateFilterBase);
        return this;
    }

    public ListFolderGetLatestCursorBuilder withLimit(Long l) {
        this.f17222b.withLimit(l);
        return this;
    }

    public ListFolderGetLatestCursorBuilder withRecursive(Boolean bool) {
        this.f17222b.withRecursive(bool);
        return this;
    }

    public ListFolderGetLatestCursorBuilder withSharedLink(SharedLink sharedLink) {
        this.f17222b.withSharedLink(sharedLink);
        return this;
    }
}
