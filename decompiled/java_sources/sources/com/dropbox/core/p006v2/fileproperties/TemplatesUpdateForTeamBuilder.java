package com.dropbox.core.p006v2.fileproperties;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.fileproperties.UpdateTemplateArg;
import java.util.List;

/* loaded from: classes4.dex */
public class TemplatesUpdateForTeamBuilder {

    /* renamed from: a */
    public final DbxTeamFilePropertiesRequests f16959a;

    /* renamed from: b */
    public final UpdateTemplateArg.Builder f16960b;

    public TemplatesUpdateForTeamBuilder(DbxTeamFilePropertiesRequests dbxTeamFilePropertiesRequests, UpdateTemplateArg.Builder builder) {
        if (dbxTeamFilePropertiesRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f16959a = dbxTeamFilePropertiesRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f16960b = builder;
    }

    public UpdateTemplateResult start() throws ModifyTemplateErrorException, DbxException {
        return this.f16959a.m10387d(this.f16960b.build());
    }

    public TemplatesUpdateForTeamBuilder withAddFields(List<PropertyFieldTemplate> list) {
        this.f16960b.withAddFields(list);
        return this;
    }

    public TemplatesUpdateForTeamBuilder withDescription(String str) {
        this.f16960b.withDescription(str);
        return this;
    }

    public TemplatesUpdateForTeamBuilder withName(String str) {
        this.f16960b.withName(str);
        return this;
    }
}
