package com.dropbox.core.p006v2.filerequests;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.filerequests.UpdateFileRequestArgs;

/* loaded from: classes4.dex */
public class UpdateBuilder {

    /* renamed from: a */
    public final DbxUserFileRequestsRequests f17008a;

    /* renamed from: b */
    public final UpdateFileRequestArgs.Builder f17009b;

    public UpdateBuilder(DbxUserFileRequestsRequests dbxUserFileRequestsRequests, UpdateFileRequestArgs.Builder builder) {
        if (dbxUserFileRequestsRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17008a = dbxUserFileRequestsRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17009b = builder;
    }

    public FileRequest start() throws UpdateFileRequestErrorException, DbxException {
        return this.f17008a.m10498f(this.f17009b.build());
    }

    public UpdateBuilder withDeadline(UpdateFileRequestDeadline updateFileRequestDeadline) {
        this.f17009b.withDeadline(updateFileRequestDeadline);
        return this;
    }

    public UpdateBuilder withDestination(String str) {
        this.f17009b.withDestination(str);
        return this;
    }

    public UpdateBuilder withOpen(Boolean bool) {
        this.f17009b.withOpen(bool);
        return this;
    }

    public UpdateBuilder withTitle(String str) {
        this.f17009b.withTitle(str);
        return this;
    }
}
