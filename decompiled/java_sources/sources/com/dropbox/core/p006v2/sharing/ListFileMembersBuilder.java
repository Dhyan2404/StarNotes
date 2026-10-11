package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.sharing.ListFileMembersArg;
import java.util.List;

/* loaded from: classes4.dex */
public class ListFileMembersBuilder {

    /* renamed from: a */
    public final DbxUserSharingRequests f17804a;

    /* renamed from: b */
    public final ListFileMembersArg.Builder f17805b;

    public ListFileMembersBuilder(DbxUserSharingRequests dbxUserSharingRequests, ListFileMembersArg.Builder builder) {
        if (dbxUserSharingRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17804a = dbxUserSharingRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17805b = builder;
    }

    public SharedFileMembers start() throws ListFileMembersErrorException, DbxException {
        return this.f17804a.m11549o(this.f17805b.build());
    }

    public ListFileMembersBuilder withActions(List<MemberAction> list) {
        this.f17805b.withActions(list);
        return this;
    }

    public ListFileMembersBuilder withIncludeInherited(Boolean bool) {
        this.f17805b.withIncludeInherited(bool);
        return this;
    }

    public ListFileMembersBuilder withLimit(Long l) {
        this.f17805b.withLimit(l);
        return this;
    }
}
