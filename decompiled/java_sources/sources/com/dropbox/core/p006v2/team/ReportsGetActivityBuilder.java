package com.dropbox.core.p006v2.team;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.team.DateRange;
import java.util.Date;

/* loaded from: classes4.dex */
public class ReportsGetActivityBuilder {

    /* renamed from: a */
    public final DbxTeamTeamRequests f18427a;

    /* renamed from: b */
    public final DateRange.Builder f18428b;

    public ReportsGetActivityBuilder(DbxTeamTeamRequests dbxTeamTeamRequests, DateRange.Builder builder) {
        if (dbxTeamTeamRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f18427a = dbxTeamTeamRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f18428b = builder;
    }

    public GetActivityReport start() throws DateRangeErrorException, DbxException {
        return this.f18427a.m12195g0(this.f18428b.build());
    }

    public ReportsGetActivityBuilder withEndDate(Date date) {
        this.f18428b.withEndDate(date);
        return this;
    }

    public ReportsGetActivityBuilder withStartDate(Date date) {
        this.f18428b.withStartDate(date);
        return this;
    }
}
