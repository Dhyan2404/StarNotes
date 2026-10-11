package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.files.SearchV2Arg;

/* loaded from: classes4.dex */
public class SearchV2Builder {

    /* renamed from: a */
    public final DbxUserFilesRequests f17402a;

    /* renamed from: b */
    public final SearchV2Arg.Builder f17403b;

    public SearchV2Builder(DbxUserFilesRequests dbxUserFilesRequests, SearchV2Arg.Builder builder) {
        if (dbxUserFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17402a = dbxUserFilesRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17403b = builder;
    }

    public SearchV2Result start() throws SearchErrorException, DbxException {
        return this.f17402a.m10651a0(this.f17403b.build());
    }

    public SearchV2Builder withIncludeHighlights(Boolean bool) {
        this.f17403b.withIncludeHighlights(bool);
        return this;
    }

    public SearchV2Builder withMatchFieldOptions(SearchMatchFieldOptions searchMatchFieldOptions) {
        this.f17403b.withMatchFieldOptions(searchMatchFieldOptions);
        return this;
    }

    public SearchV2Builder withOptions(SearchOptions searchOptions) {
        this.f17403b.withOptions(searchOptions);
        return this;
    }
}
