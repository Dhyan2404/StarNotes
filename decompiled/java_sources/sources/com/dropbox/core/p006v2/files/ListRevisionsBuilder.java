package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.files.ListRevisionsArg;

/* loaded from: classes4.dex */
public class ListRevisionsBuilder {

    /* renamed from: a */
    public final DbxUserFilesRequests f17232a;

    /* renamed from: b */
    public final ListRevisionsArg.Builder f17233b;

    public ListRevisionsBuilder(DbxUserFilesRequests dbxUserFilesRequests, ListRevisionsArg.Builder builder) {
        if (dbxUserFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17232a = dbxUserFilesRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17233b = builder;
    }

    public ListRevisionsResult start() throws ListRevisionsErrorException, DbxException {
        return this.f17232a.m10631H(this.f17233b.build());
    }

    public ListRevisionsBuilder withLimit(Long l) {
        this.f17233b.withLimit(l);
        return this;
    }

    public ListRevisionsBuilder withMode(ListRevisionsMode listRevisionsMode) {
        this.f17233b.withMode(listRevisionsMode);
        return this;
    }
}
