package com.dropbox.core.p006v2.paper;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.paper.ListPaperDocsArgs;

/* loaded from: classes4.dex */
public class DocsListBuilder {

    /* renamed from: a */
    public final DbxUserPaperRequests f17557a;

    /* renamed from: b */
    public final ListPaperDocsArgs.Builder f17558b;

    public DocsListBuilder(DbxUserPaperRequests dbxUserPaperRequests, ListPaperDocsArgs.Builder builder) {
        if (dbxUserPaperRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17557a = dbxUserPaperRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17558b = builder;
    }

    public ListPaperDocsResponse start() throws DbxApiException, DbxException {
        return this.f17557a.m11311g(this.f17558b.build());
    }

    public DocsListBuilder withFilterBy(ListPaperDocsFilterBy listPaperDocsFilterBy) {
        this.f17558b.withFilterBy(listPaperDocsFilterBy);
        return this;
    }

    public DocsListBuilder withLimit(Integer num) {
        this.f17558b.withLimit(num);
        return this;
    }

    public DocsListBuilder withSortBy(ListPaperDocsSortBy listPaperDocsSortBy) {
        this.f17558b.withSortBy(listPaperDocsSortBy);
        return this;
    }

    public DocsListBuilder withSortOrder(ListPaperDocsSortOrder listPaperDocsSortOrder) {
        this.f17558b.withSortOrder(listPaperDocsSortOrder);
        return this;
    }
}
