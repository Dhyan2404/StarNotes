package com.onyx.galaxy.note.settings.p047ui.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.fragment.app.C1126e;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.data.utils.IntOption;
import com.onyx.android.sdk.rxgesture.palm.PalmGestureDetector;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.config.QuicklyFunTypeConst;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.FragmentSettingsGestureBinding;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.settings.data.StylusFunType;
import com.onyx.galaxy.note.settings.p047ui.adapter.StylusFunctionAdapter;
import com.onyx.galaxy.note.settings.p047ui.fragment.SettingsGestureFragment;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b2\u00103J$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\u000b\u001a\u00020\nH\u0002J \u0010\u0011\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0002J\b\u0010\u0012\u001a\u00020\nH\u0002J\b\u0010\u0013\u001a\u00020\nH\u0002J\u0018\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u000eH\u0002J\u0010\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u000eH\u0002R\"\u0010\u001a\u001a\u00020\u00198\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001b\u0010%\u001a\u00020 8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u0016\u0010)\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010+\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010(R\u0016\u0010-\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010(R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100¨\u00064"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsGestureFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "", "t0", "", "titleName", "", "stylusFunTypeValue", "stylusKeyType", "C0", "B0", "A0", "Lcom/onyx/galaxy/note/settings/data/StylusFunType;", "stylusFunType", "D0", "funType", "s0", "Lcom/onyx/galaxy/note/databinding/FragmentSettingsGestureBinding;", "binding", "Lcom/onyx/galaxy/note/databinding/FragmentSettingsGestureBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/FragmentSettingsGestureBinding;", "setBinding", "(Lcom/onyx/galaxy/note/databinding/FragmentSettingsGestureBinding;)V", "Lcom/onyx/galaxy/note/settings/ui/adapter/StylusFunctionAdapter;", "d1", "Lkotlin/Lazy;", "r0", "()Lcom/onyx/galaxy/note/settings/ui/adapter/StylusFunctionAdapter;", "fingerFunAdapter", "Lcom/onyx/android/sdk/data/utils/IntOption;", "e1", "Lcom/onyx/android/sdk/data/utils/IntOption;", "twoFingerClick", "f1", "threeFingerClick", "g1", "fingerDoubleClick", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "h1", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "palmRejection", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSettingsGestureFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsGestureFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsGestureFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,142:1\n256#2,2:143\n256#2,2:145\n*S KotlinDebug\n*F\n+ 1 SettingsGestureFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsGestureFragment\n*L\n88#1:143,2\n67#1:145,2\n*E\n"})
/* loaded from: classes9.dex */
public final class SettingsGestureFragment extends BaseFragment {
    public FragmentSettingsGestureBinding binding;

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy fingerFunAdapter;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public IntOption twoFingerClick;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public IntOption threeFingerClick;

    /* renamed from: g1, reason: from kotlin metadata */
    @NotNull
    public IntOption fingerDoubleClick;

    /* renamed from: h1, reason: from kotlin metadata */
    @NotNull
    public BooleanOption palmRejection;

