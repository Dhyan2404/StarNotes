package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.sharing.ShareFolderArg;
import java.util.List;

/* loaded from: classes4.dex */
public class ShareFolderBuilder {

    /* renamed from: a */
    public final DbxUserSharingRequests f17938a;

    /* renamed from: b */
    public final ShareFolderArg.Builder f17939b;

    public ShareFolderBuilder(DbxUserSharingRequests dbxUserSharingRequests, ShareFolderArg.Builder builder) {
        if (dbxUserSharingRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17938a = dbxUserSharingRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17939b = builder;
    }

    public ShareFolderLaunch start() throws ShareFolderErrorException, DbxException {
        return this.f17938a.m11527J(this.f17939b.build());
    }

    public ShareFolderBuilder withAccessInheritance(AccessInheritance accessInheritance) {
        this.f17939b.withAccessInheritance(accessInheritance);
        return this;
    }

    public ShareFolderBuilder withAclUpdatePolicy(AclUpdatePolicy aclUpdatePolicy) {
        this.f17939b.withAclUpdatePolicy(aclUpdatePolicy);
        return this;
    }

    public ShareFolderBuilder withActions(List<FolderAction> list) {
        this.f17939b.withActions(list);
        return this;
    }

    public ShareFolderBuilder withForceAsync(Boolean bool) {
        this.f17939b.withForceAsync(bool);
        return this;
    }

    public ShareFolderBuilder withLinkSettings(LinkSettings linkSettings) {
        this.f17939b.withLinkSettings(linkSettings);
        return this;
    }

    public ShareFolderBuilder withMemberPolicy(MemberPolicy memberPolicy) {
        this.f17939b.withMemberPolicy(memberPolicy);
        return this;
    }

    public ShareFolderBuilder withSharedLinkPolicy(SharedLinkPolicy sharedLinkPolicy) {
        this.f17939b.withSharedLinkPolicy(sharedLinkPolicy);
        return this;
    }

    public ShareFolderBuilder withViewerInfoPolicy(ViewerInfoPolicy viewerInfoPolicy) {
        this.f17939b.withViewerInfoPolicy(viewerInfoPolicy);
        return this;
    }
}
