package com.dropbox.core.p006v2.filerequests;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.filerequests.CreateFileRequestArgs;

/* loaded from: classes4.dex */
public class CreateBuilder {

    /* renamed from: a */
    public final DbxUserFileRequestsRequests f16978a;

    /* renamed from: b */
    public final CreateFileRequestArgs.Builder f16979b;

    public CreateBuilder(DbxUserFileRequestsRequests dbxUserFileRequestsRequests, CreateFileRequestArgs.Builder builder) {
        if (dbxUserFileRequestsRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f16978a = dbxUserFileRequestsRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f16979b = builder;
    }

    public FileRequest start() throws CreateFileRequestErrorException, DbxException {
        return this.f16978a.m10493a(this.f16979b.build());
    }

    public CreateBuilder withDeadline(FileRequestDeadline fileRequestDeadline) {
        this.f16979b.withDeadline(fileRequestDeadline);
        return this;
    }

    public CreateBuilder withOpen(Boolean bool) {
        this.f16979b.withOpen(bool);
        return this;
    }
}
