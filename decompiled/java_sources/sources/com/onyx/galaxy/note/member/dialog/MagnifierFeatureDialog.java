package com.onyx.galaxy.note.member.dialog;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.DialogFragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.alibaba.fastjson2.TypeReference;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.GuideInfo;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.DialogKt;
import com.onyx.android.sdk.extension.RecyclerViewKt;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.databinding.DialogMagnifierFeatureBinding;
import com.onyx.galaxy.note.member.adapter.FeatureAdapter;
import com.onyx.galaxy.note.member.adapter.FeatureResourceAdapter;
import com.onyx.galaxy.note.member.data.Feature;
import com.onyx.galaxy.note.member.data.FeatureResource;
import com.onyx.galaxy.note.member.dialog.MagnifierFeatureDialog;
import com.onyx.galaxy.note.member.view.ChargeIndicatorView;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 ,2\u00020\u0001:\u0001,B\u0007¢\u0006\u0004\b*\u0010+J$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\r\u001a\u00020\u000bH\u0002J\b\u0010\u000e\u001a\u00020\u000bH\u0002J\b\u0010\u000f\u001a\u00020\u000bH\u0002J\b\u0010\u0010\u001a\u00020\u000bH\u0002J\u0010\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\b\u0010\u0014\u001a\u00020\u000bH\u0002R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u001c\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0018\u0010)\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(¨\u0006-"}, m61528d2 = {"Lcom/onyx/galaxy/note/member/dialog/MagnifierFeatureDialog;", "Landroidx/fragment/app/DialogFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "view", "", "onViewCreated", "z0", "x0", "u0", "w0", "", FirebaseAnalytics.Param.INDEX, "A0", "t0", "Lcom/onyx/galaxy/note/databinding/DialogMagnifierFeatureBinding;", "z1", "Lcom/onyx/galaxy/note/databinding/DialogMagnifierFeatureBinding;", "binding", "", "Lcom/onyx/android/sdk/data/common/data/GuideInfo;", "A1", "Ljava/util/List;", "guideInfoList", "Lcom/onyx/galaxy/note/member/adapter/FeatureAdapter;", "B1", "Lcom/onyx/galaxy/note/member/adapter/FeatureAdapter;", "featuresAdapter", "Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;", "C1", "Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;", "featuresResourceAdapter", "Lcom/onyx/galaxy/note/member/data/Feature;", "D1", "Lcom/onyx/galaxy/note/member/data/Feature;", "currentFeature", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMagnifierFeatureDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MagnifierFeatureDialog.kt\ncom/onyx/galaxy/note/member/dialog/MagnifierFeatureDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,135:1\n1603#2,9:136\n1855#2:145\n1856#2:147\n1612#2:148\n1#3:146\n*S KotlinDebug\n*F\n+ 1 MagnifierFeatureDialog.kt\ncom/onyx/galaxy/note/member/dialog/MagnifierFeatureDialog\n*L\n131#1:136,9\n131#1:145\n131#1:147\n131#1:148\n131#1:146\n*E\n"})
/* loaded from: classes9.dex */
public final class MagnifierFeatureDialog extends DialogFragment {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: A1, reason: from kotlin metadata */
    @NotNull
    public List<GuideInfo> guideInfoList;

    /* renamed from: B1, reason: from kotlin metadata */
    @NotNull
    public FeatureAdapter featuresAdapter;

    /* renamed from: C1, reason: from kotlin metadata */
    @NotNull
    public FeatureResourceAdapter featuresResourceAdapter;

    /* renamed from: D1, reason: from kotlin metadata */
    @Nullable
    public Feature currentFeature;

    /* renamed from: z1, reason: from kotlin metadata */
    public DialogMagnifierFeatureBinding binding;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/member/dialog/MagnifierFeatureDialog$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/galaxy/note/member/dialog/MagnifierFeatureDialog;", "guideInfoList", "", "Lcom/onyx/android/sdk/data/common/data/GuideInfo;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final MagnifierFeatureDialog create(@NotNull List<GuideInfo> guideInfoList) {
            Intrinsics.checkNotNullParameter(guideInfoList, "guideInfoList");
            MagnifierFeatureDialog magnifierFeatureDialog = new MagnifierFeatureDialog();
            Bundle bundle = new Bundle();
            bundle.putString("args", JSONUtils.INSTANCE.toJson(guideInfoList));
            magnifierFeatureDialog.setArguments(bundle);
            return magnifierFeatureDialog;
        }

        public Companion() {
        }
    }

    public MagnifierFeatureDialog() {
        List<GuideInfo> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.guideInfoList = emptyList;
        this.featuresAdapter = new FeatureAdapter();
        this.featuresResourceAdapter = new FeatureResourceAdapter();
    }

    /* renamed from: v0 */
    public static final void m50513v0(MagnifierFeatureDialog this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m50515A0(i);
    }

    /* renamed from: y0 */
    public static final void m50514y0(MagnifierFeatureDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: A0 */
    public final void m50515A0(int index) {
        Object orNull;
        orNull = CollectionsKt___CollectionsKt.getOrNull(this.guideInfoList, index);
        GuideInfo guideInfo = (GuideInfo) orNull;
        if (guideInfo == null) {
            return;
        }
        Feature fromGuideInfo = Feature.INSTANCE.fromGuideInfo(guideInfo);
        DialogMagnifierFeatureBinding dialogMagnifierFeatureBinding = this.binding;
        DialogMagnifierFeatureBinding dialogMagnifierFeatureBinding2 = null;
        if (dialogMagnifierFeatureBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogMagnifierFeatureBinding = null;
        }
        dialogMagnifierFeatureBinding.tvTitle.setText(fromGuideInfo.getTitle());
        DialogMagnifierFeatureBinding dialogMagnifierFeatureBinding3 = this.binding;
        if (dialogMagnifierFeatureBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogMagnifierFeatureBinding3 = null;
        }
        dialogMagnifierFeatureBinding3.tvContent.setText(guideInfo.getContent());
        this.featuresAdapter.updateSelected(index);
        this.featuresResourceAdapter.updateFeatureResource(fromGuideInfo);
        DialogMagnifierFeatureBinding dialogMagnifierFeatureBinding4 = this.binding;
        if (dialogMagnifierFeatureBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogMagnifierFeatureBinding4 = null;
        }
        dialogMagnifierFeatureBinding4.rvFeatureResource.setCurrentItem(0, true);
        DialogMagnifierFeatureBinding dialogMagnifierFeatureBinding5 = this.binding;
        if (dialogMagnifierFeatureBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogMagnifierFeatureBinding2 = dialogMagnifierFeatureBinding5;
        }
        ChargeIndicatorView chargeIndicatorView = dialogMagnifierFeatureBinding2.chargeIndicator;
        List<FeatureResource> resources = fromGuideInfo.getResources();
        chargeIndicatorView.updateIndicatorTotal(resources != null ? resources.size() : 0);
        this.currentFeature = fromGuideInfo;
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        DialogMagnifierFeatureBinding inflate = DialogMagnifierFeatureBinding.inflate(inflater, container, false);
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

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        Bundle arguments = getArguments();
        List<GuideInfo> list = (List) AnyKt.getOrElse(jSONUtils.parseObject(arguments != null ? arguments.getString("args") : null, new TypeReference<List<? extends GuideInfo>>() { // from class: com.onyx.galaxy.note.member.dialog.MagnifierFeatureDialog$onViewCreated$1
        }), (Function0<? extends Object>) new Function0<List<? extends GuideInfo>>() { // from class: com.onyx.galaxy.note.member.dialog.MagnifierFeatureDialog$onViewCreated$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final List<? extends GuideInfo> invoke() {
                List<? extends GuideInfo> emptyList;
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                return emptyList;
            }
        });
        this.guideInfoList = list;
        if (CollectionKt.isNullOrEmpty(list)) {
            dismiss();
            return;
        }
        m50520z0();
        m50519x0();
        m50516t0();
    }

    /* renamed from: t0 */
    public final void m50516t0() {
        List<GuideInfo> list = this.guideInfoList;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            String summary = ((GuideInfo) it2.next()).getSummary();
            if (summary != null) {
                arrayList.add(summary);
            }
        }
        this.featuresAdapter.addAll(arrayList);
        m50515A0(0);
    }

    /* renamed from: u0 */
    public final void m50517u0() {
        FeatureAdapter featureAdapter = new FeatureAdapter();
        this.featuresAdapter = featureAdapter;
        featureAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.a7j
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                MagnifierFeatureDialog.m50513v0(MagnifierFeatureDialog.this, baseQuickAdapter, view, i);
            }
        });
        DialogMagnifierFeatureBinding dialogMagnifierFeatureBinding = this.binding;
        DialogMagnifierFeatureBinding dialogMagnifierFeatureBinding2 = null;
        if (dialogMagnifierFeatureBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogMagnifierFeatureBinding = null;
        }
        dialogMagnifierFeatureBinding.rvFeatures.setAdapter(this.featuresAdapter);
        DialogMagnifierFeatureBinding dialogMagnifierFeatureBinding3 = this.binding;
        if (dialogMagnifierFeatureBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogMagnifierFeatureBinding3 = null;
        }
        RecyclerView rvFeatures = dialogMagnifierFeatureBinding3.rvFeatures;
        Intrinsics.checkNotNullExpressionValue(rvFeatures, "rvFeatures");
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        RecyclerViewKt.addMaterialItemDecoration$default(rvFeatures, requireContext, 0, ResManager.INSTANCE.getDimens(C7384R.dimen.dp_32), false, 8, null);
        DialogMagnifierFeatureBinding dialogMagnifierFeatureBinding4 = this.binding;
        if (dialogMagnifierFeatureBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogMagnifierFeatureBinding2 = dialogMagnifierFeatureBinding4;
        }
        dialogMagnifierFeatureBinding2.rvFeatures.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
    }

    /* renamed from: w0 */
    public final void m50518w0() {
        this.featuresResourceAdapter = new FeatureResourceAdapter();
        DialogMagnifierFeatureBinding dialogMagnifierFeatureBinding = this.binding;
        DialogMagnifierFeatureBinding dialogMagnifierFeatureBinding2 = null;
        if (dialogMagnifierFeatureBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogMagnifierFeatureBinding = null;
        }
        dialogMagnifierFeatureBinding.rvFeatureResource.setAdapter(this.featuresResourceAdapter);
        DialogMagnifierFeatureBinding dialogMagnifierFeatureBinding3 = this.binding;
        if (dialogMagnifierFeatureBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogMagnifierFeatureBinding2 = dialogMagnifierFeatureBinding3;
        }
        dialogMagnifierFeatureBinding2.rvFeatureResource.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.onyx.galaxy.note.member.dialog.MagnifierFeatureDialog$initFeatureResourceAdapter$1
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int position) {
                DialogMagnifierFeatureBinding dialogMagnifierFeatureBinding4;
                super.onPageSelected(position);
                dialogMagnifierFeatureBinding4 = MagnifierFeatureDialog.this.binding;
                if (dialogMagnifierFeatureBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogMagnifierFeatureBinding4 = null;
                }
                dialogMagnifierFeatureBinding4.chargeIndicator.updateSelectedIndex(position);
            }
        });
    }

    /* renamed from: x0 */
    public final void m50519x0() {
        m50517u0();
        m50518w0();
        DialogMagnifierFeatureBinding dialogMagnifierFeatureBinding = this.binding;
        if (dialogMagnifierFeatureBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogMagnifierFeatureBinding = null;
        }
        TintImageView ivClose = dialogMagnifierFeatureBinding.ivClose;
        Intrinsics.checkNotNullExpressionValue(ivClose, "ivClose");
        ViewKt.click$default(ivClose, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.b7j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MagnifierFeatureDialog.m50514y0(MagnifierFeatureDialog.this, view);
            }
        }, 1, null);
    }

    /* renamed from: z0 */
    public final void m50520z0() {
        Window window;
        Dialog dialog = getDialog();
        if (dialog != null) {
            DialogKt.setLayout(dialog, ResManager.INSTANCE.getDimens(C7384R.dimen.dp_560), -2);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window = dialog2.getWindow()) != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        setCancelable(false);
    }
}
