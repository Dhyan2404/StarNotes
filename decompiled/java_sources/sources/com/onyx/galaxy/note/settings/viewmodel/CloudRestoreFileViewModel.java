package com.onyx.galaxy.note.settings.viewmodel;

import android.widget.TextView;
import androidx.lifecycle.MutableLiveData;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.CloudStorageManager;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.universal.editor.action.backup.EnsureCloudBackupDirCreateAction;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.action.TextChangeDebounceAction;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\r\u0018\u0000 C2\u00020\u0001:\u0001CB\u000f\u0012\u0006\u0010\"\u001a\u00020 ¢\u0006\u0004\bA\u0010BJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0002H\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0002H\u0002J\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\u0013\u001a\u00020\nH\u0002J\b\u0010\u0014\u001a\u00020\nH\u0002J\b\u0010\u0015\u001a\u00020\nH\u0002J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0017\u001a\u00020\u0004H\u0002J\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00020\fJ\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00020\fJ\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\fJ\u0006\u0010\u001c\u001a\u00020\u0004J\u000e\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001dR\u0014\u0010\"\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010!R#\u0010(\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110$0#8\u0006¢\u0006\f\n\u0004\b\u0006\u0010%\u001a\u0004\b&\u0010'R#\u0010*\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110$0#8\u0006¢\u0006\f\n\u0004\b\r\u0010%\u001a\u0004\b)\u0010'R\u001f\u0010,\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070#8\u0006¢\u0006\f\n\u0004\b\u0017\u0010%\u001a\u0004\b+\u0010'R\u0017\u00101\u001a\u00020-8\u0006¢\u0006\f\n\u0004\b\u000f\u0010.\u001a\u0004\b/\u00100R\u0018\u00104\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u00103R\u0018\u00106\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u00105R\u0016\u0010:\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0018\u0010=\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0016\u0010@\u001a\u00020\u001a8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b>\u0010?¨\u0006D"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "", "i", "j", "", "keyword", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "cloudFileQueryArgs", "Lio/reactivex/rxjava3/core/Observable;", C4921e.f26537n, "cloudFileListResult", "m", "e", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "d", C6998g.f39679a, C6999h.f39688c, C6997f.f39671c, C4921e.f26528e, "l", "loadInitDataList", "loadMoreDataList", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "ensureCloudStorageProvider", "dispose", "Landroid/widget/TextView;", "textView", "searchOnTextChange", "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", CouchFieldKey.KEY_PROVIDER, "Landroidx/lifecycle/MutableLiveData;", "", "Landroidx/lifecycle/MutableLiveData;", "getList", "()Landroidx/lifecycle/MutableLiveData;", "list", "getSearchList", "searchList", "getSearchKeyword", "searchKeyword", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "getCompositeDisposable", "()Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "Lio/reactivex/rxjava3/disposables/Disposable;", "Lio/reactivex/rxjava3/disposables/Disposable;", "searchDisposable", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "currentCursor", "", "p", "J", "currentOffset", "q", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "backupDirCloudFileBean", "r", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "baseCloudStorageProvider", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCloudRestoreFileViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudRestoreFileViewModel.kt\ncom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,212:1\n766#2:213\n857#2,2:214\n766#2:216\n857#2,2:217\n*S KotlinDebug\n*F\n+ 1 CloudRestoreFileViewModel.kt\ncom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel\n*L\n83#1:213\n83#1:214,2\n157#1:216\n157#1:217,2\n*E\n"})
/* loaded from: classes9.dex */
public final class CloudRestoreFileViewModel extends BaseViewModel {

    /* renamed from: s */
    public static final int f61786s = 50;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Provider provider;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<List<CloudFileBean>> list;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<List<CloudFileBean>> searchList;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<String> searchKeyword;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable compositeDisposable;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public Disposable searchDisposable;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public String currentCursor;

    /* renamed from: p, reason: from kotlin metadata */
    public long currentOffset;

    /* renamed from: q, reason: from kotlin metadata */
    @Nullable
    public CloudFileBean backupDirCloudFileBean;

    /* renamed from: r, reason: from kotlin metadata */
    public BaseCloudStorageProvider baseCloudStorageProvider;

    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.CloudRestoreFileViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C12740a<T> implements Consumer {
        public C12740a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CloudRestoreFileViewModel.this.backupDirCloudFileBean = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.CloudRestoreFileViewModel$b */
    /* loaded from: classes9.dex */
    public static final class C12741b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ CloudFileQueryArgs f61798e;

        public C12741b(CloudFileQueryArgs cloudFileQueryArgs) {
            this.f61798e = cloudFileQueryArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f61798e.setParentId(it2.getUniqueId());
        }
    }

