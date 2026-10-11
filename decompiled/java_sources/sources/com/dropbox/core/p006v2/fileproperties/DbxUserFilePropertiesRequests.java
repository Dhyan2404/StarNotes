package com.dropbox.core.p006v2.fileproperties;

import com.dropbox.core.DbxException;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.p006v2.DbxRawClientV2;
import com.dropbox.core.p006v2.fileproperties.AddPropertiesArg;
import com.dropbox.core.p006v2.fileproperties.AddPropertiesError;
import com.dropbox.core.p006v2.fileproperties.AddTemplateArg;
import com.dropbox.core.p006v2.fileproperties.AddTemplateResult;
import com.dropbox.core.p006v2.fileproperties.C2456a;
import com.dropbox.core.p006v2.fileproperties.C2457b;
import com.dropbox.core.p006v2.fileproperties.C2458c;
import com.dropbox.core.p006v2.fileproperties.GetTemplateArg;
import com.dropbox.core.p006v2.fileproperties.GetTemplateResult;
import com.dropbox.core.p006v2.fileproperties.InvalidPropertyGroupError;
import com.dropbox.core.p006v2.fileproperties.ListTemplateResult;
import com.dropbox.core.p006v2.fileproperties.ModifyTemplateError;
import com.dropbox.core.p006v2.fileproperties.OverwritePropertyGroupArg;
import com.dropbox.core.p006v2.fileproperties.PropertiesSearchContinueError;
import com.dropbox.core.p006v2.fileproperties.PropertiesSearchError;
import com.dropbox.core.p006v2.fileproperties.PropertiesSearchResult;
import com.dropbox.core.p006v2.fileproperties.RemovePropertiesArg;
import com.dropbox.core.p006v2.fileproperties.RemovePropertiesError;
import com.dropbox.core.p006v2.fileproperties.TemplateError;
import com.dropbox.core.p006v2.fileproperties.UpdatePropertiesArg;
import com.dropbox.core.p006v2.fileproperties.UpdatePropertiesError;
import com.dropbox.core.p006v2.fileproperties.UpdateTemplateArg;
import com.dropbox.core.p006v2.fileproperties.UpdateTemplateResult;
import com.dropbox.core.stone.StoneSerializers;
import java.util.List;

/* loaded from: classes4.dex */
public class DbxUserFilePropertiesRequests {

    /* renamed from: a */
    public final DbxRawClientV2 f16909a;

    public DbxUserFilePropertiesRequests(DbxRawClientV2 dbxRawClientV2) {
        this.f16909a = dbxRawClientV2;
    }

