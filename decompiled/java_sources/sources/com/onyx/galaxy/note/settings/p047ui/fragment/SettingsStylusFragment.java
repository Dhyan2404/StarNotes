package com.onyx.galaxy.note.settings.p047ui.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ScrollView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.fragment.app.C1126e;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.data.utils.IntOption;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.universal.editor.config.QuicklyFunTypeConst;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.data.AppConfigManager;
import com.onyx.galaxy.note.databinding.FragmentSettingsStylusBinding;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.settings.data.SettingsStylusType;
import com.onyx.galaxy.note.settings.data.StylusFunType;
import com.onyx.galaxy.note.settings.p047ui.adapter.StylusFunctionAdapter;
import com.onyx.galaxy.note.settings.p047ui.fragment.SettingsStylusFragment;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b?\u0010@J$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\f\u001a\u00020\nH\u0002J\b\u0010\r\u001a\u00020\nH\u0002J \u0010\u0013\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010H\u0002J\b\u0010\u0014\u001a\u00020\nH\u0002J\b\u0010\u0015\u001a\u00020\nH\u0002J\b\u0010\u0016\u001a\u00020\nH\u0002J\b\u0010\u0017\u001a\u00020\nH\u0002J\b\u0010\u0018\u001a\u00020\u0010H\u0002J\u0018\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u0010H\u0002J\u0010\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u0010H\u0002R\"\u0010\u001f\u001a\u00020\u001e8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001b\u0010*\u001a\u00020%8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u0016\u0010.\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0016\u00100\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010-R\u0016\u00102\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u0010-R\u0016\u00104\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u0010-R\u0016\u00106\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u0010-R\u0016\u00108\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u0010-R\u0016\u0010:\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010-R\u0016\u0010>\u001a\u00020;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=¨\u0006A"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsStylusFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "", "y0", "z0", "B0", "", "titleName", "", "stylusFunTypeValue", "stylusKeyType", "P0", "N0", "L0", "x0", "M0", "O0", "Lcom/onyx/galaxy/note/settings/data/StylusFunType;", "stylusFunType", "Q0", "funType", "v0", "Lcom/onyx/galaxy/note/databinding/FragmentSettingsStylusBinding;", "binding", "Lcom/onyx/galaxy/note/databinding/FragmentSettingsStylusBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/FragmentSettingsStylusBinding;", "setBinding", "(Lcom/onyx/galaxy/note/databinding/FragmentSettingsStylusBinding;)V", "Lcom/onyx/galaxy/note/settings/ui/adapter/StylusFunctionAdapter;", "d1", "Lkotlin/Lazy;", "w0", "()Lcom/onyx/galaxy/note/settings/ui/adapter/StylusFunctionAdapter;", "stylusFunAdapter", "Lcom/onyx/android/sdk/data/utils/IntOption;", "e1", "Lcom/onyx/android/sdk/data/utils/IntOption;", "primaryClick", "f1", "secondaryClick", "g1", "doubleClick", "h1", "longPress", "i1", "pinch", "j1", "slideDown", "k1", "slideUp", "Lcom/onyx/galaxy/note/settings/data/SettingsStylusType;", "l1", "Lcom/onyx/galaxy/note/settings/data/SettingsStylusType;", "stylusType", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSettingsStylusFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsStylusFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsStylusFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,262:1\n256#2,2:263\n256#2,2:265\n256#2,2:267\n256#2,2:269\n*S KotlinDebug\n*F\n+ 1 SettingsStylusFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsStylusFragment\n*L\n155#1:263,2\n160#1:265,2\n161#1:267,2\n124#1:269,2\n*E\n"})
/* loaded from: classes9.dex */
public final class SettingsStylusFragment extends BaseFragment {
    public FragmentSettingsStylusBinding binding;

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy stylusFunAdapter;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public IntOption primaryClick;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public IntOption secondaryClick;

    /* renamed from: g1, reason: from kotlin metadata */
    @NotNull
    public IntOption doubleClick;

    /* renamed from: h1, reason: from kotlin metadata */
    @NotNull
    public IntOption longPress;

    /* renamed from: i1, reason: from kotlin metadata */
    @NotNull
    public IntOption pinch;

    /* renamed from: j1, reason: from kotlin metadata */
    @NotNull
    public IntOption slideDown;

    /* renamed from: k1, reason: from kotlin metadata */
    @NotNull
    public IntOption slideUp;

