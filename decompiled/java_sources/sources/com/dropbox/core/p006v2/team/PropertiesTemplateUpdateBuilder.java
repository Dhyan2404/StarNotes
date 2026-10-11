package com.dropbox.core.p006v2.team;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.fileproperties.ModifyTemplateErrorException;
import com.dropbox.core.p006v2.fileproperties.PropertyFieldTemplate;
import com.dropbox.core.p006v2.fileproperties.UpdateTemplateArg;
import com.dropbox.core.p006v2.fileproperties.UpdateTemplateResult;
import java.util.List;

/* loaded from: classes4.dex */
public class PropertiesTemplateUpdateBuilder {

    /* renamed from: a */
    public final DbxTeamTeamRequests f18419a;

    /* renamed from: b */
    public final UpdateTemplateArg.Builder f18420b;

    public PropertiesTemplateUpdateBuilder(DbxTeamTeamRequests dbxTeamTeamRequests, UpdateTemplateArg.Builder builder) {
        if (dbxTeamTeamRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f18419a = dbxTeamTeamRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f18420b = builder;
    }

    public UpdateTemplateResult start() throws ModifyTemplateErrorException, DbxException {
        return this.f18419a.m12193f0(this.f18420b.build());
    }

    public PropertiesTemplateUpdateBuilder withAddFields(List<PropertyFieldTemplate> list) {
        this.f18420b.withAddFields(list);
        return this;
    }

    public PropertiesTemplateUpdateBuilder withDescription(String str) {
        this.f18420b.withDescription(str);
        return this;
    }

    public PropertiesTemplateUpdateBuilder withName(String str) {
        this.f18420b.withName(str);
        return this;
    }
}
