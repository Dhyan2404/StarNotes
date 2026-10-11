package com.onyx.galaxy.note.editor.view.popup;

import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.DataBindingKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.extension.RecyclerViewKt;
import com.onyx.android.sdk.p039ui.LayoutParamRes;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModel;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModelExt;
import com.onyx.galaxy.note.category.event.OrientationChangedEvent;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.common.view.MaxHeightRecyclerView;
import com.onyx.galaxy.note.databinding.PopupInkFontListBinding;
import com.onyx.galaxy.note.editor.event.InkFontDownloadFailEvent;
import com.onyx.galaxy.note.editor.event.InkFontDownloadFinishEvent;
import com.onyx.galaxy.note.editor.event.InkFontDownloadingEvent;
import com.onyx.galaxy.note.editor.event.InkFontItemSelectedEvent;
import com.onyx.galaxy.note.editor.view.adapter.InkFontListAdapter;
import com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0010¢\u0006\u0004\b \u0010!J\b\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\tH\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006\""}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/InkFontListPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "onShow", "Lcom/onyx/galaxy/note/category/event/OrientationChangedEvent;", NotificationCompat.CATEGORY_EVENT, "onOrientationChanged", "l", "m", "", C4921e.f26537n, GoogleApiAvailabilityLight.f29016b, "Landroidx/appcompat/app/AppCompatActivity;", "q", "Landroidx/appcompat/app/AppCompatActivity;", "activityContext", "Lcom/onyx/android/sdk/ui/LayoutParamRes;", "r", "Lcom/onyx/android/sdk/ui/LayoutParamRes;", "layoutParamRes", "Lcom/onyx/galaxy/note/databinding/PopupInkFontListBinding;", "s", "Lcom/onyx/galaxy/note/databinding/PopupInkFontListBinding;", "binding", "Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;", "t", "Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;", "viewModel", "Lcom/onyx/galaxy/note/editor/view/adapter/InkFontListAdapter;", "u", "Lcom/onyx/galaxy/note/editor/view/adapter/InkFontListAdapter;", "adapter", Constants.CONSTRUCTOR_NAME, "(Landroidx/appcompat/app/AppCompatActivity;Lcom/onyx/android/sdk/ui/LayoutParamRes;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nInkFontListPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InkFontListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/InkFontListPopup\n+ 2 DataBinding.kt\ncom/onyx/android/sdk/base/extension/DataBindingKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ListAdapterExt.kt\ncom/onyx/galaxy/note/utils/ListAdapterExtKt\n*L\n1#1,100:1\n64#2:101\n350#3,7:102\n1855#3,2:112\n1855#3,2:121\n1855#3,2:130\n19#4,3:109\n22#4,4:114\n19#4,3:118\n22#4,4:123\n19#4,3:127\n22#4,4:132\n*S KotlinDebug\n*F\n+ 1 InkFontListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/InkFontListPopup\n*L\n33#1:101\n55#1:102,7\n69#1:112,2\n76#1:121,2\n79#1:130,2\n69#1:109,3\n69#1:114,4\n76#1:118,3\n76#1:123,4\n79#1:127,3\n79#1:132,4\n*E\n"})
/* loaded from: classes9.dex */
public final class InkFontListPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final AppCompatActivity activityContext;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final LayoutParamRes layoutParamRes;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final PopupInkFontListBinding binding;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final InkBeautifyViewModel viewModel;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final InkFontListAdapter adapter;

    public /* synthetic */ InkFontListPopup(AppCompatActivity appCompatActivity, LayoutParamRes layoutParamRes, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(appCompatActivity, (i & 2) != 0 ? new LayoutParamRes() : layoutParamRes);
    }

    /* renamed from: k */
    public final void m48826k(final Object event) {
        if (isShowing()) {
            if (event instanceof InkFontDownloadingEvent) {
                InkFontListAdapter inkFontListAdapter = this.adapter;
                try {
                    Iterator<T> it2 = CollectionKt.indexesOf(inkFontListAdapter.getItems(), new Function1<FontModel, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.popup.InkFontListPopup$handleEvent$$inlined$notifyItemChangedSafely$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        @NotNull
                        public final Boolean invoke(@NotNull FontModel it3) {
                            Intrinsics.checkNotNullParameter(it3, "it");
                            return Boolean.valueOf(Intrinsics.areEqual(it3.getUniqueId(), ((InkFontDownloadingEvent) event).getModel().getUniqueId()));
                        }
                    }).iterator();
                    while (it2.hasNext()) {
                        inkFontListAdapter.notifyItemChanged(((Number) it2.next()).intValue());
                    }
                    return;
                } catch (Throwable unused) {
                    Debug.INSTANCE.m32037d("BaseQuickAdapter is detached");
                    return;
                }
            }
            if (event instanceof InkFontDownloadFinishEvent) {
                InkFontDownloadFinishEvent inkFontDownloadFinishEvent = (InkFontDownloadFinishEvent) event;
                if (Intrinsics.areEqual(inkFontDownloadFinishEvent.getModel().getUniqueId(), this.adapter.getSelectingFontId())) {
                    dismiss();
                    this.viewModel.selectFont(inkFontDownloadFinishEvent.getModel());
                }
                InkFontListAdapter inkFontListAdapter2 = this.adapter;
                try {
                    Iterator<T> it3 = CollectionKt.indexesOf(inkFontListAdapter2.getItems(), new Function1<FontModel, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.popup.InkFontListPopup$handleEvent$$inlined$notifyItemChangedSafely$2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        @NotNull
                        public final Boolean invoke(@NotNull FontModel it4) {
                            Intrinsics.checkNotNullParameter(it4, "it");
                            return Boolean.valueOf(Intrinsics.areEqual(it4.getUniqueId(), ((InkFontDownloadFinishEvent) event).getModel().getUniqueId()));
                        }
                    }).iterator();
                    while (it3.hasNext()) {
                        inkFontListAdapter2.notifyItemChanged(((Number) it3.next()).intValue());
                    }
                    return;
                } catch (Throwable unused2) {
                    Debug.INSTANCE.m32037d("BaseQuickAdapter is detached");
                    return;
                }
            }
            if (!(event instanceof InkFontDownloadFailEvent)) {
                if (event instanceof InkFontItemSelectedEvent) {
                    dismiss();
                    this.viewModel.saveLastUsedFont(FontModelExt.getSavePath$default(FontModelExt.INSTANCE, ((InkFontItemSelectedEvent) event).getModel(), null, 1, null));
                    return;
                }
                return;
            }
            InkFontListAdapter inkFontListAdapter3 = this.adapter;
            try {
                Iterator<T> it4 = CollectionKt.indexesOf(inkFontListAdapter3.getItems(), new Function1<FontModel, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.popup.InkFontListPopup$handleEvent$$inlined$notifyItemChangedSafely$3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull FontModel it5) {
                        Intrinsics.checkNotNullParameter(it5, "it");
                        return Boolean.valueOf(Intrinsics.areEqual(it5.getUniqueId(), ((InkFontDownloadFailEvent) event).getModel().getUniqueId()));
                    }
                }).iterator();
                while (it4.hasNext()) {
                    inkFontListAdapter3.notifyItemChanged(((Number) it4.next()).intValue());
                }
            } catch (Throwable unused3) {
                Debug.INSTANCE.m32037d("BaseQuickAdapter is detached");
            }
        }
    }

    /* renamed from: l */
    public final void m48827l() {
        this.binding.fontListView.setLayoutManager(new LinearLayoutManager(this.activityContext));
        this.binding.fontListView.setAdapter(this.adapter);
        this.adapter.setSelectingFontId(this.viewModel.getSelectedFont().getUniqueId());
        this.adapter.submitList(CollectionKt.copy(this.viewModel.getFontList()));
        Iterator<FontModel> it2 = this.viewModel.getFontList().iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            } else if (Intrinsics.areEqual(it2.next().getUniqueId(), this.adapter.getSelectingFontId())) {
                break;
            } else {
                i++;
            }
        }
        MaxHeightRecyclerView fontListView = this.binding.fontListView;
        Intrinsics.checkNotNullExpressionValue(fontListView, "fontListView");
        RecyclerViewKt.scrollToPositionSafely(fontListView, i);
    }

    /* renamed from: m */
    public final void m48828m() {
        DataBindingKt.observeOnce(this.viewModel.getEvent(), this, new InkFontListPopup$initViewModel$1(this));
    }

    /* renamed from: n */
    public final void m48829n() {
        if (this.layoutParamRes.getPopupWidthRes() != 0) {
            MaxHeightRecyclerView fontListView = this.binding.fontListView;
            Intrinsics.checkNotNullExpressionValue(fontListView, "fontListView");
            ViewKt.setLayoutParams(fontListView, new Function1<ViewGroup.LayoutParams, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.InkFontListPopup$updatePopupSize$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.LayoutParams layoutParams) {
                    invoke2(layoutParams);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull ViewGroup.LayoutParams setLayoutParams) {
                    LayoutParamRes layoutParamRes;
                    Intrinsics.checkNotNullParameter(setLayoutParams, "$this$setLayoutParams");
                    ResManager resManager = ResManager.INSTANCE;
                    layoutParamRes = InkFontListPopup.this.layoutParamRes;
                    setLayoutParams.width = resManager.getDimens(layoutParamRes.getPopupWidthRes());
                }
            });
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
        m48827l();
        m48828m();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InkFontListPopup(@NotNull AppCompatActivity activityContext, @NotNull LayoutParamRes layoutParamRes) {
        super(activityContext, null, 2, null);
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(layoutParamRes, "layoutParamRes");
        this.activityContext = activityContext;
        this.layoutParamRes = layoutParamRes;
        PopupInkFontListBinding inflate = PopupInkFontListBinding.inflate(activityContext.getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        InkBeautifyViewModel inkBeautifyViewModel = (InkBeautifyViewModel) new ViewModelProvider(activityContext).get(InkBeautifyViewModel.class);
        this.viewModel = inkBeautifyViewModel;
        this.adapter = new InkFontListAdapter(inkBeautifyViewModel);
        setOutsideTouchable(true);
        setFocusable(true);
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m48829n();
    }
}
