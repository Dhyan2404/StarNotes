package com.dropbox.core.p006v2.team;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.team.DateRange;
import java.util.Date;

/* loaded from: classes4.dex */
public class ReportsGetDevicesBuilder {

    /* renamed from: a */
    public final DbxTeamTeamRequests f18429a;

    /* renamed from: b */
    public final DateRange.Builder f18430b;

    public ReportsGetDevicesBuilder(DbxTeamTeamRequests dbxTeamTeamRequests, DateRange.Builder builder) {
        if (dbxTeamTeamRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f18429a = dbxTeamTeamRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f18430b = builder;
    }

    public GetDevicesReport start() throws DateRangeErrorException, DbxException {
        return this.f18429a.m12197h0(this.f18430b.build());
    }

    public ReportsGetDevicesBuilder withEndDate(Date date) {
        this.f18430b.withEndDate(date);
        return this;
    }

    public ReportsGetDevicesBuilder withStartDate(Date date) {
        this.f18430b.withStartDate(date);
        return this;
    }
}
