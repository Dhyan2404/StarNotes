package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.sharing.ListSharedLinksArg;

/* loaded from: classes4.dex */
public class ListSharedLinksBuilder {

    /* renamed from: a */
    public final DbxUserSharingRequests f17857a;

    /* renamed from: b */
    public final ListSharedLinksArg.Builder f17858b;

    public ListSharedLinksBuilder(DbxUserSharingRequests dbxUserSharingRequests, ListSharedLinksArg.Builder builder) {
        if (dbxUserSharingRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17857a = dbxUserSharingRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17858b = builder;
    }

    public ListSharedLinksResult start() throws ListSharedLinksErrorException, DbxException {
        return this.f17857a.m11560z(this.f17858b.build());
    }

    public ListSharedLinksBuilder withCursor(String str) {
        this.f17858b.withCursor(str);
        return this;
    }

    public ListSharedLinksBuilder withDirectOnly(Boolean bool) {
        this.f17858b.withDirectOnly(bool);
        return this;
    }

    public ListSharedLinksBuilder withPath(String str) {
        this.f17858b.withPath(str);
        return this;
    }
}
