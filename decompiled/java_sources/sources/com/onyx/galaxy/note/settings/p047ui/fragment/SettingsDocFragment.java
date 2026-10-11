package com.onyx.galaxy.note.settings.p047ui.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.fragment.app.C1126e;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.data.SettingToggleKt;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.data.utils.IntOption;
import com.onyx.android.sdk.event.StatisticsPaperFreeMoveToggleEvent;
import com.onyx.android.sdk.event.StatisticsPaperMoveAddToggleEvent;
import com.onyx.android.sdk.replicator.note.bean.NoteCreateInfo;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.universal.editor.events.app.EnableFreeMovePaperEvent;
import com.onyx.galaxy.note.category.action.LoadQuicklyCreateInfoAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.data.TemplateFragmentArgs;
import com.onyx.galaxy.note.category.p044ui.NoteTemplateFragment;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.FragmentSettingsDocBinding;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.settings.data.PronunciationType;
import com.onyx.galaxy.note.settings.p047ui.adapter.PronunciationAdapter;
import com.onyx.galaxy.note.settings.p047ui.fragment.SettingsDocFragment;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b,\u0010-J$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\f\u001a\u00020\nH\u0002J\u0010\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\b\u0010\u0010\u001a\u00020\nH\u0002J\b\u0010\u0012\u001a\u00020\u0011H\u0002R\"\u0010\u0014\u001a\u00020\u00138\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001f\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001cR\u0016\u0010!\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010\u001cR\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u001b\u0010+\u001a\u00020&8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*¨\u0006."}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsDocFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "", "u0", "D0", "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", "noteCreateInfo", "E0", "C0", "", "t0", "Lcom/onyx/galaxy/note/databinding/FragmentSettingsDocBinding;", "binding", "Lcom/onyx/galaxy/note/databinding/FragmentSettingsDocBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/FragmentSettingsDocBinding;", "setBinding", "(Lcom/onyx/galaxy/note/databinding/FragmentSettingsDocBinding;)V", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "d1", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "isPageMovesFreely", "e1", "isSlideToAdd", "f1", "isAutoAppendPage", "Lcom/onyx/android/sdk/data/utils/IntOption;", "g1", "Lcom/onyx/android/sdk/data/utils/IntOption;", "pronunciationType", "Lcom/onyx/galaxy/note/settings/ui/adapter/PronunciationAdapter;", "h1", "Lkotlin/Lazy;", "s0", "()Lcom/onyx/galaxy/note/settings/ui/adapter/PronunciationAdapter;", "pronunciationAdapter", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSettingsDocFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsDocFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsDocFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,123:1\n256#2,2:124\n256#2,2:126\n*S KotlinDebug\n*F\n+ 1 SettingsDocFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsDocFragment\n*L\n66#1:124,2\n70#1:126,2\n*E\n"})
/* loaded from: classes9.dex */
public final class SettingsDocFragment extends BaseFragment {
    public FragmentSettingsDocBinding binding;

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public BooleanOption isPageMovesFreely;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public BooleanOption isSlideToAdd;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public BooleanOption isAutoAppendPage;

    /* renamed from: g1, reason: from kotlin metadata */
    @NotNull
    public IntOption pronunciationType;

    /* renamed from: h1, reason: from kotlin metadata */
    @NotNull
    public final Lazy pronunciationAdapter;

