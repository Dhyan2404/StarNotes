package com.dropbox.core.p006v2.team;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.team.DateRange;
import java.util.Date;

/* loaded from: classes4.dex */
public class ReportsGetStorageBuilder {

    /* renamed from: a */
    public final DbxTeamTeamRequests f18433a;

    /* renamed from: b */
    public final DateRange.Builder f18434b;

    public ReportsGetStorageBuilder(DbxTeamTeamRequests dbxTeamTeamRequests, DateRange.Builder builder) {
        if (dbxTeamTeamRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f18433a = dbxTeamTeamRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f18434b = builder;
    }

    public GetStorageReport start() throws DateRangeErrorException, DbxException {
        return this.f18433a.m12201j0(this.f18434b.build());
    }

    public ReportsGetStorageBuilder withEndDate(Date date) {
        this.f18434b.withEndDate(date);
        return this;
    }

    public ReportsGetStorageBuilder withStartDate(Date date) {
        this.f18434b.withStartDate(date);
        return this;
    }
}
