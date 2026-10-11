package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.sharing.ListFilesArg;
import java.util.List;

/* loaded from: classes4.dex */
public class ListReceivedFilesBuilder {

    /* renamed from: a */
    public final DbxUserSharingRequests f17851a;

    /* renamed from: b */
    public final ListFilesArg.Builder f17852b;

    public ListReceivedFilesBuilder(DbxUserSharingRequests dbxUserSharingRequests, ListFilesArg.Builder builder) {
        if (dbxUserSharingRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17851a = dbxUserSharingRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17852b = builder;
    }

    public ListFilesResult start() throws SharingUserErrorException, DbxException {
        return this.f17851a.m11558x(this.f17852b.build());
    }

    public ListReceivedFilesBuilder withActions(List<FileAction> list) {
        this.f17852b.withActions(list);
        return this;
    }

    public ListReceivedFilesBuilder withLimit(Long l) {
        this.f17852b.withLimit(l);
        return this;
    }
}
