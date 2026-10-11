package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.sharing.ListFolderMembersArgs;
import java.util.List;

/* loaded from: classes4.dex */
public class ListFolderMembersBuilder {

    /* renamed from: a */
    public final DbxUserSharingRequests f17832a;

    /* renamed from: b */
    public final ListFolderMembersArgs.Builder f17833b;

    public ListFolderMembersBuilder(DbxUserSharingRequests dbxUserSharingRequests, ListFolderMembersArgs.Builder builder) {
        if (dbxUserSharingRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17832a = dbxUserSharingRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17833b = builder;
    }

    public SharedFolderMembers start() throws SharedFolderAccessErrorException, DbxException {
        return this.f17832a.m11552r(this.f17833b.build());
    }

    public ListFolderMembersBuilder withActions(List<MemberAction> list) {
        this.f17833b.withActions(list);
        return this;
    }

    public ListFolderMembersBuilder withLimit(Long l) {
        this.f17833b.withLimit(l);
        return this;
    }
}
