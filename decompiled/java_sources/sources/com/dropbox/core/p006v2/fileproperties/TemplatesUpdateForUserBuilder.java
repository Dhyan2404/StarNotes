package com.dropbox.core.p006v2.fileproperties;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.fileproperties.UpdateTemplateArg;
import java.util.List;

/* loaded from: classes4.dex */
public class TemplatesUpdateForUserBuilder {

    /* renamed from: a */
    public final DbxUserFilePropertiesRequests f16961a;

    /* renamed from: b */
    public final UpdateTemplateArg.Builder f16962b;

    public TemplatesUpdateForUserBuilder(DbxUserFilePropertiesRequests dbxUserFilePropertiesRequests, UpdateTemplateArg.Builder builder) {
        if (dbxUserFilePropertiesRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f16961a = dbxUserFilePropertiesRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f16962b = builder;
    }

    public UpdateTemplateResult start() throws ModifyTemplateErrorException, DbxException {
        return this.f16961a.m10397j(this.f16962b.build());
    }

    public TemplatesUpdateForUserBuilder withAddFields(List<PropertyFieldTemplate> list) {
        this.f16962b.withAddFields(list);
        return this;
    }

    public TemplatesUpdateForUserBuilder withDescription(String str) {
        this.f16962b.withDescription(str);
        return this;
    }

    public TemplatesUpdateForUserBuilder withName(String str) {
        this.f16962b.withName(str);
        return this;
    }
}
