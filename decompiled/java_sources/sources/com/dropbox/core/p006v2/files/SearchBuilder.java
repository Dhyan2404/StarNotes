package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.files.SearchArg;

/* loaded from: classes4.dex */
public class SearchBuilder {

    /* renamed from: a */
    public final DbxUserFilesRequests f17381a;

    /* renamed from: b */
    public final SearchArg.Builder f17382b;

    public SearchBuilder(DbxUserFilesRequests dbxUserFilesRequests, SearchArg.Builder builder) {
        if (dbxUserFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17381a = dbxUserFilesRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17382b = builder;
    }

    public SearchResult start() throws SearchErrorException, DbxException {
        return this.f17381a.m10648Y(this.f17382b.build());
    }

    public SearchBuilder withMaxResults(Long l) {
        this.f17382b.withMaxResults(l);
        return this;
    }

    public SearchBuilder withMode(SearchMode searchMode) {
        this.f17382b.withMode(searchMode);
        return this;
    }

    public SearchBuilder withStart(Long l) {
        this.f17382b.withStart(l);
        return this;
    }
}
