package com.dropbox.core.p006v2.clouddocs;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.clouddocs.RenameArg;

/* loaded from: classes4.dex */
public class RenameBuilder {

    /* renamed from: a */
    public final DbxUserCloudDocsRequests f16856a;

    /* renamed from: b */
    public final RenameArg.Builder f16857b;

    public RenameBuilder(DbxUserCloudDocsRequests dbxUserCloudDocsRequests, RenameArg.Builder builder) {
        if (dbxUserCloudDocsRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f16856a = dbxUserCloudDocsRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f16857b = builder;
    }

    public RenameResult start() throws RenameErrorException, DbxException {
        return this.f16856a.m10277d(this.f16857b.build());
    }

    public RenameBuilder withFileId(String str) {
        this.f16857b.withFileId(str);
        return this;
    }

    public RenameBuilder withTitle(String str) {
        this.f16857b.withTitle(str);
        return this;
    }
}
