package com.onyx.galaxy.note.datarepository.p045ui;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.onyx.android.sdk.base.extension.DataBindingKt;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.DimenUtils;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.data.OpenDocArgs;
import com.onyx.android.sdk.universal.editor.events.app.ImportDocumentsCancelEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.NCreateNoteModelResultEvent;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.FragmentShareResourceBinding;
import com.onyx.galaxy.note.datarepository.action.CreateNoteListAction;
import com.onyx.galaxy.note.datarepository.bean.LibraryBean;
import com.onyx.galaxy.note.datarepository.bean.ShareResourceBean;
import com.onyx.galaxy.note.datarepository.bean.ShareResourceDownloadBean;
import com.onyx.galaxy.note.datarepository.download.ShareResourceManager;
import com.onyx.galaxy.note.datarepository.p045ui.ShareResourceFragment;
import com.onyx.galaxy.note.datarepository.view.adapter.ShareResourceAdapter;
import com.onyx.galaxy.note.datarepository.viewmodel.ShareResourceViewModel;
import com.onyx.galaxy.note.editor.handler.ProgressEventHandler;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleActivity;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b>\u0010?J$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\r\u001a\u00020\u000bH\u0016J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0007J\b\u0010\u0011\u001a\u00020\u000bH\u0002J\b\u0010\u0012\u001a\u00020\u000bH\u0002J\b\u0010\u0013\u001a\u00020\u000bH\u0002J\b\u0010\u0014\u001a\u00020\u000bH\u0002J\b\u0010\u0015\u001a\u00020\u000bH\u0002J\b\u0010\u0016\u001a\u00020\u000bH\u0002J\b\u0010\u0017\u001a\u00020\u000bH\u0002J\b\u0010\u0018\u001a\u00020\u000bH\u0002J\u0016\u0010\u001c\u001a\u00020\u000b2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019H\u0002J\u0016\u0010\u001f\u001a\u00020\u000b2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u0019H\u0002J\u0010\u0010!\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u001dH\u0002R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010)\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0016\u00105\u001a\u0002028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0016\u00107\u001a\u0002028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00104R\u001b\u0010=\u001a\u0002088BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<¨\u0006@"}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "view", "", "onViewCreated", "onDestroyView", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsCancelEvent;", NotificationCompat.CATEGORY_EVENT, "onImportDocumentsCancelEvent", "J0", "K0", "I0", "F0", "E0", "y0", "D0", "t0", "", "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;", "libraryList", "B0", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "notes", "u0", "note", "M0", "Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;", "d1", "Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;", "binding", "Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter;", "e1", "Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter;", "resourceAdapter", "Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;", "f1", "Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;", "data", "Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;", "g1", "Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;", "progressEventHandler", "", "h1", Constants.HASIDCALL_INDEX_SIG, "finishDownload", "i1", "startDownloaded", "Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;", "j1", "Lkotlin/Lazy;", "x0", "()Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;", "viewModel", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShareResourceFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShareResourceFragment.kt\ncom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment\n+ 2 JSONUtils.kt\ncom/onyx/android/sdk/data/utils/JSONUtils\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,257:1\n46#2:258\n256#3,2:259\n256#3,2:261\n256#3,2:263\n256#3,2:265\n256#3,2:267\n256#3,2:269\n256#3,2:271\n256#3,2:273\n256#3,2:275\n*S KotlinDebug\n*F\n+ 1 ShareResourceFragment.kt\ncom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment\n*L\n79#1:258\n167#1:259,2\n168#1:261,2\n181#1:263,2\n186#1:265,2\n188#1:267,2\n189#1:269,2\n201#1:271,2\n202#1:273,2\n210#1:275,2\n*E\n"})
/* loaded from: classes9.dex */
public final class ShareResourceFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    public FragmentShareResourceBinding binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public ShareResourceAdapter resourceAdapter = new ShareResourceAdapter();

    /* renamed from: f1, reason: from kotlin metadata */
    @Nullable
    public ShareResourceBean data;

    /* renamed from: g1, reason: from kotlin metadata */
    @Nullable
    public ProgressEventHandler progressEventHandler;

    /* renamed from: h1, reason: from kotlin metadata */
    public boolean finishDownload;

    /* renamed from: i1, reason: from kotlin metadata */
    public boolean startDownloaded;

    /* renamed from: j1, reason: from kotlin metadata */
    @NotNull
    public final Lazy viewModel;

    /* renamed from: com.onyx.galaxy.note.datarepository.ui.ShareResourceFragment$b */
    /* loaded from: classes9.dex */
    public static final class C11770b<T> implements Consumer {
        public C11770b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FragmentKt.finishActivity(ShareResourceFragment.this);
        }
    }

    public ShareResourceFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ShareResourceViewModel>() { // from class: com.onyx.galaxy.note.datarepository.ui.ShareResourceFragment$viewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ShareResourceViewModel invoke() {
                return (ShareResourceViewModel) FragmentKt.getViewModel(ShareResourceFragment.this, ShareResourceViewModel.class);
            }
        });
        this.viewModel = lazy;
    }

    /* renamed from: A0 */
    public static final void m45539A0(ShareResourceFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentKt.finishActivity(this$0);
    }

    /* renamed from: C0 */
    public static final void m45540C0(ShareResourceFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ProgressEventHandler progressEventHandler = this$0.progressEventHandler;
        if (progressEventHandler != null) {
            progressEventHandler.destroy();
        }
    }

    /* renamed from: G0 */
    public static final void m45541G0(ShareResourceFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m45566y0();
    }

    /* renamed from: H0 */
    public static final void m45542H0(ShareResourceFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentShareResourceBinding fragmentShareResourceBinding = this$0.binding;
        if (fragmentShareResourceBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentShareResourceBinding = null;
        }
        fragmentShareResourceBinding.tvImport.setEnabled(false);
        if (!this$0.finishDownload) {
            this$0.m45556D0();
            return;
        }
        ShareResourceBean shareResourceBean = this$0.data;
        Intrinsics.checkNotNull(shareResourceBean);
        this$0.m45555B0(shareResourceBean.getItems());
    }

    /* renamed from: L0 */
    public static final void m45543L0(ShareResourceFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentKt.finishActivity(this$0);
    }

    /* renamed from: v0 */
    public static final void m45552v0(ShareResourceFragment this$0, SyncNoteModel firstNote) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(firstNote, "$firstNote");
        this$0.m45562M0(firstNote);
        FragmentKt.finishActivity(this$0);
    }

    /* renamed from: w0 */
    public static final void m45553w0(ShareResourceFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentKt.finishActivity(this$0);
    }

    /* renamed from: z0 */
    public static final void m45554z0(ShareResourceFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentKt.finishActivity(this$0);
    }

    /* renamed from: B0 */
    public final void m45555B0(List<LibraryBean> libraryList) {
        if (this.progressEventHandler != null) {
            return;
        }
        FragmentShareResourceBinding fragmentShareResourceBinding = this.binding;
        if (fragmentShareResourceBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentShareResourceBinding = null;
        }
        TintLinearLayout llyContent = fragmentShareResourceBinding.llyContent;
        Intrinsics.checkNotNullExpressionValue(llyContent, "llyContent");
        llyContent.setVisibility(8);
        ProgressEventHandler progressEventHandler = this.progressEventHandler;
        if (progressEventHandler != null) {
            progressEventHandler.destroy();
        }
        EditorBundle docManagerBundle = DocCollectionBundle.INSTANCE.docManagerBundle();
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNull(requireActivity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        ProgressEventHandler progressEventHandler2 = new ProgressEventHandler((AppCompatActivity) requireActivity, docManagerBundle);
        this.progressEventHandler = progressEventHandler2;
        progressEventHandler2.disableToast();
        FragmentActivity requireActivity2 = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity2, "requireActivity(...)");
        Observable<List<? extends SyncNoteModel>> doFinally = new CreateNoteListAction(requireActivity2, libraryList, ShareResourceManager.INSTANCE.getShareResourceDirPath()).build().subscribeOn(AndroidSchedulers.mainThread()).doOnNext(new Consumer() { // from class: com.onyx.galaxy.note.datarepository.ui.ShareResourceFragment.a
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull List<? extends SyncNoteModel> p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                ShareResourceFragment.this.m45564u0(p0);
            }
        }).doOnError(new C11770b()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.lnm
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ShareResourceFragment.m45540C0(ShareResourceFragment.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        RxjavaKt.subscribeWithDefault$default(doFinally, null, null, null, 7, null);
    }

    /* renamed from: D0 */
    public final void m45556D0() {
        this.startDownloaded = true;
        FragmentShareResourceBinding fragmentShareResourceBinding = this.binding;
        FragmentShareResourceBinding fragmentShareResourceBinding2 = null;
        if (fragmentShareResourceBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentShareResourceBinding = null;
        }
        TintTextView tvImport = fragmentShareResourceBinding.tvImport;
        Intrinsics.checkNotNullExpressionValue(tvImport, "tvImport");
        tvImport.setVisibility(8);
        FragmentShareResourceBinding fragmentShareResourceBinding3 = this.binding;
        if (fragmentShareResourceBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentShareResourceBinding3 = null;
        }
        TintFrameLayout flyLoading = fragmentShareResourceBinding3.flyLoading;
        Intrinsics.checkNotNullExpressionValue(flyLoading, "flyLoading");
        flyLoading.setVisibility(0);
        FragmentShareResourceBinding fragmentShareResourceBinding4 = this.binding;
        if (fragmentShareResourceBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentShareResourceBinding2 = fragmentShareResourceBinding4;
        }
        Drawable background = fragmentShareResourceBinding2.ivLoading.getBackground();
        Intrinsics.checkNotNull(background, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable");
        ((AnimationDrawable) background).start();
        ShareResourceViewModel m45565x0 = m45565x0();
        ShareResourceBean shareResourceBean = this.data;
        Intrinsics.checkNotNull(shareResourceBean);
        m45565x0.startDownload(shareResourceBean, new Function1<ShareResourceDownloadBean, Unit>() { // from class: com.onyx.galaxy.note.datarepository.ui.ShareResourceFragment$handleDownload$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ShareResourceDownloadBean shareResourceDownloadBean) {
                invoke2(shareResourceDownloadBean);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ShareResourceDownloadBean it2) {
                ShareResourceAdapter shareResourceAdapter;
                Intrinsics.checkNotNullParameter(it2, "it");
                shareResourceAdapter = ShareResourceFragment.this.resourceAdapter;
                shareResourceAdapter.updateDownloadProgress(it2);
                if (it2.isDownloadFinished()) {
                    ShareResourceFragment.this.m45563t0();
                }
            }
        });
    }

    /* renamed from: E0 */
    public final void m45557E0() {
        ShareResourceBean shareResourceBean = this.data;
        if (shareResourceBean != null) {
            m45565x0().initData(shareResourceBean);
        }
        MutableLiveData<List<ShareResourceDownloadBean>> attachmentData = m45565x0().getAttachmentData();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        DataBindingKt.observeOnce(attachmentData, viewLifecycleOwner, new Function1<List<? extends ShareResourceDownloadBean>, Unit>() { // from class: com.onyx.galaxy.note.datarepository.ui.ShareResourceFragment$initData$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends ShareResourceDownloadBean> list) {
                invoke2((List<ShareResourceDownloadBean>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<ShareResourceDownloadBean> it2) {
                ShareResourceAdapter shareResourceAdapter;
                FragmentShareResourceBinding fragmentShareResourceBinding;
                FragmentShareResourceBinding fragmentShareResourceBinding2;
                Intrinsics.checkNotNullParameter(it2, "it");
                if (it2.isEmpty()) {
                    FragmentKt.finishActivity(ShareResourceFragment.this);
                    return;
                }
                shareResourceAdapter = ShareResourceFragment.this.resourceAdapter;
                shareResourceAdapter.submitList(it2);
                fragmentShareResourceBinding = ShareResourceFragment.this.binding;
                FragmentShareResourceBinding fragmentShareResourceBinding3 = null;
                if (fragmentShareResourceBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    fragmentShareResourceBinding = null;
                }
                fragmentShareResourceBinding.tvFileCount.setText(ResManager.INSTANCE.getString(C10651R.string.document_count, Integer.valueOf(it2.size())));
                fragmentShareResourceBinding2 = ShareResourceFragment.this.binding;
                if (fragmentShareResourceBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    fragmentShareResourceBinding3 = fragmentShareResourceBinding2;
                }
                TintTextView tvContentTips = fragmentShareResourceBinding3.tvContentTips;
                Intrinsics.checkNotNullExpressionValue(tvContentTips, "tvContentTips");
                tvContentTips.setVisibility(it2.size() > 4 ? 0 : 8);
            }
        });
    }

    /* renamed from: F0 */
    public final void m45558F0() {
        FragmentShareResourceBinding fragmentShareResourceBinding = this.binding;
        FragmentShareResourceBinding fragmentShareResourceBinding2 = null;
        if (fragmentShareResourceBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentShareResourceBinding = null;
        }
        TintTextView tvCancel = fragmentShareResourceBinding.tvCancel;
        Intrinsics.checkNotNullExpressionValue(tvCancel, "tvCancel");
        ViewKt.click$default(tvCancel, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.jnm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShareResourceFragment.m45541G0(ShareResourceFragment.this, view);
            }
        }, 1, null);
        FragmentShareResourceBinding fragmentShareResourceBinding3 = this.binding;
        if (fragmentShareResourceBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentShareResourceBinding2 = fragmentShareResourceBinding3;
        }
        TintTextView tvImport = fragmentShareResourceBinding2.tvImport;
        Intrinsics.checkNotNullExpressionValue(tvImport, "tvImport");
        ViewKt.click$default(tvImport, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.knm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShareResourceFragment.m45542H0(ShareResourceFragment.this, view);
            }
        }, 1, null);
    }

    /* renamed from: I0 */
    public final void m45559I0() {
        FragmentShareResourceBinding fragmentShareResourceBinding = this.binding;
        FragmentShareResourceBinding fragmentShareResourceBinding2 = null;
        if (fragmentShareResourceBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentShareResourceBinding = null;
        }
        fragmentShareResourceBinding.rvContent.setAdapter(this.resourceAdapter);
        FragmentShareResourceBinding fragmentShareResourceBinding3 = this.binding;
        if (fragmentShareResourceBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentShareResourceBinding2 = fragmentShareResourceBinding3;
        }
        fragmentShareResourceBinding2.rvContent.setLayoutManager(new LinearLayoutManager(getContext()));
    }

    /* renamed from: J0 */
    public final void m45560J0() {
        m45561K0();
        m45559I0();
    }

    /* renamed from: K0 */
    public final void m45561K0() {
        ResManager resManager = ResManager.INSTANCE;
        if (resManager.getDimens(C7384R.dimen.dp_400) > resManager.getScreenWidth()) {
            int screenWidth = (int) (resManager.getScreenWidth() - DimenUtils.INSTANCE.dp2PxFloat(30.0f));
            FragmentShareResourceBinding fragmentShareResourceBinding = this.binding;
            if (fragmentShareResourceBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentShareResourceBinding = null;
            }
            fragmentShareResourceBinding.llyContent.getLayoutParams().width = screenWidth;
        }
    }

    /* renamed from: M0 */
    public final void m45562M0(SyncNoteModel note) {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        Intent createStartIntent = NoteScribbleActivity.INSTANCE.createStartIntent(requireActivity, OpenDocArgs.INSTANCE.createFrom(note));
        createStartIntent.setFlags(67108864);
        requireActivity.startActivity(createStartIntent);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentShareResourceBinding inflate = FragmentShareResourceBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        EditorBundleKt.unregister(DocCollectionBundle.INSTANCE.docManagerBundle(), this);
        m45565x0().stopDownloadDisposable();
        super.onDestroyView();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onImportDocumentsCancelEvent(@NotNull ImportDocumentsCancelEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        FragmentShareResourceBinding fragmentShareResourceBinding = null;
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.import_canceled, false, 2, (Object) null);
        FragmentShareResourceBinding fragmentShareResourceBinding2 = this.binding;
        if (fragmentShareResourceBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentShareResourceBinding = fragmentShareResourceBinding2;
        }
        fragmentShareResourceBinding.getRoot().post(new Runnable() { // from class: com.sunia.HTREnginev2.mnm
            @Override // java.lang.Runnable
            public final void run() {
                ShareResourceFragment.m45543L0(ShareResourceFragment.this);
            }
        });
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Bundle arguments = getArguments();
        ShareResourceBean shareResourceBean = (ShareResourceBean) JSONUtils.INSTANCE.parseObject(arguments != null ? arguments.getString("args") : null, ShareResourceBean.class);
        this.data = shareResourceBean;
        if (shareResourceBean == null) {
            FragmentKt.finishActivity(this);
            return;
        }
        m45560J0();
        m45558F0();
        m45557E0();
        EditorBundleKt.register(DocCollectionBundle.INSTANCE.docManagerBundle(), this);
    }

    /* renamed from: t0 */
    public final void m45563t0() {
        FragmentShareResourceBinding fragmentShareResourceBinding = null;
        if (m45565x0().hasFailedDownloads()) {
            FragmentShareResourceBinding fragmentShareResourceBinding2 = this.binding;
            if (fragmentShareResourceBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentShareResourceBinding2 = null;
            }
            TintLinearLayout llyDownloadTips = fragmentShareResourceBinding2.llyDownloadTips;
            Intrinsics.checkNotNullExpressionValue(llyDownloadTips, "llyDownloadTips");
            llyDownloadTips.setVisibility(0);
            FragmentShareResourceBinding fragmentShareResourceBinding3 = this.binding;
            if (fragmentShareResourceBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentShareResourceBinding3 = null;
            }
            fragmentShareResourceBinding3.tvDownloadTips.setText(ResManager.INSTANCE.getString(C10651R.string.share_resource_download_fail_tips));
        }
        if (!m45565x0().isAllDownloadsFailed()) {
            if (m45565x0().isAllDownloadFinished()) {
                this.finishDownload = true;
                FragmentShareResourceBinding fragmentShareResourceBinding4 = this.binding;
                if (fragmentShareResourceBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    fragmentShareResourceBinding4 = null;
                }
                fragmentShareResourceBinding4.tvImport.setEnabled(true);
                FragmentShareResourceBinding fragmentShareResourceBinding5 = this.binding;
                if (fragmentShareResourceBinding5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    fragmentShareResourceBinding5 = null;
                }
                fragmentShareResourceBinding5.tvImport.setText(getString(C10651R.string.start_import));
                FragmentShareResourceBinding fragmentShareResourceBinding6 = this.binding;
                if (fragmentShareResourceBinding6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    fragmentShareResourceBinding6 = null;
                }
                TintFrameLayout flyLoading = fragmentShareResourceBinding6.flyLoading;
                Intrinsics.checkNotNullExpressionValue(flyLoading, "flyLoading");
                flyLoading.setVisibility(8);
                FragmentShareResourceBinding fragmentShareResourceBinding7 = this.binding;
                if (fragmentShareResourceBinding7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    fragmentShareResourceBinding = fragmentShareResourceBinding7;
                }
                TintTextView tvImport = fragmentShareResourceBinding.tvImport;
                Intrinsics.checkNotNullExpressionValue(tvImport, "tvImport");
                tvImport.setVisibility(0);
                return;
            }
            return;
        }
        this.finishDownload = true;
        FragmentShareResourceBinding fragmentShareResourceBinding8 = this.binding;
        if (fragmentShareResourceBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentShareResourceBinding8 = null;
        }
        TintLinearLayout llyDownloadTips2 = fragmentShareResourceBinding8.llyDownloadTips;
        Intrinsics.checkNotNullExpressionValue(llyDownloadTips2, "llyDownloadTips");
        llyDownloadTips2.setVisibility(0);
        FragmentShareResourceBinding fragmentShareResourceBinding9 = this.binding;
        if (fragmentShareResourceBinding9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentShareResourceBinding9 = null;
        }
        fragmentShareResourceBinding9.tvImport.setAlpha(0.3f);
        FragmentShareResourceBinding fragmentShareResourceBinding10 = this.binding;
        if (fragmentShareResourceBinding10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentShareResourceBinding10 = null;
        }
        TintFrameLayout flyLoading2 = fragmentShareResourceBinding10.flyLoading;
        Intrinsics.checkNotNullExpressionValue(flyLoading2, "flyLoading");
        flyLoading2.setVisibility(8);
        FragmentShareResourceBinding fragmentShareResourceBinding11 = this.binding;
        if (fragmentShareResourceBinding11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentShareResourceBinding11 = null;
        }
        TintTextView tvImport2 = fragmentShareResourceBinding11.tvImport;
        Intrinsics.checkNotNullExpressionValue(tvImport2, "tvImport");
        tvImport2.setVisibility(0);
        NetworkUtils networkUtils = NetworkUtils.INSTANCE;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        if (networkUtils.isNetworkConnected(requireContext)) {
            FragmentShareResourceBinding fragmentShareResourceBinding12 = this.binding;
            if (fragmentShareResourceBinding12 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentShareResourceBinding = fragmentShareResourceBinding12;
            }
            fragmentShareResourceBinding.tvDownloadTips.setText(ResManager.INSTANCE.getString(C10651R.string.share_resource_download_all_fail_tips));
            return;
        }
        FragmentShareResourceBinding fragmentShareResourceBinding13 = this.binding;
        if (fragmentShareResourceBinding13 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentShareResourceBinding = fragmentShareResourceBinding13;
        }
        fragmentShareResourceBinding.tvDownloadTips.setText(ResManager.INSTANCE.getString(C10651R.string.share_resource_network_tips));
    }

    /* renamed from: u0 */
    public final void m45564u0(List<? extends SyncNoteModel> notes) {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) notes);
        final SyncNoteModel syncNoteModel = (SyncNoteModel) firstOrNull;
        if (syncNoteModel == null) {
            return;
        }
        DocCollectionBundle.INSTANCE.postEvent(new NCreateNoteModelResultEvent(syncNoteModel));
        FragmentShareResourceBinding fragmentShareResourceBinding = null;
        if (notes.size() == 1) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.recovery_finish_title, false, 2, (Object) null);
            FragmentShareResourceBinding fragmentShareResourceBinding2 = this.binding;
            if (fragmentShareResourceBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentShareResourceBinding = fragmentShareResourceBinding2;
            }
            fragmentShareResourceBinding.getRoot().post(new Runnable() { // from class: com.sunia.HTREnginev2.fnm
                @Override // java.lang.Runnable
                public final void run() {
                    ShareResourceFragment.m45552v0(ShareResourceFragment.this, syncNoteModel);
                }
            });
            return;
        }
        ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) ResManager.INSTANCE.getString(C10651R.string.multi_library_import_success, Integer.valueOf(notes.size())), false, 2, (Object) null);
        FragmentShareResourceBinding fragmentShareResourceBinding3 = this.binding;
        if (fragmentShareResourceBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentShareResourceBinding = fragmentShareResourceBinding3;
        }
        fragmentShareResourceBinding.getRoot().post(new Runnable() { // from class: com.sunia.HTREnginev2.gnm
            @Override // java.lang.Runnable
            public final void run() {
                ShareResourceFragment.m45553w0(ShareResourceFragment.this);
            }
        });
    }

    /* renamed from: x0 */
    public final ShareResourceViewModel m45565x0() {
        return (ShareResourceViewModel) this.viewModel.getValue();
    }

    /* renamed from: y0 */
    public final void m45566y0() {
        if (!this.startDownloaded) {
            FragmentKt.finishActivity(this);
            return;
        }
        FragmentShareResourceBinding fragmentShareResourceBinding = null;
        if (!this.finishDownload) {
            ToastUtils toastUtils = ToastUtils.INSTANCE;
            FragmentActivity requireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
            ToastUtils.show$default(toastUtils, (Context) requireActivity, C10651R.string.cancel_download, false, 4, (Object) null);
            m45565x0().stopDownloadDisposable();
            FragmentShareResourceBinding fragmentShareResourceBinding2 = this.binding;
            if (fragmentShareResourceBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentShareResourceBinding = fragmentShareResourceBinding2;
            }
            fragmentShareResourceBinding.getRoot().post(new Runnable() { // from class: com.sunia.HTREnginev2.hnm
                @Override // java.lang.Runnable
                public final void run() {
                    ShareResourceFragment.m45554z0(ShareResourceFragment.this);
                }
            });
            return;
        }
        if (m45565x0().isAllDownloadsFailed()) {
            FragmentKt.finishActivity(this);
            return;
        }
        ToastUtils toastUtils2 = ToastUtils.INSTANCE;
        FragmentActivity requireActivity2 = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity2, "requireActivity(...)");
        ToastUtils.show$default(toastUtils2, (Context) requireActivity2, C10651R.string.import_canceled, false, 4, (Object) null);
        FragmentShareResourceBinding fragmentShareResourceBinding3 = this.binding;
        if (fragmentShareResourceBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentShareResourceBinding = fragmentShareResourceBinding3;
        }
        fragmentShareResourceBinding.getRoot().post(new Runnable() { // from class: com.sunia.HTREnginev2.inm
            @Override // java.lang.Runnable
            public final void run() {
                ShareResourceFragment.m45539A0(ShareResourceFragment.this);
            }
        });
    }
}