    /* renamed from: l1, reason: from kotlin metadata */
    @NotNull
    public SettingsStylusType stylusType;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SettingsStylusType.values().length];
            try {
                iArr[SettingsStylusType.STYLUS_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SettingsStylusType.STYLUS_BYD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public SettingsStylusFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<StylusFunctionAdapter>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsStylusFragment$stylusFunAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final StylusFunctionAdapter invoke() {
                return new StylusFunctionAdapter();
            }
        });
        this.stylusFunAdapter = lazy;
        NoteConfigManager noteConfigManager = NoteConfigManager.INSTANCE;
        this.primaryClick = NoteConfigManager.getQuicklyClickOption$default(noteConfigManager, "settings_stylus_primary_click", 0, 2, null);
        this.secondaryClick = NoteConfigManager.getQuicklyClickOption$default(noteConfigManager, "settings_stylus_secondary_click", 0, 2, null);
        this.doubleClick = NoteConfigManager.getQuicklyClickOption$default(noteConfigManager, "settings_stylus_double_click", 0, 2, null);
        this.longPress = NoteConfigManager.getQuicklyClickOption$default(noteConfigManager, QuicklyFunTypeConst.SETTINGS_STYLUS_LONG_PRESS, 0, 2, null);
        this.pinch = NoteConfigManager.getQuicklyClickOption$default(noteConfigManager, QuicklyFunTypeConst.SETTINGS_STYLUS_PINCH, 0, 2, null);
        this.slideDown = NoteConfigManager.getQuicklyClickOption$default(noteConfigManager, QuicklyFunTypeConst.SETTINGS_STYLUS_SLIDE_DOWN, 0, 2, null);
        this.slideUp = NoteConfigManager.getQuicklyClickOption$default(noteConfigManager, QuicklyFunTypeConst.SETTINGS_STYLUS_SLIDE_UP, 0, 2, null);
        this.stylusType = AppConfigManager.INSTANCE.getSettingsStylusType();
    }

    /* renamed from: A0 */
    public static final void m51100A0(SettingsStylusFragment this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            this$0.longPress.put(StylusFunType.SWITCH_ERASER.getType());
        } else {
            this$0.longPress.put(StylusFunType.CLOSE.getType());
        }
    }

    /* renamed from: C0 */
    public static final void m51101C0(SettingsStylusFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51125P0(this$0.getBinding().tvPrimaryClickName.getText().toString(), this$0.primaryClick.get(), 0);
    }

    /* renamed from: D0 */
    public static final void m51102D0(SettingsStylusFragment this$0, BaseQuickAdapter adapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        StylusFunType stylusFunType = (StylusFunType) adapter.getItem(i);
        if (stylusFunType != null) {
            this$0.m51126Q0(stylusFunType, this$0.m51128w0().getStylusKeyType());
            this$0.m51128w0().setSelectFun(stylusFunType.getType());
        }
    }

    /* renamed from: E0 */
    public static final void m51103E0(SettingsStylusFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51125P0(this$0.getBinding().tvSecondaryClickName.getText().toString(), this$0.secondaryClick.get(), 1);
    }

    /* renamed from: F0 */
    public static final void m51104F0(SettingsStylusFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51125P0(this$0.getBinding().tvStylusPenDoubleClickName.getText().toString(), this$0.doubleClick.get(), 2);
    }

    /* renamed from: G0 */
    public static final void m51105G0(SettingsStylusFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51125P0(this$0.getBinding().tvLongPressName.getText().toString(), this$0.m51124O0(), 3);
    }

    /* renamed from: H0 */
    public static final void m51106H0(SettingsStylusFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51125P0(this$0.getBinding().includePinchSlide.tvPinchName.getText().toString(), this$0.pinch.get(), 7);
    }

    /* renamed from: I0 */
    public static final void m51107I0(SettingsStylusFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51125P0(this$0.getBinding().includePinchSlide.tvSlideUpName.getText().toString(), this$0.slideUp.get(), 8);
    }

    /* renamed from: J0 */
    public static final void m51108J0(SettingsStylusFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51125P0(this$0.getBinding().includePinchSlide.tvSlideDownName.getText().toString(), this$0.slideDown.get(), 9);
    }

    /* renamed from: K0 */
    public static final void m51109K0(SettingsStylusFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TintConstraintLayout clStylusFunContainer = this$0.getBinding().includeStylusFun.clStylusFunContainer;
        Intrinsics.checkNotNullExpressionValue(clStylusFunContainer, "clStylusFunContainer");
        clStylusFunContainer.setVisibility(8);
    }

    /* renamed from: B0 */
    public final void m51120B0() {
        getBinding().primaryClickContainer.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ukm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsStylusFragment.m51101C0(SettingsStylusFragment.this, view);
            }
        });
        getBinding().secondaryClickContainer.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.vkm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsStylusFragment.m51103E0(SettingsStylusFragment.this, view);
            }
        });
        getBinding().doubleClickContainer.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.wkm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsStylusFragment.m51104F0(SettingsStylusFragment.this, view);
            }
        });
        getBinding().longPressContainer.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.xkm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsStylusFragment.m51105G0(SettingsStylusFragment.this, view);
            }
        });
        getBinding().includePinchSlide.pinchContainer.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ykm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsStylusFragment.m51106H0(SettingsStylusFragment.this, view);
            }
        });
        getBinding().includePinchSlide.slideUpContainer.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.zkm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsStylusFragment.m51107I0(SettingsStylusFragment.this, view);
            }
        });
        getBinding().includePinchSlide.slideDownContainer.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.alm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsStylusFragment.m51108J0(SettingsStylusFragment.this, view);
            }
        });
        getBinding().includeStylusFun.tvBack.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.blm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsStylusFragment.m51109K0(SettingsStylusFragment.this, view);
            }
        });
        m51128w0().setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.clm
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SettingsStylusFragment.m51102D0(SettingsStylusFragment.this, baseQuickAdapter, view, i);
            }
        });
    }

    /* renamed from: L0 */
    public final void m51121L0() {
        getBinding().includeSpecialDevice.switchLongPressEraser.setChecked(this.longPress.get() == StylusFunType.SWITCH_ERASER.getType());
    }

    /* renamed from: M0 */
    public final void m51122M0() {
        getBinding().tvPrimaryClickFun.setText(m51127v0(this.primaryClick.get()));
        getBinding().tvSecondaryClickFun.setText(m51127v0(this.secondaryClick.get()));
        getBinding().tvStylusPenDoubleClickFun.setText(m51127v0(this.doubleClick.get()));
        getBinding().tvStylusButtonLongPressFun.setText(m51127v0(m51124O0()));
        getBinding().includePinchSlide.tvPinchFun.setText(m51127v0(this.pinch.get()));
        getBinding().includePinchSlide.tvSlideUpFun.setText(m51127v0(this.slideUp.get()));
        getBinding().includePinchSlide.tvSlideDownFun.setText(m51127v0(this.slideDown.get()));
    }

    /* renamed from: N0 */
    public final void m51123N0() {
        ScrollView commonDeviceStylusContainer = getBinding().commonDeviceStylusContainer;
        Intrinsics.checkNotNullExpressionValue(commonDeviceStylusContainer, "commonDeviceStylusContainer");
        commonDeviceStylusContainer.setVisibility(this.stylusType == SettingsStylusType.STYLUS_NORMAL ? 0 : 8);
        LinearLayoutCompat stylusContainer = getBinding().includeSpecialDevice.stylusContainer;
        Intrinsics.checkNotNullExpressionValue(stylusContainer, "stylusContainer");
        stylusContainer.setVisibility(this.stylusType == SettingsStylusType.STYLUS_BYD ? 0 : 8);
        int i = WhenMappings.$EnumSwitchMapping$0[this.stylusType.ordinal()];
        if (i == 1) {
            m51129x0();
        } else {
            if (i != 2) {
                return;
            }
            m51121L0();
        }
    }

    /* renamed from: O0 */
    public final int m51124O0() {
        int i = this.longPress.get();
        if (i == -1 || i == 0) {
            return i;
        }
        this.longPress.put(-1);
        return -1;
    }

    /* renamed from: P0 */
    public final void m51125P0(String titleName, int stylusFunTypeValue, int stylusKeyType) {
        m51128w0().submitList(stylusKeyType != 3 ? (stylusKeyType == 7 || stylusKeyType == 8 || stylusKeyType == 9) ? StylusFunType.INSTANCE.getSwitchList() : CollectionsKt___CollectionsKt.toList(StylusFunType.INSTANCE.getStylusList()) : StylusFunType.INSTANCE.getLongPressList());
        m51128w0().setStylusKeyType(stylusKeyType);
        m51128w0().setSelectFun(stylusFunTypeValue);
        TintConstraintLayout clStylusFunContainer = getBinding().includeStylusFun.clStylusFunContainer;
        Intrinsics.checkNotNullExpressionValue(clStylusFunContainer, "clStylusFunContainer");
        clStylusFunContainer.setVisibility(0);
        getBinding().includeStylusFun.tvTitle.setText(titleName);
    }

    /* renamed from: Q0 */
    public final void m51126Q0(StylusFunType stylusFunType, int stylusKeyType) {
        if (stylusKeyType == 0) {
            this.primaryClick.put(stylusFunType.getType());
            getBinding().tvPrimaryClickFun.setText(getResources().getString(stylusFunType.getTitle()));
            return;
        }
        if (stylusKeyType == 1) {
            this.secondaryClick.put(stylusFunType.getType());
            getBinding().tvSecondaryClickFun.setText(getResources().getString(stylusFunType.getTitle()));
            return;
        }
        if (stylusKeyType == 2) {
            this.doubleClick.put(stylusFunType.getType());
            getBinding().tvStylusPenDoubleClickFun.setText(getResources().getString(stylusFunType.getTitle()));
            return;
        }
        if (stylusKeyType == 3) {
            this.longPress.put(stylusFunType.getType());
            getBinding().tvStylusButtonLongPressFun.setText(getResources().getString(stylusFunType.getTitle()));
            return;
        }
        if (stylusKeyType == 7) {
            this.pinch.put(stylusFunType.getType());
            getBinding().includePinchSlide.tvPinchFun.setText(getResources().getString(stylusFunType.getTitle()));
        } else if (stylusKeyType == 8) {
            this.slideUp.put(stylusFunType.getType());
            getBinding().includePinchSlide.tvSlideUpFun.setText(getResources().getString(stylusFunType.getTitle()));
        } else {
            if (stylusKeyType != 9) {
                return;
            }
            this.slideDown.put(stylusFunType.getType());
            getBinding().includePinchSlide.tvSlideDownFun.setText(getResources().getString(stylusFunType.getTitle()));
        }
    }

    @NotNull
    public final FragmentSettingsStylusBinding getBinding() {
        FragmentSettingsStylusBinding fragmentSettingsStylusBinding = this.binding;
        if (fragmentSettingsStylusBinding != null) {
            return fragmentSettingsStylusBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentSettingsStylusBinding inflate = FragmentSettingsStylusBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        setBinding(inflate);
        m51123N0();
        m51130y0();
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    public final void setBinding(@NotNull FragmentSettingsStylusBinding fragmentSettingsStylusBinding) {
        Intrinsics.checkNotNullParameter(fragmentSettingsStylusBinding, "<set-?>");
        this.binding = fragmentSettingsStylusBinding;
    }

    /* renamed from: v0 */
    public final String m51127v0(int funType) {
        int title;
        StylusFunType stylusFunType = StylusFunType.CLOSE;
        if (funType == stylusFunType.getType()) {
            title = stylusFunType.getTitle();
        } else {
            StylusFunType stylusFunType2 = StylusFunType.SWITCH_ERASER;
            if (funType == stylusFunType2.getType()) {
                title = stylusFunType2.getTitle();
            } else {
                StylusFunType stylusFunType3 = StylusFunType.SWITCH_PEN_BRUSH;
                if (funType == stylusFunType3.getType()) {
                    title = stylusFunType3.getTitle();
                } else {
                    StylusFunType stylusFunType4 = StylusFunType.SWITCH_TAPE_PEN;
                    if (funType == stylusFunType4.getType()) {
                        title = stylusFunType4.getTitle();
                    } else {
                        StylusFunType stylusFunType5 = StylusFunType.SWITCH_LAST_TOOL;
                        if (funType == stylusFunType5.getType()) {
                            title = stylusFunType5.getTitle();
                        } else {
                            StylusFunType stylusFunType6 = StylusFunType.SWITCH_COLOR;
                            if (funType == stylusFunType6.getType()) {
                                title = stylusFunType6.getTitle();
                            } else {
                                StylusFunType stylusFunType7 = StylusFunType.SWITCH_LASSO;
                                if (funType == stylusFunType7.getType()) {
                                    title = stylusFunType7.getTitle();
                                } else {
                                    StylusFunType stylusFunType8 = StylusFunType.SCREEN_SHOT;
                                    if (funType == stylusFunType8.getType()) {
                                        title = stylusFunType8.getTitle();
                                    } else {
                                        StylusFunType stylusFunType9 = StylusFunType.UN_DO;
                                        if (funType == stylusFunType9.getType()) {
                                            title = stylusFunType9.getTitle();
                                        } else {
                                            StylusFunType stylusFunType10 = StylusFunType.RE_DO;
                                            title = funType == stylusFunType10.getType() ? stylusFunType10.getTitle() : stylusFunType.getTitle();
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        String string = getResources().getString(title);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    /* renamed from: w0 */
    public final StylusFunctionAdapter m51128w0() {
        return (StylusFunctionAdapter) this.stylusFunAdapter.getValue();
    }

    /* renamed from: x0 */
    public final void m51129x0() {
        List list;
        getBinding().includeStylusFun.rlStylusFunList.setLayoutManager(new LinearLayoutManager(getContext()));
        getBinding().includeStylusFun.rlStylusFunList.setAdapter(m51128w0());
        StylusFunctionAdapter m51128w0 = m51128w0();
        list = CollectionsKt___CollectionsKt.toList(StylusFunType.INSTANCE.getStylusList());
        m51128w0.submitList(list);
        m51122M0();
    }

    /* renamed from: y0 */
    public final void m51130y0() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.stylusType.ordinal()];
        if (i == 1) {
            m51120B0();
        } else {
            if (i != 2) {
                return;
            }
            m51131z0();
        }
    }

    /* renamed from: z0 */
    public final void m51131z0() {
        getBinding().includeSpecialDevice.switchLongPressEraser.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.tkm
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsStylusFragment.m51100A0(SettingsStylusFragment.this, compoundButton, z);
            }
        });
    }
}
