package com.dropbox.core.p006v2.team;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.team.DateRange;
import java.util.Date;

/* loaded from: classes4.dex */
public class ReportsGetMembershipBuilder {

    /* renamed from: a */
    public final DbxTeamTeamRequests f18431a;

    /* renamed from: b */
    public final DateRange.Builder f18432b;

    public ReportsGetMembershipBuilder(DbxTeamTeamRequests dbxTeamTeamRequests, DateRange.Builder builder) {
        if (dbxTeamTeamRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f18431a = dbxTeamTeamRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f18432b = builder;
    }

    public GetMembershipReport start() throws DateRangeErrorException, DbxException {
        return this.f18431a.m12199i0(this.f18432b.build());
    }

    public ReportsGetMembershipBuilder withEndDate(Date date) {
        this.f18432b.withEndDate(date);
        return this;
    }

    public ReportsGetMembershipBuilder withStartDate(Date date) {
        this.f18432b.withStartDate(date);
        return this;
    }
}
