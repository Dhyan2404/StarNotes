package com.dropbox.core.p006v2.paper;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.paper.PaperFolderCreateArg;

/* loaded from: classes4.dex */
public class FoldersCreateBuilder {

    /* renamed from: a */
    public final DbxUserPaperRequests f17570a;

    /* renamed from: b */
    public final PaperFolderCreateArg.Builder f17571b;

    public FoldersCreateBuilder(DbxUserPaperRequests dbxUserPaperRequests, PaperFolderCreateArg.Builder builder) {
        if (dbxUserPaperRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17570a = dbxUserPaperRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17571b = builder;
    }

    public PaperFolderCreateResult start() throws PaperFolderCreateErrorException, DbxException {
        return this.f17570a.m11321q(this.f17571b.build());
    }

    public FoldersCreateBuilder withIsTeamFolder(Boolean bool) {
        this.f17571b.withIsTeamFolder(bool);
        return this;
    }

    public FoldersCreateBuilder withParentFolderId(String str) {
        this.f17571b.withParentFolderId(str);
        return this;
    }
}
