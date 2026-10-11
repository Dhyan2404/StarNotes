package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.fileproperties.TemplateFilterBase;
import com.dropbox.core.p006v2.files.AlphaGetMetadataArg;
import java.util.List;

/* loaded from: classes4.dex */
public class AlphaGetMetadataBuilder {

    /* renamed from: a */
    public final DbxUserFilesRequests f17033a;

    /* renamed from: b */
    public final AlphaGetMetadataArg.Builder f17034b;

    public AlphaGetMetadataBuilder(DbxUserFilesRequests dbxUserFilesRequests, AlphaGetMetadataArg.Builder builder) {
        if (dbxUserFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17033a = dbxUserFilesRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17034b = builder;
    }

    public Metadata start() throws AlphaGetMetadataErrorException, DbxException {
        return this.f17033a.m10650a(this.f17034b.build());
    }

    public AlphaGetMetadataBuilder withIncludeDeleted(Boolean bool) {
        this.f17034b.withIncludeDeleted(bool);
        return this;
    }

    public AlphaGetMetadataBuilder withIncludeHasExplicitSharedMembers(Boolean bool) {
        this.f17034b.withIncludeHasExplicitSharedMembers(bool);
        return this;
    }

    public AlphaGetMetadataBuilder withIncludeMediaInfo(Boolean bool) {
        this.f17034b.withIncludeMediaInfo(bool);
        return this;
    }

    public AlphaGetMetadataBuilder withIncludePropertyGroups(TemplateFilterBase templateFilterBase) {
        this.f17034b.withIncludePropertyGroups(templateFilterBase);
        return this;
    }

    public AlphaGetMetadataBuilder withIncludePropertyTemplates(List<String> list) {
        this.f17034b.withIncludePropertyTemplates(list);
        return this;
    }
}
