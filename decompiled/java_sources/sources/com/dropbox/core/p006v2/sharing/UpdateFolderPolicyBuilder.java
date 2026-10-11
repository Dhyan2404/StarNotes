package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.sharing.UpdateFolderPolicyArg;
import java.util.List;

/* loaded from: classes4.dex */
public class UpdateFolderPolicyBuilder {

    /* renamed from: a */
    public final DbxUserSharingRequests f18024a;

    /* renamed from: b */
    public final UpdateFolderPolicyArg.Builder f18025b;

    public UpdateFolderPolicyBuilder(DbxUserSharingRequests dbxUserSharingRequests, UpdateFolderPolicyArg.Builder builder) {
        if (dbxUserSharingRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f18024a = dbxUserSharingRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f18025b = builder;
    }

    public SharedFolderMetadata start() throws UpdateFolderPolicyErrorException, DbxException {
        return this.f18024a.m11534Q(this.f18025b.build());
    }

    public UpdateFolderPolicyBuilder withAclUpdatePolicy(AclUpdatePolicy aclUpdatePolicy) {
        this.f18025b.withAclUpdatePolicy(aclUpdatePolicy);
        return this;
    }

    public UpdateFolderPolicyBuilder withActions(List<FolderAction> list) {
        this.f18025b.withActions(list);
        return this;
    }

    public UpdateFolderPolicyBuilder withLinkSettings(LinkSettings linkSettings) {
        this.f18025b.withLinkSettings(linkSettings);
        return this;
    }

    public UpdateFolderPolicyBuilder withMemberPolicy(MemberPolicy memberPolicy) {
        this.f18025b.withMemberPolicy(memberPolicy);
        return this;
    }

    public UpdateFolderPolicyBuilder withSharedLinkPolicy(SharedLinkPolicy sharedLinkPolicy) {
        this.f18025b.withSharedLinkPolicy(sharedLinkPolicy);
        return this;
    }

    public UpdateFolderPolicyBuilder withViewerInfoPolicy(ViewerInfoPolicy viewerInfoPolicy) {
        this.f18025b.withViewerInfoPolicy(viewerInfoPolicy);
        return this;
    }
}