    /* renamed from: com.onyx.galaxy.note.settings.ui.fragment.SettingsDocFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12699a<T, R> implements Function {
        public C12699a() {
        }

        /* renamed from: a */
        public final void m50930a(@NotNull NoteCreateInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SettingsDocFragment.this.m50926E0(it2);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m50930a((NoteCreateInfo) obj);
            return Unit.INSTANCE;
        }
    }

    public SettingsDocFragment() {
        Lazy lazy;
        NoteConfigManager noteConfigManager = NoteConfigManager.INSTANCE;
        this.isPageMovesFreely = noteConfigManager.getPaperMoveFree();
        this.isSlideToAdd = noteConfigManager.getSlideToAdd();
        this.isAutoAppendPage = noteConfigManager.getAutoAppendPage();
        this.pronunciationType = noteConfigManager.getPronunciation();
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PronunciationAdapter>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsDocFragment$pronunciationAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PronunciationAdapter invoke() {
                return new PronunciationAdapter();
            }
        });
        this.pronunciationAdapter = lazy;
    }

    /* renamed from: A0 */
    public static final void m50910A0(SettingsDocFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TintConstraintLayout pronunciationContainer = this$0.getBinding().includePronunciation.pronunciationContainer;
        Intrinsics.checkNotNullExpressionValue(pronunciationContainer, "pronunciationContainer");
        pronunciationContainer.setVisibility(8);
    }

    /* renamed from: B0 */
    public static final void m50911B0(SettingsDocFragment this$0, BaseQuickAdapter adapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        PronunciationType pronunciationType = (PronunciationType) adapter.getItem(i);
        if (pronunciationType != null) {
            this$0.pronunciationType.put(pronunciationType.getType());
            this$0.m50927s0().setSelectPronunciation(pronunciationType);
            this$0.getBinding().tvPronunciation.setText(this$0.getResources().getString(pronunciationType.getDisplayName()));
        }
    }

    /* renamed from: v0 */
    public static final void m50919v0(SettingsDocFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50925D0();
    }

    /* renamed from: w0 */
    public static final void m50920w0(SettingsDocFragment this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.isSlideToAdd.put(z);
        StatisticsBundle.INSTANCE.postEvent(new StatisticsPaperMoveAddToggleEvent(SettingToggleKt.getSettingToggle(z)));
    }

    /* renamed from: x0 */
    public static final void m50921x0(SettingsDocFragment this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.isAutoAppendPage.put(z);
    }

    /* renamed from: y0 */
    public static final void m50922y0(SettingsDocFragment this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.isPageMovesFreely.put(z);
        DocCollectionBundle.INSTANCE.postEvent(new EnableFreeMovePaperEvent(z));
        StatisticsBundle.INSTANCE.postEvent(new StatisticsPaperFreeMoveToggleEvent(SettingToggleKt.getSettingToggle(z)));
    }

    /* renamed from: z0 */
    public static final void m50923z0(SettingsDocFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TintConstraintLayout pronunciationContainer = this$0.getBinding().includePronunciation.pronunciationContainer;
        Intrinsics.checkNotNullExpressionValue(pronunciationContainer, "pronunciationContainer");
        pronunciationContainer.setVisibility(0);
    }

    /* renamed from: C0 */
    public final void m50924C0() {
        List list;
        getBinding().switchSlideToAdd.setChecked(this.isSlideToAdd.get());
        getBinding().switchAppendPage.setChecked(this.isAutoAppendPage.get());
        getBinding().switchPaperMovesFreely.setChecked(this.isPageMovesFreely.get());
        getBinding().tvPronunciation.setText(getResources().getString(m50928t0()));
        getBinding().includePronunciation.rlPronunciationList.setLayoutManager(new LinearLayoutManager(getContext()));
        getBinding().includePronunciation.rlPronunciationList.setAdapter(m50927s0());
        PronunciationAdapter m50927s0 = m50927s0();
        list = ArraysKt___ArraysKt.toList(PronunciationType.values());
        m50927s0.submitList(list);
    }

    /* renamed from: D0 */
    public final void m50925D0() {
        new LoadQuicklyCreateInfoAction().build().map(new C12699a()).subscribe();
    }

    /* renamed from: E0 */
    public final void m50926E0(NoteCreateInfo noteCreateInfo) {
        TemplateFragmentArgs templateFragmentArgs = new TemplateFragmentArgs();
        templateFragmentArgs.setCoverTemplateJsonBean(noteCreateInfo.getCoverJsonBean());
        templateFragmentArgs.setPaperTemplateJsonBean(noteCreateInfo.firstPaperJsonBean());
        templateFragmentArgs.setType(3);
        NoteTemplateFragment.INSTANCE.newInstance(templateFragmentArgs).show(getParentFragmentManager(), Reflection.getOrCreateKotlinClass(NoteTemplateFragment.class).getSimpleName());
    }

    @NotNull
    public final FragmentSettingsDocBinding getBinding() {
        FragmentSettingsDocBinding fragmentSettingsDocBinding = this.binding;
        if (fragmentSettingsDocBinding != null) {
            return fragmentSettingsDocBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentSettingsDocBinding inflate = FragmentSettingsDocBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        setBinding(inflate);
        m50924C0();
        m50929u0();
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    /* renamed from: s0 */
    public final PronunciationAdapter m50927s0() {
        return (PronunciationAdapter) this.pronunciationAdapter.getValue();
    }

    public final void setBinding(@NotNull FragmentSettingsDocBinding fragmentSettingsDocBinding) {
        Intrinsics.checkNotNullParameter(fragmentSettingsDocBinding, "<set-?>");
        this.binding = fragmentSettingsDocBinding;
    }

    /* renamed from: t0 */
    public final int m50928t0() {
        int i = this.pronunciationType.get();
        PronunciationType pronunciationType = PronunciationType.BRITISH;
        if (i == pronunciationType.getType()) {
            return pronunciationType.getDisplayName();
        }
        PronunciationType pronunciationType2 = PronunciationType.AMERICAN;
        return i == pronunciationType2.getType() ? pronunciationType2.getDisplayName() : pronunciationType.getDisplayName();
    }

    /* renamed from: u0 */
    public final void m50929u0() {
        getBinding().quickNoteTemplate.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.vim
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsDocFragment.m50919v0(SettingsDocFragment.this, view);
            }
        });
        getBinding().switchSlideToAdd.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.wim
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsDocFragment.m50920w0(SettingsDocFragment.this, compoundButton, z);
            }
        });
        getBinding().switchAppendPage.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.xim
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsDocFragment.m50921x0(SettingsDocFragment.this, compoundButton, z);
            }
        });
        getBinding().switchPaperMovesFreely.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.yim
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsDocFragment.m50922y0(SettingsDocFragment.this, compoundButton, z);
            }
        });
        getBinding().tvPronunciation.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.zim
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsDocFragment.m50923z0(SettingsDocFragment.this, view);
            }
        });
        getBinding().includePronunciation.tvBack.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ajm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsDocFragment.m50910A0(SettingsDocFragment.this, view);
            }
        });
        m50927s0().setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.bjm
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SettingsDocFragment.m50911B0(SettingsDocFragment.this, baseQuickAdapter, view, i);
            }
        });
    }
}
