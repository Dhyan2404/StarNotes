package com.onyx.galaxy.note.p048ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.LayoutEyesComfortSettingsBinding;
import com.onyx.galaxy.note.editor.view.adapter.GridItemDecoration;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarView;
import com.onyx.galaxy.note.p048ui.view.EyesComfortSettingLayout;
import com.onyx.galaxy.note.settings.p047ui.adapter.EyesComfortSettingsAdapter;
import com.onyx.galaxy.note.settings.utils.EyesComfortManager;
import com.onyx.galaxy.note.settings.utils.EyesComforterFactory;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016B\u001d\b\u0016\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0015\u0010\u0019B%\b\u0016\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u0015\u0010\u001cJ\u0006\u0010\u0003\u001a\u00020\u0002R\u001b\u0010\t\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;", "Landroid/widget/FrameLayout;", "", "initView", "Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;", "e", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;", "binding", "", "Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;", C6997f.f39671c, "Ljava/util/List;", "eyesComforterSettings", "Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;", C6998g.f39679a, "Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;", "eyesComfortSettingsAdapter", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class EyesComfortSettingLayout extends FrameLayout {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<EyesComforterFactory.EyesComforterSetting> eyesComforterSettings;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final EyesComfortSettingsAdapter eyesComfortSettingsAdapter;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EyesComfortSettingLayout(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: d */
    public static final void m51437d(EyesComfortSettingLayout this$0, EyesComfortSettingsAdapter this_apply, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        EyesComforterFactory.EyesComforterSetting eyesComforterSetting = this$0.eyesComforterSettings.get(i);
        EyesComfortManager.INSTANCE.switchSetting(eyesComforterSetting);
        this$0.getBinding().seekBarIntensity.setProgressValue(eyesComforterSetting.getIntensity());
        this_apply.setSelectSetting(eyesComforterSetting);
        this_apply.notifyDataSetChanged();
    }

    /* renamed from: e */
    public static final void m51438e(EyesComfortSettingLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBinding().seekBarIntensity.setProgressValue(this$0.getBinding().seekBarIntensity.getProgressValue() - 1);
    }

    /* renamed from: f */
    public static final void m51439f(EyesComfortSettingLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBinding().seekBarIntensity.setProgressValue(this$0.getBinding().seekBarIntensity.getProgressValue() + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LayoutEyesComfortSettingsBinding getBinding() {
        return (LayoutEyesComfortSettingsBinding) this.binding.getValue();
    }

    public final void initView() {
        final EyesComfortSettingsAdapter eyesComfortSettingsAdapter = this.eyesComfortSettingsAdapter;
        eyesComfortSettingsAdapter.submitList(this.eyesComforterSettings);
        EyesComfortManager eyesComfortManager = EyesComfortManager.INSTANCE;
        eyesComfortSettingsAdapter.setSelectSetting(eyesComfortManager.getCurrentSetting());
        eyesComfortSettingsAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.d7g
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                EyesComfortSettingLayout.m51437d(EyesComfortSettingLayout.this, eyesComfortSettingsAdapter, baseQuickAdapter, view, i);
            }
        });
        RecyclerView recyclerView = getBinding().rvSettings;
        recyclerView.setLayoutManager(new GridLayoutManager(recyclerView.getContext(), this.eyesComforterSettings.size()));
        int size = this.eyesComforterSettings.size();
        ResManager resManager = ResManager.INSTANCE;
        recyclerView.addItemDecoration(new GridItemDecoration(size, resManager.getDimens(C7384R.dimen.dp_8), resManager.getDimens(C7384R.dimen.dp_8)));
        recyclerView.setAdapter(this.eyesComfortSettingsAdapter);
        StickSeekBarView stickSeekBarView = getBinding().seekBarIntensity;
        stickSeekBarView.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.ui.view.EyesComfortSettingLayout$initView$3$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                LayoutEyesComfortSettingsBinding binding;
                EyesComfortManager.INSTANCE.setIntensity(f);
                String str = ((int) f) + ResManager.INSTANCE.getString(C10651R.string.unit_percent);
                binding = EyesComfortSettingLayout.this.getBinding();
                binding.tvIntensity.setText(str);
            }
        });
        stickSeekBarView.setProgress(eyesComfortManager.getCurrentSetting().getIntensity());
        getBinding().barMinus.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.e7g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EyesComfortSettingLayout.m51438e(EyesComfortSettingLayout.this, view);
            }
        });
        getBinding().barAdd.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.f7g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EyesComfortSettingLayout.m51439f(EyesComfortSettingLayout.this, view);
            }
        });
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EyesComfortSettingLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ EyesComfortSettingLayout(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EyesComfortSettingLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LayoutEyesComfortSettingsBinding>() { // from class: com.onyx.galaxy.note.ui.view.EyesComfortSettingLayout$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LayoutEyesComfortSettingsBinding invoke() {
                return LayoutEyesComfortSettingsBinding.inflate(LayoutInflater.from(EyesComfortSettingLayout.this.getContext()), EyesComfortSettingLayout.this, true);
            }
        });
        this.binding = lazy;
        this.eyesComforterSettings = EyesComforterFactory.INSTANCE.getSettings();
        this.eyesComfortSettingsAdapter = new EyesComfortSettingsAdapter();
        initView();
    }

    public /* synthetic */ EyesComfortSettingLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}
