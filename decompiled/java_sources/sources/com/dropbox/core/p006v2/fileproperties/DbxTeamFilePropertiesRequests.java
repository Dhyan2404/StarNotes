package com.dropbox.core.p006v2.fileproperties;

import com.dropbox.core.DbxException;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.p006v2.DbxRawClientV2;
import com.dropbox.core.p006v2.fileproperties.AddTemplateArg;
import com.dropbox.core.p006v2.fileproperties.AddTemplateResult;
import com.dropbox.core.p006v2.fileproperties.C2458c;
import com.dropbox.core.p006v2.fileproperties.GetTemplateArg;
import com.dropbox.core.p006v2.fileproperties.GetTemplateResult;
import com.dropbox.core.p006v2.fileproperties.ListTemplateResult;
import com.dropbox.core.p006v2.fileproperties.ModifyTemplateError;
import com.dropbox.core.p006v2.fileproperties.TemplateError;
import com.dropbox.core.p006v2.fileproperties.UpdateTemplateArg;
import com.dropbox.core.p006v2.fileproperties.UpdateTemplateResult;
import com.dropbox.core.stone.StoneSerializers;
import java.util.List;

/* loaded from: classes4.dex */
public class DbxTeamFilePropertiesRequests {

    /* renamed from: a */
    public final DbxRawClientV2 f16908a;

    public DbxTeamFilePropertiesRequests(DbxRawClientV2 dbxRawClientV2) {
        this.f16908a = dbxRawClientV2;
    }

    /* renamed from: a */
    public AddTemplateResult m10384a(AddTemplateArg addTemplateArg) throws ModifyTemplateErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16908a;
            return (AddTemplateResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/file_properties/templates/add_for_team", addTemplateArg, false, AddTemplateArg.Serializer.INSTANCE, AddTemplateResult.Serializer.INSTANCE, ModifyTemplateError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new ModifyTemplateErrorException("2/file_properties/templates/add_for_team", e.getRequestId(), e.getUserMessage(), (ModifyTemplateError) e.getErrorValue());
        }
    }

    /* renamed from: b */
    public GetTemplateResult m10385b(GetTemplateArg getTemplateArg) throws TemplateErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16908a;
            return (GetTemplateResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/file_properties/templates/get_for_team", getTemplateArg, false, GetTemplateArg.Serializer.INSTANCE, GetTemplateResult.Serializer.INSTANCE, TemplateError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new TemplateErrorException("2/file_properties/templates/get_for_team", e.getRequestId(), e.getUserMessage(), (TemplateError) e.getErrorValue());
        }
    }

    /* renamed from: c */
    public void m10386c(C2458c c2458c) throws TemplateErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16908a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/file_properties/templates/remove_for_team", c2458c, false, C2458c.a.f16974b, StoneSerializers.void_(), TemplateError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new TemplateErrorException("2/file_properties/templates/remove_for_team", e.getRequestId(), e.getUserMessage(), (TemplateError) e.getErrorValue());
        }
    }

    /* renamed from: d */
    public UpdateTemplateResult m10387d(UpdateTemplateArg updateTemplateArg) throws ModifyTemplateErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16908a;
            return (UpdateTemplateResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/file_properties/templates/update_for_team", updateTemplateArg, false, UpdateTemplateArg.Serializer.INSTANCE, UpdateTemplateResult.Serializer.INSTANCE, ModifyTemplateError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new ModifyTemplateErrorException("2/file_properties/templates/update_for_team", e.getRequestId(), e.getUserMessage(), (ModifyTemplateError) e.getErrorValue());
        }
    }

    public AddTemplateResult templatesAddForTeam(String str, String str2, List<PropertyFieldTemplate> list) throws ModifyTemplateErrorException, DbxException {
        return m10384a(new AddTemplateArg(str, str2, list));
    }

    public GetTemplateResult templatesGetForTeam(String str) throws TemplateErrorException, DbxException {
        return m10385b(new GetTemplateArg(str));
    }

    public ListTemplateResult templatesListForTeam() throws TemplateErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16908a;
            return (ListTemplateResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/file_properties/templates/list_for_team", null, false, StoneSerializers.void_(), ListTemplateResult.Serializer.INSTANCE, TemplateError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new TemplateErrorException("2/file_properties/templates/list_for_team", e.getRequestId(), e.getUserMessage(), (TemplateError) e.getErrorValue());
        }
    }

    public void templatesRemoveForTeam(String str) throws TemplateErrorException, DbxException {
        m10386c(new C2458c(str));
    }

    public UpdateTemplateResult templatesUpdateForTeam(String str) throws ModifyTemplateErrorException, DbxException {
        return m10387d(new UpdateTemplateArg(str));
    }

    public TemplatesUpdateForTeamBuilder templatesUpdateForTeamBuilder(String str) {
        return new TemplatesUpdateForTeamBuilder(this, UpdateTemplateArg.newBuilder(str));
    }
}
