package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.DbxException;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.p006v2.DbxRawClientV2;
import com.dropbox.core.p006v2.teamlog.C4413a;
import com.dropbox.core.p006v2.teamlog.GetTeamEventsArg;
import com.dropbox.core.p006v2.teamlog.GetTeamEventsContinueError;
import com.dropbox.core.p006v2.teamlog.GetTeamEventsError;
import com.dropbox.core.p006v2.teamlog.GetTeamEventsResult;

/* loaded from: classes4.dex */
public class DbxTeamTeamLogRequests {

    /* renamed from: a */
    public final DbxRawClientV2 f18804a;

    public DbxTeamTeamLogRequests(DbxRawClientV2 dbxRawClientV2) {
        this.f18804a = dbxRawClientV2;
    }

    /* renamed from: a */
    public GetTeamEventsResult m13206a(GetTeamEventsArg getTeamEventsArg) throws GetTeamEventsErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18804a;
            return (GetTeamEventsResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team_log/get_events", getTeamEventsArg, false, GetTeamEventsArg.C3632a.f19898b, GetTeamEventsResult.C3637a.f19905b, GetTeamEventsError.C3636b.f19904b);
        } catch (DbxWrappedException e) {
            throw new GetTeamEventsErrorException("2/team_log/get_events", e.getRequestId(), e.getUserMessage(), (GetTeamEventsError) e.getErrorValue());
        }
    }

    /* renamed from: b */
    public GetTeamEventsResult m13207b(C4413a c4413a) throws GetTeamEventsContinueErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f18804a;
            return (GetTeamEventsResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/team_log/get_events/continue", c4413a, false, C4413a.a.f20708b, GetTeamEventsResult.C3637a.f19905b, GetTeamEventsContinueError.C3634b.f19902b);
        } catch (DbxWrappedException e) {
            throw new GetTeamEventsContinueErrorException("2/team_log/get_events/continue", e.getRequestId(), e.getUserMessage(), (GetTeamEventsContinueError) e.getErrorValue());
        }
    }

    public GetTeamEventsResult getEvents() throws GetTeamEventsErrorException, DbxException {
        return m13206a(new GetTeamEventsArg());
    }

    public GetEventsBuilder getEventsBuilder() {
        return new GetEventsBuilder(this, GetTeamEventsArg.m15342f());
    }

    public GetTeamEventsResult getEventsContinue(String str) throws GetTeamEventsContinueErrorException, DbxException {
        return m13207b(new C4413a(str));
    }
}
