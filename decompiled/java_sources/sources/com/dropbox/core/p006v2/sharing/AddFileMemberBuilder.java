package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.sharing.AddFileMemberArgs;
import java.util.List;

/* loaded from: classes4.dex */
public class AddFileMemberBuilder {

    /* renamed from: a */
    public final DbxUserSharingRequests f17662a;

    /* renamed from: b */
    public final AddFileMemberArgs.Builder f17663b;

    public AddFileMemberBuilder(DbxUserSharingRequests dbxUserSharingRequests, AddFileMemberArgs.Builder builder) {
        if (dbxUserSharingRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17662a = dbxUserSharingRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17663b = builder;
    }

    public List<FileMemberActionResult> start() throws AddFileMemberErrorException, DbxException {
        return this.f17662a.m11535a(this.f17663b.build());
    }

    public AddFileMemberBuilder withAccessLevel(AccessLevel accessLevel) {
        this.f17663b.withAccessLevel(accessLevel);
        return this;
    }

    public AddFileMemberBuilder withAddMessageAsComment(Boolean bool) {
        this.f17663b.withAddMessageAsComment(bool);
        return this;
    }

    public AddFileMemberBuilder withCustomMessage(String str) {
        this.f17663b.withCustomMessage(str);
        return this;
    }

    public AddFileMemberBuilder withQuiet(Boolean bool) {
        this.f17663b.withQuiet(bool);
        return this;
    }
}
