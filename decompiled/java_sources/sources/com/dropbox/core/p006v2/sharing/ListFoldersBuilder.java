package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.sharing.ListFoldersArgs;
import java.util.List;

/* loaded from: classes4.dex */
public class ListFoldersBuilder {

    /* renamed from: a */
    public final DbxUserSharingRequests f17844a;

    /* renamed from: b */
    public final ListFoldersArgs.Builder f17845b;

    public ListFoldersBuilder(DbxUserSharingRequests dbxUserSharingRequests, ListFoldersArgs.Builder builder) {
        if (dbxUserSharingRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17844a = dbxUserSharingRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17845b = builder;
    }

    public ListFoldersResult start() throws DbxApiException, DbxException {
        return this.f17844a.m11554t(this.f17845b.build());
    }

    public ListFoldersBuilder withActions(List<FolderAction> list) {
        this.f17845b.withActions(list);
        return this;
    }

    public ListFoldersBuilder withLimit(Long l) {
        this.f17845b.withLimit(l);
        return this;
    }
}
