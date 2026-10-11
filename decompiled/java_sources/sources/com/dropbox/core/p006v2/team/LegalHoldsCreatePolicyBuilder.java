package com.dropbox.core.p006v2.team;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.team.LegalHoldsPolicyCreateArg;
import java.util.Date;

/* loaded from: classes4.dex */
public class LegalHoldsCreatePolicyBuilder {

    /* renamed from: a */
    public final DbxTeamTeamRequests f18264a;

    /* renamed from: b */
    public final LegalHoldsPolicyCreateArg.Builder f18265b;

    public LegalHoldsCreatePolicyBuilder(DbxTeamTeamRequests dbxTeamTeamRequests, LegalHoldsPolicyCreateArg.Builder builder) {
        if (dbxTeamTeamRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f18264a = dbxTeamTeamRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f18265b = builder;
    }

    public LegalHoldPolicy start() throws LegalHoldsPolicyCreateErrorException, DbxException {
        return this.f18264a.m12212p(this.f18265b.build());
    }

    public LegalHoldsCreatePolicyBuilder withDescription(String str) {
        this.f18265b.withDescription(str);
        return this;
    }

    public LegalHoldsCreatePolicyBuilder withEndDate(Date date) {
        this.f18265b.withEndDate(date);
        return this;
    }

    public LegalHoldsCreatePolicyBuilder withStartDate(Date date) {
        this.f18265b.withStartDate(date);
        return this;
    }
}