    public SettingsGestureFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<StylusFunctionAdapter>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsGestureFragment$fingerFunAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final StylusFunctionAdapter invoke() {
                return new StylusFunctionAdapter();
            }
        });
        this.fingerFunAdapter = lazy;
        NoteConfigManager noteConfigManager = NoteConfigManager.INSTANCE;
        this.twoFingerClick = NoteConfigManager.getQuicklyClickOption$default(noteConfigManager, QuicklyFunTypeConst.SETTINGS_GESTURE_TWO_FINGER_CLICK, 0, 2, null);
        this.threeFingerClick = NoteConfigManager.getQuicklyClickOption$default(noteConfigManager, QuicklyFunTypeConst.SETTINGS_GESTURE_THREE_FINGER_CLICK, 0, 2, null);
        this.fingerDoubleClick = NoteConfigManager.getQuicklyClickOption$default(noteConfigManager, QuicklyFunTypeConst.SETTINGS_GESTURE_DOUBLE_CLICK, 0, 2, null);
        this.palmRejection = MMKVNote.INSTANCE.getPalmRejectionOption();
    }

    /* renamed from: u0 */
    public static final void m50957u0(SettingsGestureFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50965C0(this$0.getBinding().tvTwoFingerName.getText().toString(), this$0.twoFingerClick.get(), 4);
    }

    /* renamed from: v0 */
    public static final void m50958v0(SettingsGestureFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50965C0(this$0.getBinding().tvThreeFingerName.getText().toString(), this$0.threeFingerClick.get(), 5);
    }

    /* renamed from: w0 */
    public static final void m50959w0(SettingsGestureFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50965C0(this$0.getBinding().tvFingerDoubleClickName.getText().toString(), this$0.fingerDoubleClick.get(), 6);
    }

    /* renamed from: x0 */
    public static final void m50960x0(SettingsGestureFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TintConstraintLayout clStylusFunContainer = this$0.getBinding().includeFingerFun.clStylusFunContainer;
        Intrinsics.checkNotNullExpressionValue(clStylusFunContainer, "clStylusFunContainer");
        clStylusFunContainer.setVisibility(8);
    }

    /* renamed from: y0 */
    public static final void m50961y0(SettingsGestureFragment this$0, BaseQuickAdapter adapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        StylusFunType stylusFunType = (StylusFunType) adapter.getItem(i);
        if (stylusFunType != null) {
            this$0.m50966D0(stylusFunType, this$0.m50967r0().getStylusKeyType());
            this$0.m50967r0().setSelectFun(stylusFunType.getType());
        }
    }

    /* renamed from: z0 */
    public static final void m50962z0(SettingsGestureFragment this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.palmRejection.put(z);
        AppConfig.INSTANCE.setEnabledPalmReject(z);
        PalmGestureDetector.INSTANCE.getInstance().reset();
    }

    /* renamed from: A0 */
    public final void m50963A0() {
        getBinding().tvTowFingerClickFun.setText(m50968s0(this.twoFingerClick.get()));
        getBinding().tvThreeFingerClickFun.setText(m50968s0(this.threeFingerClick.get()));
        getBinding().tvFingerDoubleClickFun.setText(m50968s0(this.fingerDoubleClick.get()));
    }

    /* renamed from: B0 */
    public final void m50964B0() {
        List list;
        getBinding().includeFingerFun.rlStylusFunList.setLayoutManager(new LinearLayoutManager(getContext()));
        getBinding().includeFingerFun.rlStylusFunList.setAdapter(m50967r0());
        StylusFunctionAdapter m50967r0 = m50967r0();
        list = ArraysKt___ArraysKt.toList(StylusFunType.values());
        m50967r0.submitList(list);
        getBinding().switchPalmGesture.setChecked(this.palmRejection.get());
        m50963A0();
    }

    /* renamed from: C0 */
    public final void m50965C0(String titleName, int stylusFunTypeValue, int stylusKeyType) {
        m50967r0().setStylusKeyType(stylusKeyType);
        m50967r0().setSelectFun(stylusFunTypeValue);
        TintConstraintLayout clStylusFunContainer = getBinding().includeFingerFun.clStylusFunContainer;
        Intrinsics.checkNotNullExpressionValue(clStylusFunContainer, "clStylusFunContainer");
        clStylusFunContainer.setVisibility(0);
        getBinding().includeFingerFun.tvTitle.setText(titleName);
    }

    /* renamed from: D0 */
    public final void m50966D0(StylusFunType stylusFunType, int stylusKeyType) {
        if (stylusKeyType == 4) {
            this.twoFingerClick.put(stylusFunType.getType());
            getBinding().tvTowFingerClickFun.setText(getResources().getString(stylusFunType.getTitle()));
        } else if (stylusKeyType == 5) {
            this.threeFingerClick.put(stylusFunType.getType());
            getBinding().tvThreeFingerClickFun.setText(getResources().getString(stylusFunType.getTitle()));
        } else {
            if (stylusKeyType != 6) {
                return;
            }
            this.fingerDoubleClick.put(stylusFunType.getType());
            getBinding().tvFingerDoubleClickFun.setText(getResources().getString(stylusFunType.getTitle()));
        }
    }

    @NotNull
    public final FragmentSettingsGestureBinding getBinding() {
        FragmentSettingsGestureBinding fragmentSettingsGestureBinding = this.binding;
        if (fragmentSettingsGestureBinding != null) {
            return fragmentSettingsGestureBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentSettingsGestureBinding inflate = FragmentSettingsGestureBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        setBinding(inflate);
        m50964B0();
        m50969t0();
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    /* renamed from: r0 */
    public final StylusFunctionAdapter m50967r0() {
        return (StylusFunctionAdapter) this.fingerFunAdapter.getValue();
    }

    /* renamed from: s0 */
    public final String m50968s0(int funType) {
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
                                        StylusFunType stylusFunType9 = StylusFunType.PAPER_ADAPTIVE;
                                        if (funType == stylusFunType9.getType()) {
                                            title = stylusFunType9.getTitle();
                                        } else {
                                            StylusFunType stylusFunType10 = StylusFunType.UN_DO;
                                            if (funType == stylusFunType10.getType()) {
                                                title = stylusFunType10.getTitle();
                                            } else {
                                                StylusFunType stylusFunType11 = StylusFunType.RE_DO;
                                                title = funType == stylusFunType11.getType() ? stylusFunType11.getTitle() : stylusFunType.getTitle();
                                            }
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

    public final void setBinding(@NotNull FragmentSettingsGestureBinding fragmentSettingsGestureBinding) {
        Intrinsics.checkNotNullParameter(fragmentSettingsGestureBinding, "<set-?>");
        this.binding = fragmentSettingsGestureBinding;
    }

    /* renamed from: t0 */
    public final void m50969t0() {
        getBinding().twoFingerContainer.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.fjm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsGestureFragment.m50957u0(SettingsGestureFragment.this, view);
            }
        });
        getBinding().threeFingerContainer.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.gjm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsGestureFragment.m50958v0(SettingsGestureFragment.this, view);
            }
        });
        getBinding().doubleClickContainer.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.hjm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsGestureFragment.m50959w0(SettingsGestureFragment.this, view);
            }
        });
        getBinding().includeFingerFun.tvBack.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ijm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsGestureFragment.m50960x0(SettingsGestureFragment.this, view);
            }
        });
        m50967r0().setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.jjm
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SettingsGestureFragment.m50961y0(SettingsGestureFragment.this, baseQuickAdapter, view, i);
            }
        });
        getBinding().switchPalmGesture.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.kjm
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsGestureFragment.m50962z0(SettingsGestureFragment.this, compoundButton, z);
            }
        });
    }
}
