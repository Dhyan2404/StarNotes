package com.dropbox.core.p006v2.paper;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.paper.ListUsersOnPaperDocArgs;

/* loaded from: classes4.dex */
public class DocsUsersListBuilder {

    /* renamed from: a */
    public final DbxUserPaperRequests f17561a;

    /* renamed from: b */
    public final ListUsersOnPaperDocArgs.Builder f17562b;

    public DocsUsersListBuilder(DbxUserPaperRequests dbxUserPaperRequests, ListUsersOnPaperDocArgs.Builder builder) {
        if (dbxUserPaperRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17561a = dbxUserPaperRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17562b = builder;
    }

    public ListUsersOnPaperDocResponse start() throws DocLookupErrorException, DbxException {
        return this.f17561a.m11318n(this.f17562b.build());
    }

    public DocsUsersListBuilder withFilterBy(UserOnPaperDocFilter userOnPaperDocFilter) {
        this.f17562b.withFilterBy(userOnPaperDocFilter);
        return this;
    }

    public DocsUsersListBuilder withLimit(Integer num) {
        this.f17562b.withLimit(num);
        return this;
    }
}
