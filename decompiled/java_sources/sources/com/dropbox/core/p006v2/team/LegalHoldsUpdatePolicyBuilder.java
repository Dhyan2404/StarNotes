package com.dropbox.core.p006v2.team;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.team.LegalHoldsPolicyUpdateArg;
import java.util.List;

/* loaded from: classes4.dex */
public class LegalHoldsUpdatePolicyBuilder {

    /* renamed from: a */
    public final DbxTeamTeamRequests f18292a;

    /* renamed from: b */
    public final LegalHoldsPolicyUpdateArg.Builder f18293b;

    public LegalHoldsUpdatePolicyBuilder(DbxTeamTeamRequests dbxTeamTeamRequests, LegalHoldsPolicyUpdateArg.Builder builder) {
        if (dbxTeamTeamRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f18292a = dbxTeamTeamRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f18293b = builder;
    }

    public LegalHoldPolicy start() throws LegalHoldsPolicyUpdateErrorException, DbxException {
        return this.f18292a.m12223v(this.f18293b.build());
    }

    public LegalHoldsUpdatePolicyBuilder withDescription(String str) {
        this.f18293b.withDescription(str);
        return this;
    }

    public LegalHoldsUpdatePolicyBuilder withMembers(List<String> list) {
        this.f18293b.withMembers(list);
        return this;
    }

    public LegalHoldsUpdatePolicyBuilder withName(String str) {
        this.f18293b.withName(str);
        return this;
    }
}
