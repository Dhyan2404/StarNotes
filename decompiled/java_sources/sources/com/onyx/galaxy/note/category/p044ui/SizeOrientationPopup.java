package com.onyx.galaxy.note.category.p044ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.RecyclerViewKt;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.p044ui.SizeOrientationPopup;
import com.onyx.galaxy.note.category.view.adapter.template.SizeFormatAdapter;
import com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupSizeOrientationBinding;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.commonv2.global.HWREngineConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010\u000f\u001a\u00020\u000b\u0012\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00020\u0010¢\u0006\u0004\b'\u0010(J\b\u0010\u0003\u001a\u00020\u0002H\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002R\u0017\u0010\u000f\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\u0003\u0010\f\u001a\u0004\b\r\u0010\u000eR \u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0019\u001a\u00020\u00148FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001b\u0010\u001d\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0004\u0010\u0016\u001a\u0004\b\u001b\u0010\u001cR\u001d\u0010$\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001e8\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#¨\u0006)"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/SizeOrientationPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "q", "t", "v", "", "orientation", GoogleApiAvailabilityLight.f29016b, HWREngineConstant.Constant.RES_ID, C4921e.f26528e, "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "getTemplateViewModel", "()Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "templateViewModel", "Lkotlin/Function1;", "r", "Lkotlin/jvm/functions/Function1;", "orientationCallback", "Lcom/onyx/galaxy/note/databinding/PopupSizeOrientationBinding;", "s", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/PopupSizeOrientationBinding;", "binding", "Lcom/onyx/galaxy/note/category/view/adapter/template/SizeFormatAdapter;", "p", "()Lcom/onyx/galaxy/note/category/view/adapter/template/SizeFormatAdapter;", "sizeAdapter", "", "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;", "u", "Ljava/util/List;", "getList", "()Ljava/util/List;", "list", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;Lkotlin/jvm/functions/Function1;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSizeOrientationPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SizeOrientationPopup.kt\ncom/onyx/galaxy/note/category/ui/SizeOrientationPopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,107:1\n256#2,2:108\n350#3,7:110\n1#4:117\n*S KotlinDebug\n*F\n+ 1 SizeOrientationPopup.kt\ncom/onyx/galaxy/note/category/ui/SizeOrientationPopup\n*L\n70#1:108,2\n87#1:110,7\n*E\n"})
/* loaded from: classes9.dex */
public final class SizeOrientationPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final NoteTemplateViewModel templateViewModel;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final Function1<Integer, Unit> orientationCallback;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final Lazy sizeAdapter;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final List<SizeFormat> list;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SizeOrientationPopup(@NotNull final Context context, @NotNull NoteTemplateViewModel templateViewModel, @NotNull Function1<? super Integer, Unit> orientationCallback) {
        super(context, null, 2, null);
        Lazy lazy;
        Lazy lazy2;
        ArrayList arrayListOf;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(templateViewModel, "templateViewModel");
        Intrinsics.checkNotNullParameter(orientationCallback, "orientationCallback");
        this.templateViewModel = templateViewModel;
        this.orientationCallback = orientationCallback;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupSizeOrientationBinding>() { // from class: com.onyx.galaxy.note.category.ui.SizeOrientationPopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupSizeOrientationBinding invoke() {
                PopupSizeOrientationBinding inflate = PopupSizeOrientationBinding.inflate(LayoutInflater.from(context));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<SizeFormatAdapter>() { // from class: com.onyx.galaxy.note.category.ui.SizeOrientationPopup$sizeAdapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SizeFormatAdapter invoke() {
                return new SizeFormatAdapter(SizeOrientationPopup.this.getTemplateViewModel());
            }
        });
        this.sizeAdapter = lazy2;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(SizeFormat.f45502A3, SizeFormat.f45503A4, SizeFormat.f45504A5, SizeFormat.f45505B3, SizeFormat.f45506B4, SizeFormat.f45507B5, SizeFormat.LETTER);
        this.list = arrayListOf;
        ConstraintLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m43868t();
        m43867q();
    }

    /* renamed from: r */
    public static final void m43861r(SizeOrientationPopup this$0, RadioGroup radioGroup, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int m43865o = this$0.m43865o(i);
        Integer value = this$0.templateViewModel.getOrientation().getValue();
        if (value != null && m43865o == value.intValue()) {
            return;
        }
        this$0.templateViewModel.getOrientation().setValue(Integer.valueOf(m43865o));
        this$0.orientationCallback.invoke(Integer.valueOf(m43865o));
    }

    /* renamed from: s */
    public static final void m43862s(SizeOrientationPopup this$0, BaseQuickAdapter adapter, View view, final int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        this$0.templateViewModel.getTemplateSize().setValue((SizeFormat) adapter.getItem(i));
        this$0.m43866p().notifyDataSetChanged();
        ViewKt.postSelf(this$0.getBinding().clSizeFormat, new Function1<RecyclerView, Unit>() { // from class: com.onyx.galaxy.note.category.ui.SizeOrientationPopup$initListener$2$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RecyclerView recyclerView) {
                invoke2(recyclerView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull RecyclerView it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                it2.scrollToPosition(i);
            }
        });
    }

    /* renamed from: u */
    public static final void m43863u(SizeOrientationPopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43869v();
    }

    @NotNull
    public final PopupSizeOrientationBinding getBinding() {
        return (PopupSizeOrientationBinding) this.binding.getValue();
    }

    @NotNull
    public final List<SizeFormat> getList() {
        return this.list;
    }

    @NotNull
    public final NoteTemplateViewModel getTemplateViewModel() {
        return this.templateViewModel;
    }

    /* renamed from: n */
    public final int m43864n(int orientation) {
        return Orientation.INSTANCE.isPortrait(orientation) ? C10651R.id.rb_orientation_vertical : C10651R.id.rb_orientation_horizontal;
    }

    /* renamed from: o */
    public final int m43865o(int resId) {
        return (resId == C10651R.id.rb_orientation_vertical ? Orientation.PORTRAIT : Orientation.LANDSCAPE).getValue();
    }

    /* renamed from: p */
    public final SizeFormatAdapter m43866p() {
        return (SizeFormatAdapter) this.sizeAdapter.getValue();
    }

    @SuppressLint({"NotifyDataSetChanged"})
    /* renamed from: q */
    public final void m43867q() {
        getBinding().rgOrientation.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.ftm
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                SizeOrientationPopup.m43861r(SizeOrientationPopup.this, radioGroup, i);
            }
        });
        m43866p().setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.gtm
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SizeOrientationPopup.m43862s(SizeOrientationPopup.this, baseQuickAdapter, view, i);
            }
        });
    }

    /* renamed from: t */
    public final void m43868t() {
        getBinding().rgOrientation.check(m43864n(this.templateViewModel.getOrientationSafely()));
        LinearLayout sizeFormatContainer = getBinding().sizeFormatContainer;
        Intrinsics.checkNotNullExpressionValue(sizeFormatContainer, "sizeFormatContainer");
        sizeFormatContainer.setVisibility(this.templateViewModel.getTemplateFragmentArgs().isChangeType() ^ true ? 0 : 8);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        linearLayoutManager.setOrientation(0);
        getBinding().clSizeFormat.setLayoutManager(linearLayoutManager);
        getBinding().clSizeFormat.setAdapter(m43866p());
        RecyclerView clSizeFormat = getBinding().clSizeFormat;
        Intrinsics.checkNotNullExpressionValue(clSizeFormat, "clSizeFormat");
        RecyclerViewKt.addMaterialItemDecoration$default(clSizeFormat, getContext(), 0, ResManager.INSTANCE.getDimens(C7384R.dimen.dp_8), false, 8, null);
        m43866p().submitList(this.list, new Runnable() { // from class: com.sunia.HTREnginev2.htm
            @Override // java.lang.Runnable
            public final void run() {
                SizeOrientationPopup.m43863u(SizeOrientationPopup.this);
            }
        });
    }

    /* renamed from: v */
    public final void m43869v() {
        Iterator<SizeFormat> it2 = this.list.iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            } else {
                if (this.templateViewModel.getTemplateSize().getValue() == it2.next()) {
                    break;
                } else {
                    i++;
                }
            }
        }
        Integer valueOf = Integer.valueOf(i);
        if (!(valueOf.intValue() > 0)) {
            valueOf = null;
        }
        if (valueOf != null) {
            int intValue = valueOf.intValue();
            RecyclerView clSizeFormat = getBinding().clSizeFormat;
            Intrinsics.checkNotNullExpressionValue(clSizeFormat, "clSizeFormat");
            RecyclerViewKt.scrollToPositionIfInVisible(clSizeFormat, intValue);
        }
    }
}
