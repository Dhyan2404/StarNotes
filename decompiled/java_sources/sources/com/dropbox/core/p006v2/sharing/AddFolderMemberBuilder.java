package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.sharing.AddFolderMemberArg;

/* loaded from: classes4.dex */
public class AddFolderMemberBuilder {

    /* renamed from: a */
    public final DbxUserSharingRequests f17674a;

    /* renamed from: b */
    public final AddFolderMemberArg.Builder f17675b;

    public AddFolderMemberBuilder(DbxUserSharingRequests dbxUserSharingRequests, AddFolderMemberArg.Builder builder) {
        if (dbxUserSharingRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17674a = dbxUserSharingRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17675b = builder;
    }

    public void start() throws AddFolderMemberErrorException, DbxException {
        this.f17674a.m11536b(this.f17675b.build());
    }

    public AddFolderMemberBuilder withCustomMessage(String str) {
        this.f17675b.withCustomMessage(str);
        return this;
    }

    public AddFolderMemberBuilder withQuiet(Boolean bool) {
        this.f17675b.withQuiet(bool);
        return this;
    }
}
