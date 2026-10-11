package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.teamcommon.TimeRange;
import com.dropbox.core.p006v2.teamlog.GetTeamEventsArg;

/* loaded from: classes4.dex */
public class GetEventsBuilder {

    /* renamed from: a */
    public final DbxTeamTeamLogRequests f19891a;

    /* renamed from: b */
    public final GetTeamEventsArg.Builder f19892b;

    public GetEventsBuilder(DbxTeamTeamLogRequests dbxTeamTeamLogRequests, GetTeamEventsArg.Builder builder) {
        if (dbxTeamTeamLogRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f19891a = dbxTeamTeamLogRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f19892b = builder;
    }

    public GetTeamEventsResult start() throws GetTeamEventsErrorException, DbxException {
        return this.f19891a.m13206a(this.f19892b.build());
    }

    public GetEventsBuilder withAccountId(String str) {
        this.f19892b.withAccountId(str);
        return this;
    }

    public GetEventsBuilder withCategory(EventCategory eventCategory) {
        this.f19892b.withCategory(eventCategory);
        return this;
    }

    public GetEventsBuilder withEventType(EventTypeArg eventTypeArg) {
        this.f19892b.withEventType(eventTypeArg);
        return this;
    }

    public GetEventsBuilder withLimit(Long l) {
        this.f19892b.withLimit(l);
        return this;
    }

    public GetEventsBuilder withTime(TimeRange timeRange) {
        this.f19892b.withTime(timeRange);
        return this;
    }
}
