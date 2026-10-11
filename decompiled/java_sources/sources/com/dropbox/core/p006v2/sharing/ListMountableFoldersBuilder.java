package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.sharing.ListFoldersArgs;
import java.util.List;

/* loaded from: classes4.dex */
public class ListMountableFoldersBuilder {

    /* renamed from: a */
    public final DbxUserSharingRequests f17849a;

    /* renamed from: b */
    public final ListFoldersArgs.Builder f17850b;

    public ListMountableFoldersBuilder(DbxUserSharingRequests dbxUserSharingRequests, ListFoldersArgs.Builder builder) {
        if (dbxUserSharingRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17849a = dbxUserSharingRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17850b = builder;
    }

    public ListFoldersResult start() throws DbxApiException, DbxException {
        return this.f17849a.m11556v(this.f17850b.build());
    }

    public ListMountableFoldersBuilder withActions(List<FolderAction> list) {
        this.f17850b.withActions(list);
        return this;
    }

    public ListMountableFoldersBuilder withLimit(Long l) {
        this.f17850b.withLimit(l);
        return this;
    }
}
