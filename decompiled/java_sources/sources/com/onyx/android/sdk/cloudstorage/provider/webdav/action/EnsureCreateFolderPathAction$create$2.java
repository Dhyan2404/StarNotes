package com.onyx.android.sdk.cloudstorage.provider.webdav.action;

import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavUtils;
import com.onyx.android.sdk.cloudstorage.provider.webdav.action.EnsureCreateFolderPathAction$create$2;
import com.thegrizzlylabs.sardineandroid.DavResource;
import io.reactivex.rxjava3.functions.Function;
import java.util.Optional;
import java.util.function.Consumer;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes7.dex */
public final class EnsureCreateFolderPathAction$create$2<T, R> implements Function {

    /* renamed from: e */
    public final /* synthetic */ EnsureCreateFolderPathAction f41903e;

    public EnsureCreateFolderPathAction$create$2(EnsureCreateFolderPathAction ensureCreateFolderPathAction) {
        this.f41903e = ensureCreateFolderPathAction;
    }

    /* renamed from: c */
    public static final void m32828c(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    @Override // io.reactivex.rxjava3.functions.Function
    @NotNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final CloudFileBean apply(@NotNull Optional<DavResource> optionalDavResource) {
        Intrinsics.checkNotNullParameter(optionalDavResource, "optionalDavResource");
        final EnsureCreateFolderPathAction ensureCreateFolderPathAction = this.f41903e;
        final Function1<DavResource, Unit> function1 = new Function1<DavResource, Unit>() { // from class: com.onyx.android.sdk.cloudstorage.provider.webdav.action.EnsureCreateFolderPathAction$create$2.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DavResource davResource) {
                invoke2(davResource);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull DavResource davResource) {
                Intrinsics.checkNotNullParameter(davResource, "davResource");
                WebDavUtils.INSTANCE.resetFilePath(EnsureCreateFolderPathAction.this.webDavProvider.getCloudStorageRecordProvider(), davResource, EnsureCreateFolderPathAction.this.fileBean, EnsureCreateFolderPathAction.this.webDavProvider.getAccountId());
            }
        };
        optionalDavResource.ifPresent(new Consumer() { // from class: com.sunia.HTREnginev2.wqf
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                EnsureCreateFolderPathAction$create$2.m32828c(Function1.this, obj);
            }
        });
        return this.f41903e.fileBean;
    }
}
