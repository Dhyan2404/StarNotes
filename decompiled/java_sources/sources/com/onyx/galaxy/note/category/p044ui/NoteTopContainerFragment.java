package com.onyx.galaxy.note.category.p044ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewGroupKt;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import com.blankj.utilcode.util.DeviceUtils;
import com.google.firebase.installations.remote.FirebaseInstallationServiceClient;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.data.SortOrder;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.BooleanKt;
import com.onyx.android.sdk.base.extension.FragmentActivityKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.event.LoginAccountChanged;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.couchbase.bean.StartReplicatorBean;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.note.common.event.NetworkStatusChangeEvent;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.replicator.event.TotalSyncNoteProgressEvent;
import com.onyx.android.sdk.replicator.note.action.StartNoteDocSyncAction;
import com.onyx.android.sdk.replicator.note.bean.NoteCloudSyncCheckArgs;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBeanList;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.p043ui.LoginActivity;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.data.FilterInfo;
import com.onyx.galaxy.note.category.data.NoteDisplayType;
import com.onyx.galaxy.note.category.data.PathEntry;
import com.onyx.galaxy.note.category.event.GotoUpEvent;
import com.onyx.galaxy.note.category.event.MultiCopyEvent;
import com.onyx.galaxy.note.category.event.MultiDeleteEvent;
import com.onyx.galaxy.note.category.event.MultiDustBinDeleteEvent;
import com.onyx.galaxy.note.category.event.MultiDustBinRestoreEvent;
import com.onyx.galaxy.note.category.event.MultiExportEvent;
import com.onyx.galaxy.note.category.event.MultiModifyNoteLockEvent;
import com.onyx.galaxy.note.category.event.MultiMoveEvent;
import com.onyx.galaxy.note.category.event.ResetMultiOptionMenuEvent;
import com.onyx.galaxy.note.category.event.ToggleSelectAllEvent;
import com.onyx.galaxy.note.category.p044ui.NoteListMoreOperatePopup;
import com.onyx.galaxy.note.category.p044ui.NoteTopContainerFragment;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.FragmentNoteTopContainerBinding;
import com.onyx.galaxy.note.settings.data.NoteConfigConst;
import com.onyx.galaxy.note.settings.p047ui.SettingsActivity;
import com.onyx.galaxy.note.utils.Navigator;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000±\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0001o\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bw\u0010xJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\u001e\u0010\n\u001a\u00020\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\t\u001a\u00020\bH\u0002J\u001e\u0010\f\u001a\u00020\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u000b\u001a\u00020\bH\u0002J\b\u0010\r\u001a\u00020\u0002H\u0002J\b\u0010\u000e\u001a\u00020\u0002H\u0002J\b\u0010\u000f\u001a\u00020\u0002H\u0002J\b\u0010\u0010\u001a\u00020\u0002H\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0002J\u0018\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\bH\u0002J\b\u0010\u0016\u001a\u00020\u0002H\u0002J\b\u0010\u0017\u001a\u00020\u0002H\u0002J\b\u0010\u0019\u001a\u00020\u0018H\u0002J\b\u0010\u001a\u001a\u00020\u0002H\u0002J\b\u0010\u001b\u001a\u00020\u0002H\u0002J\b\u0010\u001c\u001a\u00020\u0002H\u0003J\u0018\u0010!\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0002J\u0018\u0010\"\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0002J\u0010\u0010%\u001a\u00020\u00022\u0006\u0010$\u001a\u00020#H\u0002J\u0010\u0010'\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u0018H\u0002J\u0010\u0010(\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u0018H\u0002J\u0010\u0010)\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u0018H\u0002J\u0010\u0010*\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u0018H\u0002J\u001a\u0010,\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u00182\b\b\u0002\u0010+\u001a\u00020\u0018H\u0002J\b\u0010-\u001a\u00020\u0002H\u0002J\b\u0010.\u001a\u00020\u0002H\u0002J\b\u0010/\u001a\u00020\u0002H\u0002J\b\u00100\u001a\u00020\u0002H\u0002J\b\u00101\u001a\u00020\u0002H\u0002J\b\u00102\u001a\u00020\u0002H\u0002J\b\u00103\u001a\u00020\u0002H\u0002J\b\u00104\u001a\u00020\u0002H\u0002J\u0010\u00107\u001a\u00020\u00022\u0006\u00106\u001a\u000205H\u0002J\b\u00108\u001a\u00020\u0002H\u0002J\b\u00109\u001a\u00020\u0002H\u0002J\u0010\u0010:\u001a\u00020\u00022\u0006\u00106\u001a\u000205H\u0002J\b\u0010;\u001a\u00020\u0002H\u0002J\b\u0010<\u001a\u00020\u0002H\u0002J\b\u0010=\u001a\u00020\u0002H\u0002J\b\u0010>\u001a\u00020\u0002H\u0002J\u0010\u0010?\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u0018H\u0002J\u0010\u0010@\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u0018H\u0002J\u0010\u0010A\u001a\u00020\u00022\u0006\u0010$\u001a\u00020#H\u0002J\b\u0010B\u001a\u00020\u0002H\u0002J\u0010\u0010D\u001a\u00020\u00022\u0006\u0010C\u001a\u00020\u0006H\u0002J\b\u0010E\u001a\u00020\u0002H\u0002J\b\u0010F\u001a\u00020\u0002H\u0002J\b\u0010G\u001a\u00020\u0002H\u0002J\b\u0010H\u001a\u00020\u0002H\u0002J\b\u0010I\u001a\u00020\u0002H\u0002J\b\u0010J\u001a\u00020\u0002H\u0002J\u0010\u0010M\u001a\u00020\u00022\u0006\u0010L\u001a\u00020KH\u0002J\u0014\u0010P\u001a\u000e\u0012\u0004\u0012\u00020K\u0012\u0004\u0012\u00020O0NH\u0002J\u0012\u0010S\u001a\u00020\u00022\b\u0010R\u001a\u0004\u0018\u00010QH\u0016J$\u0010W\u001a\u00020\u00062\u0006\u0010U\u001a\u00020T2\b\u0010V\u001a\u0004\u0018\u00010\u00122\b\u0010R\u001a\u0004\u0018\u00010QH\u0016J\u001a\u0010X\u001a\u00020\u00022\u0006\u0010C\u001a\u00020\u00062\b\u0010R\u001a\u0004\u0018\u00010QH\u0016J\u0010\u0010[\u001a\u00020\u00022\u0006\u0010Z\u001a\u00020YH\u0016J\u0010\u0010]\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\\H\u0007J\u0010\u0010_\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020^H\u0007J\u0010\u0010a\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020`H\u0007J\u0010\u0010c\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020bH\u0007R\u001b\u0010i\u001a\u00020d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\be\u0010f\u001a\u0004\bg\u0010hR\u001b\u0010n\u001a\u00020j8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bk\u0010f\u001a\u0004\bl\u0010mR\u0014\u0010r\u001a\u00020o8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bp\u0010qR\u0018\u0010v\u001a\u0004\u0018\u00010s8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010u¨\u0006y"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "", "m1", "Y1", "", "Landroid/view/View;", "viewList", "", "margin", "P1", "viewSize", "Q1", "W1", "X1", "N1", "T1", "R1", "Landroid/view/ViewGroup;", "viewGroup", "paddingRes", "O1", "S1", "n1", "", "o1", "Z1", "a2", "S0", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "Landroid/widget/TextView;", "textView", "q1", "p1", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;", "selectList", "K1", "isEnable", "u1", "E0", "I0", "F0", "hasEncryption", "s1", FirebaseInstallationServiceClient.f35986m, "r1", "Q0", "M1", "I1", "E1", "H1", "C1", "Lcom/onyx/galaxy/note/category/data/PathEntry;", "selectedPath", "M0", "N0", "P0", "O0", "B1", "G1", "L1", "A1", "G0", "H0", "J1", "D1", "view", "F1", "R0", "V1", "U1", "w1", "z1", "y1", "", "eventId", "x1", "", "", "K0", "Landroid/os/Bundle;", C1126e.f7693h, "onCreate", "Landroid/view/LayoutInflater;", "inflater", gon.f71270W, "onCreateView", "onViewCreated", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "Lcom/onyx/galaxy/note/category/event/ResetMultiOptionMenuEvent;", "onResetOptionsMenuEvent", "Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;", "onAccountChanged", "Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;", "onNetworkChange", "Lcom/onyx/android/sdk/replicator/event/TotalSyncNoteProgressEvent;", "onTotalSyncNoteProgressEvent", "Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;", "d1", "Lkotlin/Lazy;", "J0", "()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;", "binding", "Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;", "e1", "L0", "()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;", "viewModel", "com/onyx/galaxy/note/category/ui/NoteTopContainerFragment$moreOperateCallback$1", "f1", "Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$moreOperateCallback$1;", "moreOperateCallback", "Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;", "g1", "Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;", "noteListMoreOperatePopup", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteTopContainerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTopContainerFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteTopContainerFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,925:1\n326#2,4:926\n326#2,4:930\n326#2,4:934\n326#2,4:939\n326#2,4:945\n157#2,8:950\n326#2,4:959\n326#2,4:963\n256#2,2:968\n256#2,2:970\n256#2,2:980\n326#2,4:990\n256#2,2:994\n256#2,2:996\n256#2,2:998\n256#2,2:1000\n1855#3:938\n1856#3:943\n1855#3:944\n1856#3:949\n1855#3:958\n1856#3:967\n288#3,2:972\n766#3:974\n857#3,2:975\n1747#3,3:977\n1549#3:982\n1620#3,3:983\n1549#3:986\n1620#3,3:987\n*S KotlinDebug\n*F\n+ 1 NoteTopContainerFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteTopContainerFragment\n*L\n173#1:926,4\n181#1:930,4\n259#1:934,4\n270#1:939,4\n289#1:945,4\n299#1:950,8\n314#1:959,4\n317#1:963,4\n397#1:968,2\n400#1:970,2\n599#1:980,2\n757#1:990,4\n763#1:994,2\n764#1:996,2\n768#1:998,2\n769#1:1000,2\n269#1:938\n269#1:943\n288#1:944\n288#1:949\n312#1:958\n312#1:967\n522#1:972,2\n525#1:974\n525#1:975,2\n526#1:977,3\n658#1:982\n658#1:983,3\n687#1:986\n687#1:987,3\n*E\n"})
/* loaded from: classes17.dex */
public final class NoteTopContainerFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy viewModel;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final NoteTopContainerFragment$moreOperateCallback$1 moreOperateCallback;

    /* renamed from: g1, reason: from kotlin metadata */
    @Nullable
    public NoteListMoreOperatePopup noteListMoreOperatePopup;

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteTopContainerFragment$a */
    /* loaded from: classes9.dex */
    public static final class C11340a implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f54891a;

        public C11340a(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f54891a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final Function<?> getFunctionDelegate() {
            return this.f54891a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f54891a.invoke(obj);
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [com.onyx.galaxy.note.category.ui.NoteTopContainerFragment$moreOperateCallback$1] */
    public NoteTopContainerFragment() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentNoteTopContainerBinding>() { // from class: com.onyx.galaxy.note.category.ui.NoteTopContainerFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentNoteTopContainerBinding invoke() {
                return FragmentNoteTopContainerBinding.inflate(NoteTopContainerFragment.this.getLayoutInflater());
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<NoteListViewModel>() { // from class: com.onyx.galaxy.note.category.ui.NoteTopContainerFragment$viewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NoteListViewModel invoke() {
                FragmentActivity requireActivity = NoteTopContainerFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                return (NoteListViewModel) FragmentActivityKt.getViewModel(requireActivity, NoteListViewModel.class);
            }
        });
        this.viewModel = lazy2;
        this.moreOperateCallback = new NoteListMoreOperatePopup.MoreOperateCallback() { // from class: com.onyx.galaxy.note.category.ui.NoteTopContainerFragment$moreOperateCallback$1
            @Override // com.onyx.galaxy.note.category.ui.NoteListMoreOperatePopup.MoreOperateCallback
            public void onCloudSync() {
                NoteTopContainerFragment.this.m43756R0();
            }

            @Override // com.onyx.galaxy.note.category.ui.NoteListMoreOperatePopup.MoreOperateCallback
            public void onMultiSelect() {
                NoteListViewModel m43744L0;
                m43744L0 = NoteTopContainerFragment.this.m43744L0();
                m43744L0.toggleMulSelect();
            }

            @Override // com.onyx.galaxy.note.category.ui.NoteListMoreOperatePopup.MoreOperateCallback
            public void onSort(@NotNull View view) {
                Intrinsics.checkNotNullParameter(view, "view");
                NoteTopContainerFragment.this.m43733F1(view);
            }

            @Override // com.onyx.galaxy.note.category.ui.NoteListMoreOperatePopup.MoreOperateCallback
            public void onToggleDisplay() {
                NoteListViewModel m43744L0;
                m43744L0 = NoteTopContainerFragment.this.m43744L0();
                m43744L0.toggleDisplayType();
            }
        };
    }

    /* renamed from: T0 */
    public static final boolean m43691T0(NoteTopContainerFragment this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (motionEvent.getAction() == 1) {
            Intrinsics.checkNotNull(view, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) view;
            textView.getLocationInWindow(new int[2]);
            Intrinsics.checkNotNull(motionEvent);
            if (this$0.m43772q1(motionEvent, textView)) {
                this$0.m43754Q0();
                this$0.m43773r1();
            }
        }
        return true;
    }

    /* renamed from: U0 */
    public static final boolean m43692U0(NoteTopContainerFragment this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (motionEvent.getAction() == 1) {
            Intrinsics.checkNotNull(view, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) view;
            Intrinsics.checkNotNull(motionEvent);
            if (this$0.m43772q1(motionEvent, textView)) {
                this$0.m43754Q0();
                this$0.m43773r1();
                return true;
            }
            if (this$0.m43771p1(motionEvent, textView)) {
                this$0.m43731E1();
                return true;
            }
            this$0.m43731E1();
        }
        return true;
    }

    /* renamed from: V0 */
    public static final void m43693V0(NoteTopContainerFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43744L0().toggleSideExpand();
    }

    /* renamed from: W0 */
    public static final void m43694W0(NoteTopContainerFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (Intrinsics.areEqual(this$0.m43744L0().isSlideAnimating().getValue(), Boolean.TRUE)) {
            return;
        }
        this$0.m43777w1();
        this$0.m43744L0().toggleDisplayType();
    }

    /* renamed from: X0 */
    public static final void m43695X0(NoteTopContainerFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43780z1();
        this$0.m43747M1();
    }

    /* renamed from: Y0 */
    public static final void m43696Y0(NoteTopContainerFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43779y1();
        this$0.m43744L0().toggleMulSelect();
    }

    /* renamed from: Z0 */
    public static final void m43697Z0(NoteTopContainerFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43778x1(OnyxStatisticConstant.ID_TOP_ICON_BATCH_SYNC_CLICK);
        this$0.m43756R0();
    }

    /* renamed from: a1 */
    public static final void m43698a1(View view) {
        DocCollectionBundle.INSTANCE.postEvent(new MultiDeleteEvent());
    }

    /* renamed from: b1 */
    public static final void m43699b1(NoteTopContainerFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43778x1(OnyxStatisticConstant.ID_TOP_ICON_BATCH_MOVE_CLICK);
        DocCollectionBundle.INSTANCE.postEvent(new MultiMoveEvent());
    }

    /* renamed from: c1 */
    public static final void m43700c1(NoteTopContainerFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43778x1(OnyxStatisticConstant.ID_TOP_ICON_BATCH_COPY_CLICK);
        DocCollectionBundle.INSTANCE.postEvent(new MultiCopyEvent());
    }

    /* renamed from: d1 */
    public static final void m43701d1(NoteTopContainerFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43778x1(OnyxStatisticConstant.ID_TOP_ICON_BATCH_EXPORT_CLICK);
        DocCollectionBundle.INSTANCE.postEvent(new MultiExportEvent());
    }

    /* renamed from: e1 */
    public static final void m43702e1(View view) {
        DocCollectionBundle.INSTANCE.postEvent(new MultiModifyNoteLockEvent());
    }

    /* renamed from: f1 */
    public static final void m43703f1(NoteTopContainerFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43729D1();
    }

    /* renamed from: g1 */
    public static final void m43704g1(View view) {
        DocCollectionBundle.INSTANCE.postEvent(new MultiDustBinDeleteEvent());
    }

    /* renamed from: h1 */
    public static final void m43705h1(View view) {
        DocCollectionBundle.INSTANCE.postEvent(new MultiDustBinRestoreEvent());
    }

    /* renamed from: i1 */
    public static final void m43706i1(View view) {
        DocCollectionBundle.INSTANCE.postEvent(new ToggleSelectAllEvent());
    }

    /* renamed from: j1 */
    public static final void m43707j1(NoteTopContainerFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.startActivity(new Intent(this$0.requireContext(), (Class<?>) SettingsActivity.class));
    }

    /* renamed from: k1 */
    public static final void m43708k1(View view) {
        Navigator.navigateToDataRepository$default(Navigator.INSTANCE, null, 1, null);
    }

    /* renamed from: l1 */
    public static final void m43710l1(NoteTopContainerFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43731E1();
    }

    /* renamed from: t1 */
    public static /* synthetic */ void m43719t1(NoteTopContainerFragment noteTopContainerFragment, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = false;
        }
        noteTopContainerFragment.m43774s1(z, z2);
    }

    /* renamed from: A1 */
    public final void m43726A1() {
        m43734G0(false);
        m43736H0(false);
    }

    /* renamed from: B1 */
    public final void m43727B1() {
        m43775u1(false);
        m43730E0(false);
        m43738I0(false);
        m43732F0(false);
    }

    /* renamed from: C1 */
    public final void m43728C1() {
        int collectionSizeOrDefault;
        List mutableList;
        if (m43744L0().getFolderRootNode().getValue() == null) {
            return;
        }
        List<TreeNode<NoteModelBean>> pathNoteTreeNodes = m43744L0().findFolder(m43744L0().getCurrentFolderId()).getPathNoteTreeNodes();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(pathNoteTreeNodes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = pathNoteTreeNodes.iterator();
        while (it2.hasNext()) {
            TreeNode treeNode = (TreeNode) it2.next();
            String uniqueId = ((NoteModelBean) treeNode.getData()).getUniqueId();
            String title = ((NoteModelBean) treeNode.getData()).getTitle();
            Intrinsics.checkNotNull(title);
            arrayList.add(new PathEntry(uniqueId, title, treeNode.levelToRoot() - 1, ((NoteModelBean) treeNode.getData()).getStyle().getColor()));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        String string = getString(C10651R.string.folder);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        mutableList.add(0, new PathEntry(NoteConfigConst.FOLDER_ROOT_ID, string, 0, 0, 8, null));
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        new PathOpPopup(requireContext, mutableList, C10651R.drawable.icon_item_folder_list, C10651R.drawable.icon_item_folder_list_bottom, m43744L0().getNormalizedFolderId(), new Function1<PathEntry, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTopContainerFragment$showFolderPathPopup$1
            {
                super(1);
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull PathEntry selectedPath) {
                Intrinsics.checkNotNullParameter(selectedPath, "selectedPath");
                if (Intrinsics.areEqual(selectedPath.getId(), NoteConfigConst.FOLDER_ROOT_ID)) {
                    NoteTopContainerFragment.this.m43748N0();
                } else {
                    NoteTopContainerFragment.this.m43746M0(selectedPath);
                }
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(PathEntry pathEntry) {
                invoke2(pathEntry);
                return Unit.INSTANCE;
            }
        }).showAsDropDown(m43740J0().tvTitleCenter, 0, 0, 1);
    }

    /* renamed from: D1 */
    public final void m43729D1() {
        Boolean value = m43744L0().getAllowCloudSync().getValue();
        Intrinsics.checkNotNull(value);
        boolean z = value.booleanValue() && !m43770o1();
        boolean z2 = !m43770o1();
        NoteDisplayType value2 = m43744L0().getDisplayType().getValue();
        Intrinsics.checkNotNull(value2);
        NoteListMoreOperatePopup.NoteListMoreOperateContext noteListMoreOperateContext = new NoteListMoreOperatePopup.NoteListMoreOperateContext(z, z2, value2.isGrid(), m43744L0().getSortName(), m43744L0().getSortIconId(), this.moreOperateCallback);
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        NoteListMoreOperatePopup noteListMoreOperatePopup = new NoteListMoreOperatePopup(requireContext, noteListMoreOperateContext);
        this.noteListMoreOperatePopup = noteListMoreOperatePopup;
        noteListMoreOperatePopup.showAsDropDown(m43740J0().ivMoreOperate);
    }

    /* renamed from: E0 */
    public final void m43730E0(boolean isEnable) {
        m43740J0().tvOpCopy.setEnabled(isEnable);
        m43740J0().ivOpCopy.setEnabled(isEnable);
        m43740J0().llOpCopy.setEnabled(isEnable);
    }

    /* renamed from: E1 */
    public final void m43731E1() {
        if (m43744L0().isFilterFolder()) {
            m43728C1();
        }
        FilterInfo value = m43744L0().getFilterInfo().getValue();
        Intrinsics.checkNotNull(value);
        if (value.getType() == 7) {
            m43737H1();
        }
    }

    /* renamed from: F0 */
    public final void m43732F0(boolean isEnable) {
        m43740J0().tvOpDelete.setEnabled(isEnable);
        m43740J0().ivOpDelete.setEnabled(isEnable);
        m43740J0().llOpDelete.setEnabled(isEnable);
    }

    /* renamed from: F1 */
    public final void m43733F1(View view) {
        ResManager resManager = ResManager.INSTANCE;
        int dimens = 0 - resManager.getDimens(C7384R.dimen.dp_240);
        int dimens2 = 0 - resManager.getDimens(C7384R.dimen.dp_58);
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        SortBy value = m43744L0().getSortType().getValue();
        Intrinsics.checkNotNull(value);
        SortOrder value2 = m43744L0().getOrderType().getValue();
        Intrinsics.checkNotNull(value2);
        new NoteListSortPopup(requireContext, value, value2, new Function2<SortBy, SortOrder, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTopContainerFragment$showSortPopup$1
            {
                super(2);
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull SortBy sortBy, @NotNull SortOrder sortOrder) {
                NoteListViewModel m43744L0;
                NoteListMoreOperatePopup noteListMoreOperatePopup;
                Intrinsics.checkNotNullParameter(sortBy, "sortBy");
                Intrinsics.checkNotNullParameter(sortOrder, "sortOrder");
                m43744L0 = NoteTopContainerFragment.this.m43744L0();
                m43744L0.toggleSort(sortBy, sortOrder);
                NoteTopContainerFragment.this.m43773r1();
                noteListMoreOperatePopup = NoteTopContainerFragment.this.noteListMoreOperatePopup;
                if (noteListMoreOperatePopup != null) {
                    noteListMoreOperatePopup.dismiss();
                }
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(SortBy sortBy, SortOrder sortOrder) {
                invoke2(sortBy, sortOrder);
                return Unit.INSTANCE;
            }
        }).showAsDropDown(view, dimens, dimens2);
    }

    /* renamed from: G0 */
    public final void m43734G0(boolean isEnable) {
        m43740J0().llDustBinOpDelete.setEnabled(isEnable);
        m43740J0().ivDustBinOpDelete.setEnabled(isEnable);
        m43740J0().tvDustBinOpDelete.setEnabled(isEnable);
    }

    /* renamed from: G1 */
    public final void m43735G1() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        new CommonDialog.Builder(requireContext).setTitle(C10651R.string.hint).setMessage(C10651R.string.cloud_sync_login_content).setConfirmText(C10651R.string.cloud_sync_login_confirm).setCancelText(C10651R.string.cancel).setCancelable(false).setWarning(true).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTopContainerFragment$showSyncLoginDialog$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(CommonDialog commonDialog, String str) {
                invoke2(commonDialog, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CommonDialog commonDialog, @NotNull String str) {
                Intrinsics.checkNotNullParameter(commonDialog, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(str, "<anonymous parameter 1>");
                FragmentActivity requireActivity = NoteTopContainerFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                ContextExtKt.startActivity(requireActivity, LoginActivity.class);
            }
        }).create().show();
    }

    /* renamed from: H0 */
    public final void m43736H0(boolean isEnable) {
        m43740J0().llDustBinOpRestore.setEnabled(isEnable);
        m43740J0().ivDustBinOpRestore.setEnabled(isEnable);
        m43740J0().tvDustBinOpRestore.setEnabled(isEnable);
    }

    /* renamed from: H1 */
    public final void m43737H1() {
        int collectionSizeOrDefault;
        List mutableList;
        if (m43744L0().getTagRootNode().getValue() == null) {
            return;
        }
        TreeNode<NoteTagBean> findTag = m43744L0().findTag(m43744L0().getNormalizedTagId());
        Intrinsics.checkNotNull(findTag);
        List<TreeNode<NoteTagBean>> pathNoteTreeNodes = findTag.getPathNoteTreeNodes();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(pathNoteTreeNodes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = pathNoteTreeNodes.iterator();
        while (it2.hasNext()) {
            TreeNode treeNode = (TreeNode) it2.next();
            arrayList.add(new PathEntry(((NoteTagBean) treeNode.getData()).getUniqueId(), ((NoteTagBean) treeNode.getData()).getContent(), treeNode.levelToRoot() - 1, ((NoteTagBean) treeNode.getData()).getStyle().getColor()));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        String string = getString(C10651R.string.tag);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        mutableList.add(0, new PathEntry(NoteConfigConst.TAG_ROOT_ID, string, 0, 0, 8, null));
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        new PathOpPopup(requireContext, mutableList, C10651R.drawable.icon_item_tag_list, C10651R.drawable.icon_item_tag_list_bottom, m43744L0().getNormalizedTagId(), new Function1<PathEntry, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTopContainerFragment$showTagPathPopup$1
            {
                super(1);
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull PathEntry selectedPath) {
                Intrinsics.checkNotNullParameter(selectedPath, "selectedPath");
                if (Intrinsics.areEqual(selectedPath.getId(), NoteConfigConst.TAG_ROOT_ID)) {
                    NoteTopContainerFragment.this.m43752P0();
                } else {
                    NoteTopContainerFragment.this.m43750O0(selectedPath);
                }
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(PathEntry pathEntry) {
                invoke2(pathEntry);
                return Unit.INSTANCE;
            }
        }).showAsDropDown(m43740J0().tvTitleCenter, 0, 0, 1);
    }

    /* renamed from: I0 */
    public final void m43738I0(boolean isEnable) {
        m43740J0().tvOpExport.setEnabled(isEnable);
        m43740J0().ivOpExport.setEnabled(isEnable);
        m43740J0().llOpExport.setEnabled(isEnable);
    }

    /* renamed from: I1 */
    public final void m43739I1() {
        NoteCloudSyncCheckArgs noteCloudSyncCheckArgs = new NoteCloudSyncCheckArgs();
        noteCloudSyncCheckArgs.setCheckConfig(false);
        noteCloudSyncCheckArgs.setShowNetworkErrorToast(true);
        StartReplicatorBean startReplicatorBean = new StartReplicatorBean(0, false, false, false, null, null, false, 127, null);
        startReplicatorBean.setSyncAll(true);
        OnyxErrorHandler.subscribeWithErrorHandler$default(OnyxErrorHandler.INSTANCE, new StartNoteDocSyncAction(startReplicatorBean, noteCloudSyncCheckArgs).build(), null, null, 3, null);
    }

    /* renamed from: J0 */
    public final FragmentNoteTopContainerBinding m43740J0() {
        return (FragmentNoteTopContainerBinding) this.binding.getValue();
    }

    /* renamed from: J1 */
    public final void m43741J1(NoteModelBeanList selectList) {
        m43734G0(!selectList.isEmpty());
        m43736H0(!selectList.isEmpty());
    }

    /* renamed from: K0 */
    public final Map<String, Object> m43742K0() {
        Map<String, Object> mutableMapOf;
        FilterInfo value = m43744L0().getFilterInfo().getValue();
        Intrinsics.checkNotNull(value);
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(value.getType())));
        return mutableMapOf;
    }

    /* renamed from: K1 */
    public final void m43743K1(NoteModelBeanList selectList) {
        NoteModelBean noteModelBean;
        boolean z;
        Iterator<NoteModelBean> it2 = selectList.iterator();
        while (true) {
            if (it2.hasNext()) {
                noteModelBean = it2.next();
                if (noteModelBean.isLibrary()) {
                    break;
                }
            } else {
                noteModelBean = null;
                break;
            }
        }
        boolean z2 = noteModelBean != null;
        ArrayList arrayList = new ArrayList();
        for (NoteModelBean noteModelBean2 : selectList) {
            if (noteModelBean2.isDocument()) {
                arrayList.add(noteModelBean2);
            }
        }
        boolean z3 = arrayList.size() <= 9;
        if (!(selectList instanceof Collection) || !selectList.isEmpty()) {
            Iterator<NoteModelBean> it3 = selectList.iterator();
            while (it3.hasNext()) {
                if (it3.next().hasEncryption()) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        m43776v1();
        if (selectList.size() == 0) {
            m43775u1(false);
            m43730E0(false);
            m43738I0(false);
            m43732F0(false);
            m43719t1(this, false, false, 2, null);
            return;
        }
        if (z2) {
            m43775u1(true);
            m43730E0(true);
            m43738I0(false);
            m43732F0(true);
            m43774s1(false, z);
            return;
        }
        m43775u1(true);
        m43730E0(true);
        m43738I0(z3);
        m43732F0(true);
        m43774s1(true, z);
    }

    /* renamed from: L0 */
    public final NoteListViewModel m43744L0() {
        return (NoteListViewModel) this.viewModel.getValue();
    }

    /* renamed from: L1 */
    public final void m43745L1() {
        FilterInfo value = m43744L0().getFilterInfo().getValue();
        boolean z = value != null && value.getType() == 8;
        Boolean value2 = m43744L0().isMulSelect().getValue();
        Boolean bool = Boolean.TRUE;
        boolean areEqual = Intrinsics.areEqual(value2, bool);
        boolean areEqual2 = Intrinsics.areEqual(m43744L0().getAllowCloudSync().getValue(), bool);
        m43766Z1();
        m43767a2();
        TintImageView ivSelector = m43740J0().ivSelector;
        Intrinsics.checkNotNullExpressionValue(ivSelector, "ivSelector");
        ViewGroup.LayoutParams layoutParams = ivSelector.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.setMarginEnd((z || !areEqual2) ? 0 : ResManager.INSTANCE.getDimens(C7384R.dimen.dp_8));
        ivSelector.setLayoutParams(marginLayoutParams);
        if (areEqual) {
            TintConstraintLayout llOpMenu = m43740J0().llOpMenu;
            Intrinsics.checkNotNullExpressionValue(llOpMenu, "llOpMenu");
            llOpMenu.setVisibility(z ^ true ? 0 : 8);
            TintConstraintLayout llDustBinOpMenu = m43740J0().llDustBinOpMenu;
            Intrinsics.checkNotNullExpressionValue(llDustBinOpMenu, "llDustBinOpMenu");
            llDustBinOpMenu.setVisibility(z ? 0 : 8);
            return;
        }
        TintConstraintLayout llOpMenu2 = m43740J0().llOpMenu;
        Intrinsics.checkNotNullExpressionValue(llOpMenu2, "llOpMenu");
        llOpMenu2.setVisibility(8);
        TintConstraintLayout llDustBinOpMenu2 = m43740J0().llDustBinOpMenu;
        Intrinsics.checkNotNullExpressionValue(llDustBinOpMenu2, "llDustBinOpMenu");
        llDustBinOpMenu2.setVisibility(8);
    }

    /* renamed from: M0 */
    public final void m43746M0(PathEntry selectedPath) {
        m43744L0().gotoFolder(selectedPath.getId());
    }

    /* renamed from: M1 */
    public final void m43747M1() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        SortBy value = m43744L0().getSortType().getValue();
        Intrinsics.checkNotNull(value);
        SortOrder value2 = m43744L0().getOrderType().getValue();
        Intrinsics.checkNotNull(value2);
        new NoteListSortPopup(requireContext, value, value2, new Function2<SortBy, SortOrder, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTopContainerFragment$toggleSort$1
            {
                super(2);
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull SortBy sortBy, @NotNull SortOrder sortOrder) {
                NoteListViewModel m43744L0;
                Intrinsics.checkNotNullParameter(sortBy, "sortBy");
                Intrinsics.checkNotNullParameter(sortOrder, "sortOrder");
                m43744L0 = NoteTopContainerFragment.this.m43744L0();
                m43744L0.toggleSort(sortBy, sortOrder);
                NoteTopContainerFragment.this.m43773r1();
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(SortBy sortBy, SortOrder sortOrder) {
                invoke2(sortBy, sortOrder);
                return Unit.INSTANCE;
            }
        }).showAsDropDown(m43740J0().ivSortType);
    }

    /* renamed from: N0 */
    public final void m43748N0() {
        m43744L0().gotoFolderRoot();
        m43773r1();
    }

    /* renamed from: N1 */
    public final void m43749N1() {
        TintTextView ivOpDone = m43740J0().ivOpDone;
        Intrinsics.checkNotNullExpressionValue(ivOpDone, "ivOpDone");
        ViewGroup.LayoutParams layoutParams = ivOpDone.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        ResManager resManager = ResManager.INSTANCE;
        marginLayoutParams.height = resManager.getDimens(C7384R.dimen.dp_28);
        marginLayoutParams.width = resManager.getDimens(C7384R.dimen.dp_62);
        ivOpDone.setLayoutParams(marginLayoutParams);
        m43740J0().ivOpDone.setTextSize(0, resManager.getDimension(C7384R.dimen.sp_12));
    }

    /* renamed from: O0 */
    public final void m43750O0(PathEntry selectedPath) {
        m43744L0().gotoTag(selectedPath.getId());
    }

    /* renamed from: O1 */
    public final void m43751O1(ViewGroup viewGroup, int paddingRes) {
        int dimens = ResManager.INSTANCE.getDimens(paddingRes);
        viewGroup.setPadding(dimens, viewGroup.getPaddingTop(), dimens, viewGroup.getPaddingBottom());
    }

    /* renamed from: P0 */
    public final void m43752P0() {
        m43744L0().gotoTagRoot();
        m43773r1();
    }

    /* renamed from: P1 */
    public final void m43753P1(List<? extends View> viewList, int margin) {
        Iterator<? extends View> it2 = viewList.iterator();
        while (it2.hasNext()) {
            ViewGroup.LayoutParams layoutParams = it2.next().getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.setMarginEnd(margin);
            if (marginLayoutParams instanceof ConstraintLayout.LayoutParams) {
                ((ConstraintLayout.LayoutParams) marginLayoutParams).goneEndMargin = margin;
            }
        }
    }

    /* renamed from: Q0 */
    public final void m43754Q0() {
        m43744L0().gotoUp();
        m43744L0().isMulSelect().setValue(Boolean.FALSE);
        DocCollectionBundle.INSTANCE.postEvent(new GotoUpEvent());
    }

    /* renamed from: Q1 */
    public final void m43755Q1(List<? extends View> viewList, int viewSize) {
        for (View view : viewList) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.width = viewSize;
            marginLayoutParams.height = viewSize;
            view.setLayoutParams(marginLayoutParams);
        }
    }

    /* renamed from: R0 */
    public final void m43756R0() {
        if (AccountDataBundle.INSTANCE.isAlreadyLogin()) {
            m43739I1();
        } else {
            m43735G1();
        }
    }

    /* renamed from: R1 */
    public final void m43757R1() {
        List<ViewGroup> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TintConstraintLayout[]{m43740J0().llOpMove, m43740J0().llOpCopy, m43740J0().llOpLock, m43740J0().llOpExport, m43740J0().llOpDelete, m43740J0().llDustBinOpDelete, m43740J0().llDustBinOpRestore});
        for (ViewGroup viewGroup : listOf) {
            Intrinsics.checkNotNull(viewGroup);
            ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.height = ResManager.INSTANCE.getDimens(C7384R.dimen.dp_40);
            viewGroup.setLayoutParams(marginLayoutParams);
            m43751O1(viewGroup, DeviceUtils.isTablet() ? C7384R.dimen.dp_10 : C7384R.dimen.dp_6);
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: S0 */
    public final void m43758S0() {
        m43740J0().tvTitle.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.h4k
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m43691T0;
                m43691T0 = NoteTopContainerFragment.m43691T0(NoteTopContainerFragment.this, view, motionEvent);
                return m43691T0;
            }
        });
        m43740J0().tvTitleCenter.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.i4k
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m43692U0;
                m43692U0 = NoteTopContainerFragment.m43692U0(NoteTopContainerFragment.this, view, motionEvent);
                return m43692U0;
            }
        });
        TintImageView ivExpand = m43740J0().ivExpand;
        Intrinsics.checkNotNullExpressionValue(ivExpand, "ivExpand");
        ViewKt.click$default(ivExpand, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.j4k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTopContainerFragment.m43693V0(NoteTopContainerFragment.this, view);
            }
        }, 1, null);
        TintImageView ivDisplayType = m43740J0().ivDisplayType;
        Intrinsics.checkNotNullExpressionValue(ivDisplayType, "ivDisplayType");
        ViewKt.click$default(ivDisplayType, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.k4k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTopContainerFragment.m43694W0(NoteTopContainerFragment.this, view);
            }
        }, 1, null);
        TintImageView ivSortType = m43740J0().ivSortType;
        Intrinsics.checkNotNullExpressionValue(ivSortType, "ivSortType");
        ViewKt.click$default(ivSortType, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.l4k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTopContainerFragment.m43695X0(NoteTopContainerFragment.this, view);
            }
        }, 1, null);
        TintImageView ivSelector = m43740J0().ivSelector;
        Intrinsics.checkNotNullExpressionValue(ivSelector, "ivSelector");
        ViewKt.click$default(ivSelector, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.m4k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTopContainerFragment.m43696Y0(NoteTopContainerFragment.this, view);
            }
        }, 1, null);
        TintImageView startSync = m43740J0().startSync;
        Intrinsics.checkNotNullExpressionValue(startSync, "startSync");
        ViewKt.click$default(startSync, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.n4k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTopContainerFragment.m43697Z0(NoteTopContainerFragment.this, view);
            }
        }, 1, null);
        TintConstraintLayout llOpDelete = m43740J0().llOpDelete;
        Intrinsics.checkNotNullExpressionValue(llOpDelete, "llOpDelete");
        ViewKt.click$default(llOpDelete, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.o4k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTopContainerFragment.m43698a1(view);
            }
        }, 1, null);
        TintConstraintLayout llOpMove = m43740J0().llOpMove;
        Intrinsics.checkNotNullExpressionValue(llOpMove, "llOpMove");
        ViewKt.click$default(llOpMove, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.p4k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTopContainerFragment.m43699b1(NoteTopContainerFragment.this, view);
            }
        }, 1, null);
        TintConstraintLayout llOpCopy = m43740J0().llOpCopy;
        Intrinsics.checkNotNullExpressionValue(llOpCopy, "llOpCopy");
        ViewKt.click$default(llOpCopy, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.q4k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTopContainerFragment.m43700c1(NoteTopContainerFragment.this, view);
            }
        }, 1, null);
        TintConstraintLayout llOpExport = m43740J0().llOpExport;
        Intrinsics.checkNotNullExpressionValue(llOpExport, "llOpExport");
        ViewKt.click$default(llOpExport, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.r4k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTopContainerFragment.m43701d1(NoteTopContainerFragment.this, view);
            }
        }, 1, null);
        TintConstraintLayout llOpLock = m43740J0().llOpLock;
        Intrinsics.checkNotNullExpressionValue(llOpLock, "llOpLock");
        ViewKt.click$default(llOpLock, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.s4k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTopContainerFragment.m43702e1(view);
            }
        }, 1, null);
        TintImageView ivMoreOperate = m43740J0().ivMoreOperate;
        Intrinsics.checkNotNullExpressionValue(ivMoreOperate, "ivMoreOperate");
        ViewKt.click$default(ivMoreOperate, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.t4k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTopContainerFragment.m43703f1(NoteTopContainerFragment.this, view);
            }
        }, 1, null);
        TintConstraintLayout llDustBinOpDelete = m43740J0().llDustBinOpDelete;
        Intrinsics.checkNotNullExpressionValue(llDustBinOpDelete, "llDustBinOpDelete");
        ViewKt.click$default(llDustBinOpDelete, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.u4k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTopContainerFragment.m43704g1(view);
            }
        }, 1, null);
        TintConstraintLayout llDustBinOpRestore = m43740J0().llDustBinOpRestore;
        Intrinsics.checkNotNullExpressionValue(llDustBinOpRestore, "llDustBinOpRestore");
        ViewKt.click$default(llDustBinOpRestore, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.v4k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTopContainerFragment.m43705h1(view);
            }
        }, 1, null);
        TintTextView tvToggleSelAll = m43740J0().tvToggleSelAll;
        Intrinsics.checkNotNullExpressionValue(tvToggleSelAll, "tvToggleSelAll");
        ViewKt.click$default(tvToggleSelAll, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.w4k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTopContainerFragment.m43706i1(view);
            }
        }, 1, null);
        TintImageView ivSetting = m43740J0().ivSetting;
        Intrinsics.checkNotNullExpressionValue(ivSetting, "ivSetting");
        ViewKt.click$default(ivSetting, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.x4k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTopContainerFragment.m43707j1(NoteTopContainerFragment.this, view);
            }
        }, 1, null);
        TintImageView ivLibrary = m43740J0().ivLibrary;
        Intrinsics.checkNotNullExpressionValue(ivLibrary, "ivLibrary");
        ViewKt.click$default(ivLibrary, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.y4k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTopContainerFragment.m43708k1(view);
            }
        }, 1, null);
        TintTextView tvTitleCenter = m43740J0().tvTitleCenter;
        Intrinsics.checkNotNullExpressionValue(tvTitleCenter, "tvTitleCenter");
        ViewKt.click$default(tvTitleCenter, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.z4k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTopContainerFragment.m43710l1(NoteTopContainerFragment.this, view);
            }
        }, 1, null);
    }

    /* renamed from: S1 */
    public final void m43759S1() {
        List<TintTextView> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TintTextView[]{m43740J0().tvOpMove, m43740J0().tvOpCopy, m43740J0().tvOpLock, m43740J0().tvOpExport, m43740J0().tvOpDelete, m43740J0().tvDustBinOpDelete, m43740J0().tvDustBinOpRestore});
        for (TintTextView tintTextView : listOf) {
            ResManager resManager = ResManager.INSTANCE;
            tintTextView.setTextSize(0, resManager.getDimension(C7384R.dimen.sp_14));
            Intrinsics.checkNotNull(tintTextView);
            ViewGroup.LayoutParams layoutParams = tintTextView.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.height = resManager.getDimens(C7384R.dimen.dp_40);
            tintTextView.setLayoutParams(marginLayoutParams);
            ViewGroup.LayoutParams layoutParams2 = tintTextView.getLayoutParams();
            if (layoutParams2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            }
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
            marginLayoutParams2.setMarginStart(resManager.getDimens(C7384R.dimen.dp_8));
            tintTextView.setLayoutParams(marginLayoutParams2);
        }
    }

    /* renamed from: T1 */
    public final void m43760T1() {
        List<ViewGroup> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TintConstraintLayout[]{m43740J0().llOpMenu, m43740J0().llDustBinOpMenu});
        for (ViewGroup viewGroup : listOf) {
            Intrinsics.checkNotNull(viewGroup);
            ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            ResManager resManager = ResManager.INSTANCE;
            marginLayoutParams.topMargin = resManager.getDimens(C7384R.dimen.dp_16);
            marginLayoutParams.height = resManager.getDimens(C7384R.dimen.dp_40);
            viewGroup.setLayoutParams(marginLayoutParams);
            m43751O1(viewGroup, C7384R.dimen.dp_8);
        }
    }

    /* renamed from: U1 */
    public final void m43761U1() {
        int i;
        Pair m61535to = TuplesKt.m61535to(m43744L0().getSortType().getValue(), m43744L0().getOrderType().getValue());
        SortBy sortBy = SortBy.UpdateAt;
        SortOrder sortOrder = SortOrder.Asc;
        if (Intrinsics.areEqual(m61535to, TuplesKt.m61535to(sortBy, sortOrder))) {
            i = C10651R.drawable.icon_note_sort_update_asc;
        } else {
            SortOrder sortOrder2 = SortOrder.Desc;
            if (Intrinsics.areEqual(m61535to, TuplesKt.m61535to(sortBy, sortOrder2))) {
                i = C10651R.drawable.icon_note_sort_update_desc;
            } else {
                SortBy sortBy2 = SortBy.CreationTime;
                if (Intrinsics.areEqual(m61535to, TuplesKt.m61535to(sortBy2, sortOrder))) {
                    i = C10651R.drawable.icon_note_sort_create_asc;
                } else if (Intrinsics.areEqual(m61535to, TuplesKt.m61535to(sortBy2, sortOrder2))) {
                    i = C10651R.drawable.icon_note_sort_create_desc;
                } else {
                    SortBy sortBy3 = SortBy.Name;
                    if (Intrinsics.areEqual(m61535to, TuplesKt.m61535to(sortBy3, sortOrder))) {
                        i = C10651R.drawable.icon_note_sort_name_asc;
                    } else if (Intrinsics.areEqual(m61535to, TuplesKt.m61535to(sortBy3, sortOrder2))) {
                        i = C10651R.drawable.icon_note_sort_name_desc;
                    } else {
                        SortBy sortBy4 = SortBy.Manual;
                        i = Intrinsics.areEqual(m61535to, TuplesKt.m61535to(sortBy4, sortOrder2)) ? true : Intrinsics.areEqual(m61535to, TuplesKt.m61535to(sortBy4, sortOrder)) ? C10651R.drawable.icon_note_sort_custom : C10651R.drawable.icon_note_sort_update_desc;
                    }
                }
            }
        }
        Drawable themeDrawable = ThemeUtils.getThemeDrawable(i);
        themeDrawable.setBounds(0, 0, themeDrawable.getIntrinsicWidth(), themeDrawable.getIntrinsicHeight());
        m43740J0().ivSortType.setImageDrawable(themeDrawable);
    }

    /* renamed from: V1 */
    public final void m43762V1() {
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(m43740J0().progressSync, !m43744L0().isSyncFinished());
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(m43740J0().startSync, m43744L0().isSyncFinished());
        m43740J0().progressSync.setProgressCompat(m43744L0().getSyncProgress(), false);
    }

    /* renamed from: W1 */
    public final void m43763W1() {
        TintTextView tintTextView = m43740J0().tvTitle;
        ResManager resManager = ResManager.INSTANCE;
        tintTextView.setTextSize(0, resManager.getDimension(C7384R.dimen.sp_20));
        Drawable themeDrawable = Intrinsics.areEqual(m43744L0().isTopLevel().getValue(), Boolean.TRUE) ? null : ThemeUtils.getThemeDrawable(C10651R.drawable.icon_goto_up_back);
        if (themeDrawable != null) {
            themeDrawable.setTint(ThemeUtils.getColorById(C7996R.color.theme_text_color_01));
        }
        int dimens = resManager.getDimens(C7384R.dimen.dp_40);
        if (themeDrawable != null) {
            themeDrawable.setBounds(0, 0, dimens, dimens);
        }
        tintTextView.setCompoundDrawablesRelative(themeDrawable, null, null, null);
    }

    /* renamed from: X1 */
    public final void m43764X1() {
        TintTextView tintTextView = m43740J0().tvTitleCenter;
        Boolean value = m43744L0().isTopLevel().getValue();
        Intrinsics.checkNotNull(value);
        boolean booleanValue = value.booleanValue();
        Boolean value2 = m43744L0().isShowSlideMenu().getValue();
        Intrinsics.checkNotNull(value2);
        Drawable themeDrawable = (booleanValue || value2.booleanValue()) ? null : ThemeUtils.getThemeDrawable(C10651R.drawable.icon_show_path);
        Drawable themeDrawable2 = booleanValue ? null : ThemeUtils.getThemeDrawable(C10651R.drawable.icon_goto_up_back);
        ResManager resManager = ResManager.INSTANCE;
        int dimens = resManager.getDimens(C7384R.dimen.dp_40);
        int dimens2 = resManager.getDimens(C7384R.dimen.dp_24);
        if (themeDrawable != null) {
            themeDrawable.setBounds(0, 0, dimens2, dimens2);
        }
        if (themeDrawable2 != null) {
            themeDrawable2.setBounds(0, 0, dimens, dimens);
        }
        if (themeDrawable != null) {
            themeDrawable.setTint(ThemeUtils.getColorById(C7996R.color.theme_text_color_01));
        }
        if (themeDrawable2 != null) {
            themeDrawable2.setTint(ThemeUtils.getColorById(C7996R.color.theme_text_color_01));
        }
        tintTextView.setCompoundDrawablesRelative(themeDrawable2, null, themeDrawable, null);
        tintTextView.setTextSize(0, resManager.getDimension(C7384R.dimen.sp_20));
    }

    /* renamed from: Y1 */
    public final void m43765Y1() {
        List<? extends View> list;
        List<? extends View> list2;
        List<? extends View> list3;
        List<? extends View> listOf;
        Guideline guideline = m43740J0().guideline1;
        ResManager resManager = ResManager.INSTANCE;
        guideline.setGuidelineBegin(resManager.getDimens(C7384R.dimen.dp_208));
        m43740J0().guideline2.setGuidelineEnd(resManager.getDimens(C7384R.dimen.dp_208));
        LinearLayout llTitleLeftFunctionContainer = m43740J0().llTitleLeftFunctionContainer;
        Intrinsics.checkNotNullExpressionValue(llTitleLeftFunctionContainer, "llTitleLeftFunctionContainer");
        list = SequencesKt___SequencesKt.toList(ViewGroupKt.getChildren(llTitleLeftFunctionContainer));
        LinearLayout llTitleLeftFunctionContainer2 = m43740J0().llTitleLeftFunctionContainer;
        Intrinsics.checkNotNullExpressionValue(llTitleLeftFunctionContainer2, "llTitleLeftFunctionContainer");
        ViewGroup.LayoutParams layoutParams = llTitleLeftFunctionContainer2.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.setMarginStart(resManager.getDimens(C7384R.dimen.dp_24));
        marginLayoutParams.topMargin = resManager.getDimens(C7384R.dimen.dp_28);
        llTitleLeftFunctionContainer2.setLayoutParams(marginLayoutParams);
        m43753P1(list, resManager.getDimens(C7384R.dimen.dp_10));
        m43755Q1(list, resManager.getDimens(C7384R.dimen.dp_40));
        LinearLayout llTitleRightFunctionContainer = m43740J0().llTitleRightFunctionContainer;
        Intrinsics.checkNotNullExpressionValue(llTitleRightFunctionContainer, "llTitleRightFunctionContainer");
        list2 = SequencesKt___SequencesKt.toList(ViewGroupKt.getChildren(llTitleRightFunctionContainer));
        LinearLayout llTitleRightFunctionContainer2 = m43740J0().llTitleRightFunctionContainer;
        Intrinsics.checkNotNullExpressionValue(llTitleRightFunctionContainer2, "llTitleRightFunctionContainer");
        ViewGroup.LayoutParams layoutParams2 = llTitleRightFunctionContainer2.getLayoutParams();
        if (layoutParams2 == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        }
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
        marginLayoutParams2.setMarginStart(resManager.getDimens(C7384R.dimen.dp_16));
        marginLayoutParams2.topMargin = resManager.getDimens(C7384R.dimen.dp_28);
        llTitleRightFunctionContainer2.setLayoutParams(marginLayoutParams2);
        m43753P1(list2, resManager.getDimens(C7384R.dimen.dp_8));
        FrameLayout ivCloud = m43740J0().ivCloud;
        Intrinsics.checkNotNullExpressionValue(ivCloud, "ivCloud");
        list3 = SequencesKt___SequencesKt.toList(ViewGroupKt.getChildren(ivCloud));
        m43755Q1(list3, resManager.getDimens(C7384R.dimen.dp_40));
        m43755Q1(list2, resManager.getDimens(C7384R.dimen.dp_40));
        m43763W1();
        m43764X1();
        m43749N1();
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TintImageView[]{m43740J0().ivOpMove, m43740J0().ivOpCopy, m43740J0().ivOpLock, m43740J0().ivOpExport, m43740J0().ivOpDelete, m43740J0().ivDustBinOpDelete, m43740J0().ivDustBinOpRestore});
        m43759S1();
        m43755Q1(listOf, resManager.getDimens(C7384R.dimen.dp_24));
        m43757R1();
        m43760T1();
    }

    /* renamed from: Z1 */
    public final void m43766Z1() {
        Boolean value = m43744L0().getAllowCloudSync().getValue();
        Intrinsics.checkNotNull(value);
        boolean booleanValue = value.booleanValue();
        Boolean value2 = m43744L0().isHalfInMultiWindowMode().getValue();
        Intrinsics.checkNotNull(value2);
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(m43740J0().ivCloud, (!booleanValue || m43770o1() || value2.booleanValue()) ? false : true);
    }

    /* renamed from: a2 */
    public final void m43767a2() {
        if (Intrinsics.areEqual(m43744L0().isHalfInMultiWindowMode().getValue(), Boolean.TRUE)) {
            TintImageView ivSortType = m43740J0().ivSortType;
            Intrinsics.checkNotNullExpressionValue(ivSortType, "ivSortType");
            ivSortType.setVisibility(8);
        } else {
            boolean m43770o1 = m43770o1();
            TintImageView ivSortType2 = m43740J0().ivSortType;
            Intrinsics.checkNotNullExpressionValue(ivSortType2, "ivSortType");
            ivSortType2.setVisibility(m43770o1 ^ true ? 0 : 8);
        }
    }

    /* renamed from: m1 */
    public final void m43768m1() {
        m43757R1();
        m43760T1();
    }

    /* renamed from: n1 */
    public final void m43769n1() {
        m43744L0().getSelectList().observe(requireActivity(), new C11340a(new Function1<NoteModelBeanList, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTopContainerFragment$initViewModel$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NoteModelBeanList noteModelBeanList) {
                invoke2(noteModelBeanList);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(NoteModelBeanList noteModelBeanList) {
                NoteListViewModel m43744L0;
                m43744L0 = NoteTopContainerFragment.this.m43744L0();
                FilterInfo value = m43744L0.getFilterInfo().getValue();
                boolean z = false;
                if (value != null && value.getType() == 8) {
                    z = true;
                }
                if (z) {
                    NoteTopContainerFragment noteTopContainerFragment = NoteTopContainerFragment.this;
                    Intrinsics.checkNotNull(noteModelBeanList);
                    noteTopContainerFragment.m43741J1(noteModelBeanList);
                } else {
                    NoteTopContainerFragment noteTopContainerFragment2 = NoteTopContainerFragment.this;
                    Intrinsics.checkNotNull(noteModelBeanList);
                    noteTopContainerFragment2.m43743K1(noteModelBeanList);
                }
            }
        }));
        m43744L0().isTopLevel().observe(requireActivity(), new C11340a(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTopContainerFragment$initViewModel$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke2(bool);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Boolean bool) {
                NoteTopContainerFragment.this.m43763W1();
            }
        }));
        m43744L0().isTopAndIsExpanded().observe(requireActivity(), new C11340a(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTopContainerFragment$initViewModel$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke2(bool);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Boolean bool) {
                NoteTopContainerFragment.this.m43764X1();
            }
        }));
        m43744L0().getFilterInfo().observe(requireActivity(), new C11340a(new Function1<FilterInfo, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTopContainerFragment$initViewModel$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(FilterInfo filterInfo) {
                invoke2(filterInfo);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(FilterInfo filterInfo) {
                NoteTopContainerFragment.this.m43745L1();
            }
        }));
        m43744L0().isMulSelect().observe(requireActivity(), new C11340a(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTopContainerFragment$initViewModel$5
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke2(bool);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Boolean bool) {
                NoteTopContainerFragment.this.m43745L1();
            }
        }));
        m43744L0().getAllowCloudSync().observe(requireActivity(), new C11340a(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTopContainerFragment$initViewModel$6
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke2(bool);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Boolean bool) {
                NoteTopContainerFragment.this.m43745L1();
            }
        }));
        m43744L0().isHalfInMultiWindowMode().observe(requireActivity(), new C11340a(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTopContainerFragment$initViewModel$7
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke2(bool);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Boolean bool) {
                NoteTopContainerFragment.this.m43745L1();
            }
        }));
        m43744L0().getOrderType().observe(requireActivity(), new C11340a(new Function1<SortOrder, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTopContainerFragment$initViewModel$8
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SortOrder sortOrder) {
                invoke2(sortOrder);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(SortOrder sortOrder) {
                NoteTopContainerFragment.this.m43761U1();
            }
        }));
        m43744L0().getSortType().observe(requireActivity(), new C11340a(new Function1<SortBy, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTopContainerFragment$initViewModel$9
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SortBy sortBy) {
                invoke2(sortBy);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(SortBy sortBy) {
                NoteTopContainerFragment.this.m43761U1();
            }
        }));
        m43744L0().checkCloudSyncCondition();
        m43744L0().getCurrTitle().observe(requireActivity(), new C11340a(new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTopContainerFragment$initViewModel$10
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable String str) {
                FragmentNoteTopContainerBinding m43740J0;
                FragmentNoteTopContainerBinding m43740J02;
                m43740J0 = NoteTopContainerFragment.this.m43740J0();
                m43740J0.tvTitle.setText(str);
                m43740J02 = NoteTopContainerFragment.this.m43740J0();
                m43740J02.tvTitleCenter.setText(str);
            }
        }));
    }

    /* renamed from: o1 */
    public final boolean m43770o1() {
        FilterInfo value = m43744L0().getFilterInfo().getValue();
        Intrinsics.checkNotNull(value);
        return value.getType() == 8;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAccountChanged(@NotNull LoginAccountChanged event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43744L0().checkCloudSyncCondition();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        m43765Y1();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063316, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        m43740J0().setLifecycleOwner(getViewLifecycleOwner());
        m43740J0().setViewModel(m43744L0());
        View root = m43740J0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNetworkChange(@NotNull NetworkStatusChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getConnected()) {
            m43744L0().checkCloudSyncCondition();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onResetOptionsMenuEvent(@NotNull ResetMultiOptionMenuEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        FilterInfo value = m43744L0().getFilterInfo().getValue();
        boolean z = false;
        if (value != null && value.getType() == 8) {
            z = true;
        }
        NoteModelBeanList value2 = m43744L0().getSelectList().getValue();
        Intrinsics.checkNotNull(value2);
        value2.clear();
        m43744L0().isMulSelect().setValue(Boolean.FALSE);
        if (z) {
            m43726A1();
        } else {
            m43727B1();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTotalSyncNoteProgressEvent(@NotNull TotalSyncNoteProgressEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43744L0().setSyncProgress(event.getProgress());
        m43762V1();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m43768m1();
        m43769n1();
        m43758S0();
        m43744L0().updateCurrFilterTitle();
    }

    /* renamed from: p1 */
    public final boolean m43771p1(MotionEvent event, TextView textView) {
        if (ViewExtKt.isLayoutDirectionRtl(textView)) {
            if (event.getX() <= textView.getTotalPaddingLeft()) {
                return true;
            }
        } else if (event.getX() >= textView.getWidth() - textView.getTotalPaddingRight()) {
            return true;
        }
        return false;
    }

    /* renamed from: q1 */
    public final boolean m43772q1(MotionEvent event, TextView textView) {
        if (ViewExtKt.isLayoutDirectionRtl(textView)) {
            if (event.getX() >= textView.getWidth() - textView.getTotalPaddingRight()) {
                return true;
            }
        } else if (event.getX() <= textView.getTotalPaddingLeft()) {
            return true;
        }
        return false;
    }

    /* renamed from: r1 */
    public final void m43773r1() {
        m43744L0().initList();
    }

    /* renamed from: s1 */
    public final void m43774s1(boolean isEnable, boolean hasEncryption) {
        String string;
        Drawable themeDrawable;
        m43740J0().tvOpLock.setEnabled(isEnable);
        m43740J0().ivOpLock.setEnabled(isEnable);
        m43740J0().llOpLock.setEnabled(isEnable);
        if (hasEncryption) {
            string = ResManager.INSTANCE.getString(C10651R.string.popup_note_list_unlock);
            themeDrawable = ThemeUtils.getThemeDrawable(C10651R.drawable.icon_note_list_unlock);
            Intrinsics.checkNotNullExpressionValue(themeDrawable, "getThemeDrawable(...)");
        } else {
            string = ResManager.INSTANCE.getString(C10651R.string.popup_note_list_lock);
            themeDrawable = ThemeUtils.getThemeDrawable(C10651R.drawable.icon_note_list_lock);
            Intrinsics.checkNotNullExpressionValue(themeDrawable, "getThemeDrawable(...)");
        }
        themeDrawable.setBounds(0, 0, themeDrawable.getIntrinsicWidth(), themeDrawable.getIntrinsicHeight());
        m43740J0().ivOpLock.setImageDrawable(themeDrawable);
        m43740J0().tvOpLock.setText(string);
    }

    /* renamed from: u1 */
    public final void m43775u1(boolean isEnable) {
        m43740J0().tvOpMove.setEnabled(isEnable);
        m43740J0().ivOpMove.setEnabled(isEnable);
        m43740J0().llOpMove.setEnabled(isEnable);
    }

    /* renamed from: v1 */
    public final void m43776v1() {
        TintTextView tvToggleSelAll = m43740J0().tvToggleSelAll;
        Intrinsics.checkNotNullExpressionValue(tvToggleSelAll, "tvToggleSelAll");
        tvToggleSelAll.setVisibility(Debug.INSTANCE.getDebug() ? 0 : 8);
        NoteModelBeanList value = m43744L0().getSelectList().getValue();
        if (value == null || value.isEmpty()) {
            m43740J0().tvToggleSelAll.setText(ResManager.INSTANCE.getString(C10651R.string.option_select_all));
        } else {
            m43740J0().tvToggleSelAll.setText(ResManager.INSTANCE.getString(C10651R.string.option_deselect_all));
        }
    }

    /* renamed from: w1 */
    public final void m43777w1() {
        Map<String, ? extends Object> m43742K0 = m43742K0();
        NoteDisplayType value = m43744L0().getDisplayType().getValue();
        m43742K0.put(OnyxStatisticConstant.KEY_HOMEPAGES_SHOW, Integer.valueOf(BooleanKt.toInteger(value != null ? Boolean.valueOf(value.isGrid()) : null)));
        StatisticsBundle.INSTANCE.reportEvent(OnyxStatisticConstant.ID_TOP_ICON_DISPLAY_TYPE_CLICK, m43742K0);
    }

    /* renamed from: x1 */
    public final void m43778x1(String eventId) {
        StatisticsBundle.reportEvent$default(StatisticsBundle.INSTANCE, eventId, null, 2, null);
    }

    /* renamed from: y1 */
    public final void m43779y1() {
        StatisticsBundle.INSTANCE.reportEvent(OnyxStatisticConstant.ID_TOP_ICON_BATCH_CLICK, m43742K0());
    }

    /* renamed from: z1 */
    public final void m43780z1() {
        Map<String, ? extends Object> m43742K0 = m43742K0();
        StringBuilder sb = new StringBuilder();
        SortBy value = m43744L0().getSortType().getValue();
        Intrinsics.checkNotNull(value);
        String name = value.name();
        Locale locale = Locale.ROOT;
        String lowerCase = name.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        sb.append(lowerCase);
        sb.append(NameUtil.USCORE);
        SortOrder value2 = m43744L0().getOrderType().getValue();
        Intrinsics.checkNotNull(value2);
        String lowerCase2 = value2.name().toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
        sb.append(lowerCase2);
        m43742K0.put(OnyxStatisticConstant.KEY_HOMEPAGE_SORT, sb.toString());
        StatisticsBundle.INSTANCE.reportEvent(OnyxStatisticConstant.ID_TOP_ICON_SORT_CLICK, m43742K0);
    }
}