    @SourceDebugExtension({"SMAP\nCloudRestoreFileViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudRestoreFileViewModel.kt\ncom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel$ensureCloudStorageProvider$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,212:1\n223#2,2:213\n*S KotlinDebug\n*F\n+ 1 CloudRestoreFileViewModel.kt\ncom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel$ensureCloudStorageProvider$1\n*L\n120#1:213,2\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.CloudRestoreFileViewModel$c */
    /* loaded from: classes9.dex */
    public static final class C12742c<T, R> implements Function {
        public C12742c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudStorageProvider apply(@NotNull List<? extends CloudStorageProvider> authProviders) {
            Intrinsics.checkNotNullParameter(authProviders, "authProviders");
            CloudRestoreFileViewModel cloudRestoreFileViewModel = CloudRestoreFileViewModel.this;
            for (CloudStorageProvider cloudStorageProvider : authProviders) {
                if (cloudStorageProvider.getProviderType() == cloudRestoreFileViewModel.provider) {
                    return cloudStorageProvider;
                }
            }
            throw new NoSuchElementException("Collection contains no element matching the predicate.");
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.CloudRestoreFileViewModel$d */
    /* loaded from: classes9.dex */
    public static final class C12743d<T, R> implements Function {

        /* renamed from: e */
        public static final C12743d<T, R> f61800e = new C12743d<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BaseCloudStorageProvider apply(@NotNull CloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return (BaseCloudStorageProvider) it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.CloudRestoreFileViewModel$e */
    /* loaded from: classes9.dex */
    public static final class C12744e<T> implements Consumer {
        public C12744e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CloudRestoreFileViewModel.this.baseCloudStorageProvider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.CloudRestoreFileViewModel$f */
    /* loaded from: classes9.dex */
    public static final class C12745f<T, R> implements Function {
        public C12745f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileListResult> apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CloudRestoreFileViewModel cloudRestoreFileViewModel = CloudRestoreFileViewModel.this;
            return cloudRestoreFileViewModel.m51192k(cloudRestoreFileViewModel.m51187f());
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.CloudRestoreFileViewModel$g */
    /* loaded from: classes9.dex */
    public static final class C12746g<T> implements Consumer {
        public C12746g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CloudFileListResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CloudRestoreFileViewModel.this.m51190i(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.CloudRestoreFileViewModel$h */
    /* loaded from: classes9.dex */
    public static final class C12747h<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ CloudFileQueryArgs f61805f;

        public C12747h(CloudFileQueryArgs cloudFileQueryArgs) {
            this.f61805f = cloudFileQueryArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileBean> apply(@NotNull CloudRestoreFileViewModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloudRestoreFileViewModel.this.m51185d(this.f61805f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.CloudRestoreFileViewModel$i */
    /* loaded from: classes9.dex */
    public static final class C12749i<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ CloudFileQueryArgs f61807f;

        public C12749i(CloudFileQueryArgs cloudFileQueryArgs) {
            this.f61807f = cloudFileQueryArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileListResult> apply(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BaseCloudStorageProvider baseCloudStorageProvider = CloudRestoreFileViewModel.this.baseCloudStorageProvider;
            if (baseCloudStorageProvider == null) {
                Intrinsics.throwUninitializedPropertyAccessException("baseCloudStorageProvider");
                baseCloudStorageProvider = null;
            }
            return baseCloudStorageProvider.fetchFileInfoList(this.f61807f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.CloudRestoreFileViewModel$j */
    /* loaded from: classes9.dex */
    public static final class C12750j<T> implements Consumer {
        public C12750j() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CloudFileListResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CloudRestoreFileViewModel.this.m51186e(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.CloudRestoreFileViewModel$k */
    /* loaded from: classes9.dex */
    public static final class C12751k<T> implements Consumer {
        public C12751k() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CloudFileListResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CloudRestoreFileViewModel.this.m51194m(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.CloudRestoreFileViewModel$l */
    /* loaded from: classes9.dex */
    public static final class C12752l<T, R> implements Function {
        public C12752l() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileListResult> apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CloudRestoreFileViewModel cloudRestoreFileViewModel = CloudRestoreFileViewModel.this;
            return cloudRestoreFileViewModel.m51192k(cloudRestoreFileViewModel.m51188g());
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.CloudRestoreFileViewModel$m */
    /* loaded from: classes9.dex */
    public static final class C12753m<T> implements Consumer {
        public C12753m() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CloudFileListResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CloudRestoreFileViewModel.this.m51191j(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.CloudRestoreFileViewModel$n */
    /* loaded from: classes9.dex */
    public static final class C12754n<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ CloudFileQueryArgs f61813f;

        public C12754n(CloudFileQueryArgs cloudFileQueryArgs) {
            this.f61813f = cloudFileQueryArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileBean> apply(@NotNull CloudRestoreFileViewModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloudRestoreFileViewModel.this.m51185d(this.f61813f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.CloudRestoreFileViewModel$o */
    /* loaded from: classes9.dex */
    public static final class C12755o<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ CloudFileQueryArgs f61815f;

        public C12755o(CloudFileQueryArgs cloudFileQueryArgs) {
            this.f61815f = cloudFileQueryArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileListResult> apply(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BaseCloudStorageProvider baseCloudStorageProvider = CloudRestoreFileViewModel.this.baseCloudStorageProvider;
            if (baseCloudStorageProvider == null) {
                Intrinsics.throwUninitializedPropertyAccessException("baseCloudStorageProvider");
                baseCloudStorageProvider = null;
            }
            return baseCloudStorageProvider.searchFileInfoList(this.f61815f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.CloudRestoreFileViewModel$p */
    /* loaded from: classes9.dex */
    public static final class C12756p<T> implements Consumer {
        public C12756p() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CloudFileListResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CloudRestoreFileViewModel.this.m51186e(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.CloudRestoreFileViewModel$q */
    /* loaded from: classes9.dex */
    public static final class C12757q<T> implements Consumer {
        public C12757q() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CloudFileListResult result) {
            Intrinsics.checkNotNullParameter(result, "result");
            if (result.isSuccessful()) {
                CloudRestoreFileViewModel.this.getSearchList().setValue(result.ensureList());
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.CloudRestoreFileViewModel$r */
    /* loaded from: classes9.dex */
    public static final class C12758r<T> implements Consumer {

        /* renamed from: e */
        public static final C12758r<T> f61818e = new C12758r<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.INSTANCE.show(C10651R.string.dialog_settings_drive_failed, true);
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.CloudRestoreFileViewModel$s */
    /* loaded from: classes9.dex */
    public static final class C12759s<T> implements Consumer {
        public C12759s() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            CharSequence trim;
            Intrinsics.checkNotNullParameter(it2, "it");
            CloudRestoreFileViewModel cloudRestoreFileViewModel = CloudRestoreFileViewModel.this;
            trim = StringsKt__StringsKt.trim((CharSequence) it2);
            cloudRestoreFileViewModel.m51195n(trim.toString());
        }
    }

    public CloudRestoreFileViewModel(@NotNull Provider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.provider = provider;
        this.list = new MutableLiveData<>();
        this.searchList = new MutableLiveData<>();
        this.searchKeyword = new MutableLiveData<>();
        this.compositeDisposable = new CompositeDisposable();
    }

    /* renamed from: d */
    public final Observable<CloudFileBean> m51185d(CloudFileQueryArgs cloudFileQueryArgs) {
        CloudFileBean cloudFileBean = this.backupDirCloudFileBean;
        if (cloudFileBean != null) {
            Intrinsics.checkNotNull(cloudFileBean);
            Observable<CloudFileBean> just = Observable.just(cloudFileBean);
            Intrinsics.checkNotNull(just);
            return just;
        }
        BaseCloudStorageProvider baseCloudStorageProvider = this.baseCloudStorageProvider;
        if (baseCloudStorageProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseCloudStorageProvider");
            baseCloudStorageProvider = null;
        }
        Observable<CloudFileBean> doOnNext = new EnsureCloudBackupDirCreateAction(baseCloudStorageProvider).build().doOnNext(new C12740a()).doOnNext(new C12741b(cloudFileQueryArgs));
        Intrinsics.checkNotNull(doOnNext);
        return doOnNext;
    }

    public final void dispose() {
        Disposable disposable = this.searchDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        this.compositeDisposable.dispose();
    }

    /* renamed from: e */
    public final void m51186e(CloudFileListResult cloudFileListResult) {
        List mutableList;
        boolean endsWith$default;
        List<CloudFileBean> ensureList = cloudFileListResult.ensureList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : ensureList) {
            String name = ((CloudFileBean) obj).getName();
            Intrinsics.checkNotNull(name);
            endsWith$default = StringsKt__StringsJVMKt.endsWith$default(name, CloudStorageConstants.YNOTE_TITLE_SUFFIX, false, 2, null);
            if (endsWith$default) {
                arrayList.add(obj);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        cloudFileListResult.setList(mutableList);
    }

    @NotNull
    public final Observable<BaseCloudStorageProvider> ensureCloudStorageProvider() {
        BaseCloudStorageProvider baseCloudStorageProvider = this.baseCloudStorageProvider;
        if (baseCloudStorageProvider == null) {
            Observable<BaseCloudStorageProvider> doOnNext = CloudStorageManager.INSTANCE.getOurInstance().getAuthProviders().map(new C12742c()).map(C12743d.f61800e).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12744e());
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            return doOnNext;
        }
        if (baseCloudStorageProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseCloudStorageProvider");
            baseCloudStorageProvider = null;
        }
        Observable<BaseCloudStorageProvider> just = Observable.just(baseCloudStorageProvider);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: f */
    public final CloudFileQueryArgs m51187f() {
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        BaseCloudStorageProvider baseCloudStorageProvider = this.baseCloudStorageProvider;
        if (baseCloudStorageProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseCloudStorageProvider");
            baseCloudStorageProvider = null;
        }
        cloudFileQueryArgs.setProvider(baseCloudStorageProvider.getProviderType().getTitle());
        cloudFileQueryArgs.setLimit(50);
        BaseCloudStorageProvider baseCloudStorageProvider2 = this.baseCloudStorageProvider;
        if (baseCloudStorageProvider2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseCloudStorageProvider");
            baseCloudStorageProvider2 = null;
        }
        cloudFileQueryArgs.setAccountId(baseCloudStorageProvider2.getAccountId());
        CloudFileBean cloudFileBean = this.backupDirCloudFileBean;
        cloudFileQueryArgs.setParentId(cloudFileBean != null ? cloudFileBean.getUniqueId() : null);
        cloudFileQueryArgs.setFetchPolicy(0);
        cloudFileQueryArgs.setSortBy(SortBy.UpdateAt);
        return cloudFileQueryArgs;
    }

    /* renamed from: g */
    public final CloudFileQueryArgs m51188g() {
        CloudFileQueryArgs m51187f = m51187f();
        m51187f.setCursor(this.currentCursor);
        m51187f.setOffset(this.currentOffset);
        return m51187f;
    }

    @NotNull
    public final CompositeDisposable getCompositeDisposable() {
        return this.compositeDisposable;
    }

    @NotNull
    public final MutableLiveData<List<CloudFileBean>> getList() {
        return this.list;
    }

    @NotNull
    public final MutableLiveData<String> getSearchKeyword() {
        return this.searchKeyword;
    }

    @NotNull
    public final MutableLiveData<List<CloudFileBean>> getSearchList() {
        return this.searchList;
    }

    /* renamed from: h */
    public final CloudFileQueryArgs m51189h() {
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        BaseCloudStorageProvider baseCloudStorageProvider = this.baseCloudStorageProvider;
        if (baseCloudStorageProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseCloudStorageProvider");
            baseCloudStorageProvider = null;
        }
        cloudFileQueryArgs.setProvider(baseCloudStorageProvider.getProviderType().getTitle());
        cloudFileQueryArgs.setLimit(50);
        BaseCloudStorageProvider baseCloudStorageProvider2 = this.baseCloudStorageProvider;
        if (baseCloudStorageProvider2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseCloudStorageProvider");
            baseCloudStorageProvider2 = null;
        }
        cloudFileQueryArgs.setAccountId(baseCloudStorageProvider2.getAccountId());
        CloudFileBean cloudFileBean = this.backupDirCloudFileBean;
        cloudFileQueryArgs.setParentId(cloudFileBean != null ? cloudFileBean.getUniqueId() : null);
        cloudFileQueryArgs.setFetchPolicy(0);
        cloudFileQueryArgs.setQuery(this.searchKeyword.getValue());
        return cloudFileQueryArgs;
    }

    /* renamed from: i */
    public final void m51190i(CloudFileListResult result) {
        if (result.isSuccessful()) {
            m51193l();
            m51196o(result);
            this.list.setValue(result.ensureList());
        }
    }

    /* renamed from: j */
    public final void m51191j(CloudFileListResult result) {
        List<CloudFileBean> mutableList;
        if (result.isSuccessful()) {
            m51196o(result);
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) CollectionKt.ensureList(this.list.getValue()));
            List<CloudFileBean> ensureList = result.ensureList();
            ArrayList arrayList = new ArrayList();
            for (Object obj : ensureList) {
                final CloudFileBean cloudFileBean = (CloudFileBean) obj;
                if (!CollectionKt.contains(mutableList, new Function1<CloudFileBean, Boolean>() { // from class: com.onyx.galaxy.note.settings.viewmodel.CloudRestoreFileViewModel$handleLoadMoreDataListResult$filterBeans$1$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull CloudFileBean it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return Boolean.valueOf(Intrinsics.areEqual(it2.getUniqueId(), CloudFileBean.this.getUniqueId()));
                    }
                })) {
                    arrayList.add(obj);
                }
            }
            mutableList.addAll(arrayList);
            this.list.setValue(mutableList);
        }
    }

    /* renamed from: k */
    public final Observable<CloudFileListResult> m51192k(CloudFileQueryArgs cloudFileQueryArgs) {
        Observable flatMap = Observable.just(this).flatMap(new C12747h(cloudFileQueryArgs));
        BaseCloudStorageProvider baseCloudStorageProvider = this.baseCloudStorageProvider;
        BaseCloudStorageProvider baseCloudStorageProvider2 = null;
        if (baseCloudStorageProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseCloudStorageProvider");
            baseCloudStorageProvider = null;
        }
        Observable flatMap2 = flatMap.observeOn(baseCloudStorageProvider.getObserveOn()).flatMap(new C12749i(cloudFileQueryArgs));
        BaseCloudStorageProvider baseCloudStorageProvider3 = this.baseCloudStorageProvider;
        if (baseCloudStorageProvider3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseCloudStorageProvider");
        } else {
            baseCloudStorageProvider2 = baseCloudStorageProvider3;
        }
        Observable<CloudFileListResult> observeOn = flatMap2.observeOn(baseCloudStorageProvider2.getObserveOn()).doOnNext(new C12750j()).doOnNext(new C12751k()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final void m51193l() {
        this.currentCursor = null;
        this.currentOffset = 0L;
    }

    @NotNull
    public final Observable<CloudFileListResult> loadInitDataList() {
        Observable<CloudFileListResult> doOnNext = ensureCloudStorageProvider().flatMap(new C12745f()).doOnNext(new C12746g());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @NotNull
    public final Observable<CloudFileListResult> loadMoreDataList() {
        Observable<CloudFileListResult> doOnNext = ensureCloudStorageProvider().flatMap(new C12752l()).doOnNext(new C12753m());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: m */
    public final void m51194m(CloudFileListResult cloudFileListResult) {
        BaseCloudStorageProvider baseCloudStorageProvider = this.baseCloudStorageProvider;
        if (baseCloudStorageProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseCloudStorageProvider");
            baseCloudStorageProvider = null;
        }
        baseCloudStorageProvider.getCloudStorageRecordProvider().saveCloudFiles(cloudFileListResult.ensureList());
    }

    /* renamed from: n */
    public final void m51195n(String keyword) {
        this.searchKeyword.setValue(keyword);
        if (keyword == null || keyword.length() == 0) {
            return;
        }
        CloudFileQueryArgs m51189h = m51189h();
        Disposable disposable = this.searchDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        this.searchDisposable = Observable.just(this).flatMap(new C12754n(m51189h)).flatMap(new C12755o(m51189h)).doOnNext(new C12756p()).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12757q()).doOnError(C12758r.f61818e).subscribe();
    }

    /* renamed from: o */
    public final void m51196o(CloudFileListResult result) {
        this.currentCursor = result.getCursor();
        this.currentOffset += result.getCount();
    }

    public final void searchOnTextChange(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "textView");
        Disposable subscribe = new TextChangeDebounceAction(textView, 0L, 2, null).build().subscribe(new C12759s());
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }
}
