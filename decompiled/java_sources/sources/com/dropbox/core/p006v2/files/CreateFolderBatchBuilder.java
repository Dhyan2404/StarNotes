package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.files.CreateFolderBatchArg;

/* loaded from: classes4.dex */
public class CreateFolderBatchBuilder {

    /* renamed from: a */
    public final DbxUserFilesRequests f17056a;

    /* renamed from: b */
    public final CreateFolderBatchArg.Builder f17057b;

    public CreateFolderBatchBuilder(DbxUserFilesRequests dbxUserFilesRequests, CreateFolderBatchArg.Builder builder) {
        if (dbxUserFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17056a = dbxUserFilesRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17057b = builder;
    }

    public CreateFolderBatchLaunch start() throws DbxApiException, DbxException {
        return this.f17056a.m10670l(this.f17057b.build());
    }

    public CreateFolderBatchBuilder withAutorename(Boolean bool) {
        this.f17057b.withAutorename(bool);
        return this;
    }

    public CreateFolderBatchBuilder withForceAsync(Boolean bool) {
        this.f17057b.withForceAsync(bool);
        return this;
    }
}
