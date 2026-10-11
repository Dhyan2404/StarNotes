package com.dropbox.core.p006v2.paper;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.paper.AddPaperDocUser;
import java.util.List;

/* loaded from: classes4.dex */
public class DocsUsersAddBuilder {

    /* renamed from: a */
    public final DbxUserPaperRequests f17559a;

    /* renamed from: b */
    public final AddPaperDocUser.Builder f17560b;

    public DocsUsersAddBuilder(DbxUserPaperRequests dbxUserPaperRequests, AddPaperDocUser.Builder builder) {
        if (dbxUserPaperRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17559a = dbxUserPaperRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17560b = builder;
    }

    public List<AddPaperDocUserMemberResult> start() throws DocLookupErrorException, DbxException {
        return this.f17559a.m11317m(this.f17560b.build());
    }

    public DocsUsersAddBuilder withCustomMessage(String str) {
        this.f17560b.withCustomMessage(str);
        return this;
    }

    public DocsUsersAddBuilder withQuiet(Boolean bool) {
        this.f17560b.withQuiet(bool);
        return this;
    }
}
