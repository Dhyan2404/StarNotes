package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.DataBindingKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.hwr.data.event.HWRLangDownloadEvent;
import com.onyx.android.sdk.replicator.note.p035db.model.HwrResourceModel;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.OrientationChangedEvent;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupInkFontListBinding;
import com.onyx.galaxy.note.editor.event.HwrResourceDownloadFailEvent;
import com.onyx.galaxy.note.editor.event.HwrResourceDownloadFinishEvent;
import com.onyx.galaxy.note.editor.event.HwrResourceSelectedEvent;
import com.onyx.galaxy.note.editor.view.adapter.HwrResourceListAdapter;
import com.onyx.galaxy.note.editor.viewmodel.SelectionHwrViewModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b\u001e\u0010\u001fJ\b\u0010\u0003\u001a\u00020\u0002H\u0014J\b\u0010\u0004\u001a\u00020\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0007J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\bH\u0007J\b\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\fH\u0002R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006 "}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/HwrResourceListPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "onShow", "onDismiss", "Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;", NotificationCompat.CATEGORY_EVENT, "onLangDownloadEvent", "Lcom/onyx/galaxy/note/category/event/OrientationChangedEvent;", "onOrientationChanged", "l", "m", "", C4921e.f26537n, "Landroid/content/Context;", "q", "Landroid/content/Context;", "uiContext", "Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;", "r", "Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;", "viewModel", "Lcom/onyx/galaxy/note/databinding/PopupInkFontListBinding;", "s", "Lcom/onyx/galaxy/note/databinding/PopupInkFontListBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;", "t", "Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;", "adapter", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHwrResourceListPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HwrResourceListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/HwrResourceListPopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ListAdapterExt.kt\ncom/onyx/galaxy/note/utils/ListAdapterExtKt\n*L\n1#1,93:1\n350#2,7:94\n1855#2,2:104\n19#3,3:101\n22#3,4:106\n*S KotlinDebug\n*F\n+ 1 HwrResourceListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/HwrResourceListPopup\n*L\n55#1:94,7\n86#1:104,2\n86#1:101,3\n86#1:106,4\n*E\n"})
/* loaded from: classes9.dex */
public final class HwrResourceListPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final Context uiContext;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final SelectionHwrViewModel viewModel;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final PopupInkFontListBinding binding;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final HwrResourceListAdapter adapter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HwrResourceListPopup(@NotNull Context uiContext, @NotNull SelectionHwrViewModel viewModel) {
        super(uiContext, null, 2, null);
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        this.uiContext = uiContext;
        this.viewModel = viewModel;
        PopupInkFontListBinding inflate = PopupInkFontListBinding.inflate(LayoutInflater.from(uiContext));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        this.adapter = new HwrResourceListAdapter(viewModel);
        setOutsideTouchable(true);
        setFocusable(true);
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
    }

    /* renamed from: k */
    public final void m48769k(Object event) {
        if (isShowing()) {
            if (event instanceof HwrResourceDownloadFinishEvent) {
                HwrResourceDownloadFinishEvent hwrResourceDownloadFinishEvent = (HwrResourceDownloadFinishEvent) event;
                if (Intrinsics.areEqual(hwrResourceDownloadFinishEvent.getModel().getLang(), this.viewModel.getSelectingLang())) {
                    this.viewModel.selectLang(hwrResourceDownloadFinishEvent.getModel().getLang());
                    return;
                }
                return;
            }
            if (event instanceof HwrResourceDownloadFailEvent) {
                ToastUtils.show$default(ToastUtils.INSTANCE, C7373R.string.network_error_tips, false, 2, (Object) null);
            } else if (event instanceof HwrResourceSelectedEvent) {
                dismiss();
            }
        }
    }

    /* renamed from: l */
    public final void m48770l() {
        this.binding.fontListView.setLayoutManager(new LinearLayoutManager(this.uiContext));
        this.binding.fontListView.setAdapter(this.adapter);
        this.adapter.submitList(CollectionKt.copy(this.viewModel.getHwrResourceModels()));
        Iterator<HwrResourceModel> it2 = this.viewModel.getHwrResourceModels().iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            } else if (Intrinsics.areEqual(it2.next().getLang(), this.viewModel.getSelectedLang())) {
                break;
            } else {
                i++;
            }
        }
        if (i >= 0) {
            this.binding.fontListView.scrollToPosition(i);
        }
    }

    /* renamed from: m */
    public final void m48771m() {
        DataBindingKt.observeOnce(this.viewModel.getEvent(), this, new HwrResourceListPopup$initViewModel$1(this));
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void onDismiss() {
        DocCollectionBundle.INSTANCE.hwrBundle().getEventBusHolder().unRegister(this);
        super.onDismiss();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onLangDownloadEvent(@NotNull final HWRLangDownloadEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        HwrResourceListAdapter hwrResourceListAdapter = this.adapter;
        try {
            Iterator<T> it2 = CollectionKt.indexesOf(hwrResourceListAdapter.getItems(), new Function1<HwrResourceModel, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.popup.HwrResourceListPopup$onLangDownloadEvent$$inlined$notifyItemChangedSafely$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull HwrResourceModel it3) {
                    Intrinsics.checkNotNullParameter(it3, "it");
                    return Boolean.valueOf(Intrinsics.areEqual(it3.getLang(), HWRLangDownloadEvent.this.getResource().getLang()));
                }
            }).iterator();
            while (it2.hasNext()) {
                hwrResourceListAdapter.notifyItemChanged(((Number) it2.next()).intValue());
            }
        } catch (Throwable unused) {
            Debug.INSTANCE.m32037d("BaseQuickAdapter is detached");
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onOrientationChanged(@NotNull OrientationChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        dismiss();
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void onShow() {
        super.onShow();
        m48770l();
        m48771m();
        DocCollectionBundle.INSTANCE.hwrBundle().getEventBusHolder().register(this);
    }
}