    /* renamed from: a */
    public void m10388a(AddPropertiesArg addPropertiesArg) throws AddPropertiesErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16909a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/file_properties/properties/add", addPropertiesArg, false, AddPropertiesArg.Serializer.INSTANCE, StoneSerializers.void_(), AddPropertiesError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new AddPropertiesErrorException("2/file_properties/properties/add", e.getRequestId(), e.getUserMessage(), (AddPropertiesError) e.getErrorValue());
        }
    }

    /* renamed from: b */
    public void m10389b(OverwritePropertyGroupArg overwritePropertyGroupArg) throws InvalidPropertyGroupErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16909a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/file_properties/properties/overwrite", overwritePropertyGroupArg, false, OverwritePropertyGroupArg.Serializer.INSTANCE, StoneSerializers.void_(), InvalidPropertyGroupError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new InvalidPropertyGroupErrorException("2/file_properties/properties/overwrite", e.getRequestId(), e.getUserMessage(), (InvalidPropertyGroupError) e.getErrorValue());
        }
    }

    /* renamed from: c */
    public void m10390c(RemovePropertiesArg removePropertiesArg) throws RemovePropertiesErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16909a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/file_properties/properties/remove", removePropertiesArg, false, RemovePropertiesArg.Serializer.INSTANCE, StoneSerializers.void_(), RemovePropertiesError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new RemovePropertiesErrorException("2/file_properties/properties/remove", e.getRequestId(), e.getUserMessage(), (RemovePropertiesError) e.getErrorValue());
        }
    }

    /* renamed from: d */
    public PropertiesSearchResult m10391d(C2456a c2456a) throws PropertiesSearchErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16909a;
            return (PropertiesSearchResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/file_properties/properties/search", c2456a, false, C2456a.a.f16970b, PropertiesSearchResult.C2443a.f16937b, PropertiesSearchError.C2438b.f16929b);
        } catch (DbxWrappedException e) {
            throw new PropertiesSearchErrorException("2/file_properties/properties/search", e.getRequestId(), e.getUserMessage(), (PropertiesSearchError) e.getErrorValue());
        }
    }

    /* renamed from: e */
    public PropertiesSearchResult m10392e(C2457b c2457b) throws PropertiesSearchContinueErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16909a;
            return (PropertiesSearchResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/file_properties/properties/search/continue", c2457b, false, C2457b.a.f16972b, PropertiesSearchResult.C2443a.f16937b, PropertiesSearchContinueError.C2436b.f16925b);
        } catch (DbxWrappedException e) {
            throw new PropertiesSearchContinueErrorException("2/file_properties/properties/search/continue", e.getRequestId(), e.getUserMessage(), (PropertiesSearchContinueError) e.getErrorValue());
        }
    }

    /* renamed from: f */
    public void m10393f(UpdatePropertiesArg updatePropertiesArg) throws UpdatePropertiesErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16909a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/file_properties/properties/update", updatePropertiesArg, false, UpdatePropertiesArg.Serializer.INSTANCE, StoneSerializers.void_(), UpdatePropertiesError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new UpdatePropertiesErrorException("2/file_properties/properties/update", e.getRequestId(), e.getUserMessage(), (UpdatePropertiesError) e.getErrorValue());
        }
    }

    /* renamed from: g */
    public AddTemplateResult m10394g(AddTemplateArg addTemplateArg) throws ModifyTemplateErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16909a;
            return (AddTemplateResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/file_properties/templates/add_for_user", addTemplateArg, false, AddTemplateArg.Serializer.INSTANCE, AddTemplateResult.Serializer.INSTANCE, ModifyTemplateError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new ModifyTemplateErrorException("2/file_properties/templates/add_for_user", e.getRequestId(), e.getUserMessage(), (ModifyTemplateError) e.getErrorValue());
        }
    }

    /* renamed from: h */
    public GetTemplateResult m10395h(GetTemplateArg getTemplateArg) throws TemplateErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16909a;
            return (GetTemplateResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/file_properties/templates/get_for_user", getTemplateArg, false, GetTemplateArg.Serializer.INSTANCE, GetTemplateResult.Serializer.INSTANCE, TemplateError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new TemplateErrorException("2/file_properties/templates/get_for_user", e.getRequestId(), e.getUserMessage(), (TemplateError) e.getErrorValue());
        }
    }

    /* renamed from: i */
    public void m10396i(C2458c c2458c) throws TemplateErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16909a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/file_properties/templates/remove_for_user", c2458c, false, C2458c.a.f16974b, StoneSerializers.void_(), TemplateError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new TemplateErrorException("2/file_properties/templates/remove_for_user", e.getRequestId(), e.getUserMessage(), (TemplateError) e.getErrorValue());
        }
    }

    /* renamed from: j */
    public UpdateTemplateResult m10397j(UpdateTemplateArg updateTemplateArg) throws ModifyTemplateErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16909a;
            return (UpdateTemplateResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/file_properties/templates/update_for_user", updateTemplateArg, false, UpdateTemplateArg.Serializer.INSTANCE, UpdateTemplateResult.Serializer.INSTANCE, ModifyTemplateError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new ModifyTemplateErrorException("2/file_properties/templates/update_for_user", e.getRequestId(), e.getUserMessage(), (ModifyTemplateError) e.getErrorValue());
        }
    }

    public void propertiesAdd(String str, List<PropertyGroup> list) throws AddPropertiesErrorException, DbxException {
        m10388a(new AddPropertiesArg(str, list));
    }

    public void propertiesOverwrite(String str, List<PropertyGroup> list) throws InvalidPropertyGroupErrorException, DbxException {
        m10389b(new OverwritePropertyGroupArg(str, list));
    }

    public void propertiesRemove(String str, List<String> list) throws RemovePropertiesErrorException, DbxException {
        m10390c(new RemovePropertiesArg(str, list));
    }

    public PropertiesSearchResult propertiesSearch(List<PropertiesSearchQuery> list) throws PropertiesSearchErrorException, DbxException {
        return m10391d(new C2456a(list));
    }

    public PropertiesSearchResult propertiesSearchContinue(String str) throws PropertiesSearchContinueErrorException, DbxException {
        return m10392e(new C2457b(str));
    }

    public void propertiesUpdate(String str, List<PropertyGroupUpdate> list) throws UpdatePropertiesErrorException, DbxException {
        m10393f(new UpdatePropertiesArg(str, list));
    }

    public AddTemplateResult templatesAddForUser(String str, String str2, List<PropertyFieldTemplate> list) throws ModifyTemplateErrorException, DbxException {
        return m10394g(new AddTemplateArg(str, str2, list));
    }

    public GetTemplateResult templatesGetForUser(String str) throws TemplateErrorException, DbxException {
        return m10395h(new GetTemplateArg(str));
    }

    public ListTemplateResult templatesListForUser() throws TemplateErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16909a;
            return (ListTemplateResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/file_properties/templates/list_for_user", null, false, StoneSerializers.void_(), ListTemplateResult.Serializer.INSTANCE, TemplateError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new TemplateErrorException("2/file_properties/templates/list_for_user", e.getRequestId(), e.getUserMessage(), (TemplateError) e.getErrorValue());
        }
    }

    public void templatesRemoveForUser(String str) throws TemplateErrorException, DbxException {
        m10396i(new C2458c(str));
    }

    public UpdateTemplateResult templatesUpdateForUser(String str) throws ModifyTemplateErrorException, DbxException {
        return m10397j(new UpdateTemplateArg(str));
    }

    public TemplatesUpdateForUserBuilder templatesUpdateForUserBuilder(String str) {
        return new TemplatesUpdateForUserBuilder(this, UpdateTemplateArg.newBuilder(str));
    }

    public PropertiesSearchResult propertiesSearch(List<PropertiesSearchQuery> list, TemplateFilter templateFilter) throws PropertiesSearchErrorException, DbxException {
        if (templateFilter != null) {
            return m10391d(new C2456a(list, templateFilter));
        }
        throw new IllegalArgumentException("Required value for 'templateFilter' is null");
    }
}
