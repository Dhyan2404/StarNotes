package com.onyx.galaxy.note.editor.p046ui;

import android.content.res.Configuration;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.KeyboardUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.material.tabs.TabLayout;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.device.DeviceFactory;
import com.onyx.android.sdk.device.IScreen;
import com.onyx.android.sdk.event.StatisticsDocSidebarEvent;
import com.onyx.android.sdk.event.StatisticsFullDocSidebarEvent;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRadioButton;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.events.app.EditorBundleChangedEvent;
import com.onyx.android.sdk.universal.editor.events.app.NoteTabDataChangedEvent;
import com.onyx.android.sdk.universal.editor.events.note.AddEvent;
import com.onyx.android.sdk.universal.editor.events.note.AllDataSelectedEvent;
import com.onyx.android.sdk.universal.editor.events.note.EnterSelectionModeEvent;
import com.onyx.android.sdk.universal.editor.events.note.PageThumbnailSizeChangedEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitSelectionModeEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectAllDataEvent;
import com.onyx.android.sdk.universal.editor.events.note.SplitScreenShowQuoteEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.NoteOutlineType;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.extension.TabLayoutKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.FragmentNoteSidebarBinding;
import com.onyx.galaxy.note.editor.data.ThumbnailSizeType;
import com.onyx.galaxy.note.editor.event.EditExcerptCommentArgs;
import com.onyx.galaxy.note.editor.event.EditExcerptCommentEvent;
import com.onyx.galaxy.note.editor.event.SidebarVisibleLevelChangedEvent;
import com.onyx.galaxy.note.editor.p046ui.NoteOutlineFragment;
import com.onyx.galaxy.note.p048ui.view.SlideTintTabLayout;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000¦\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0018\u0018\u0000 v2\u00020\u0001:\u0002vwB\u0007¢\u0006\u0004\bt\u0010uJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002J\b\u0010\u000b\u001a\u00020\u0004H\u0002J\b\u0010\f\u001a\u00020\u0004H\u0002J\b\u0010\r\u001a\u00020\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0011\u001a\u00020\u0004H\u0002J\b\u0010\u0012\u001a\u00020\u0002H\u0002J\b\u0010\u0013\u001a\u00020\u0004H\u0002J\b\u0010\u0014\u001a\u00020\u0004H\u0002J\b\u0010\u0015\u001a\u00020\u0004H\u0002J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0002H\u0002J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0002H\u0002J\b\u0010\u0019\u001a\u00020\u0002H\u0002J\b\u0010\u001a\u001a\u00020\u0002H\u0002J\b\u0010\u001b\u001a\u00020\u0004H\u0002J\u0010\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u0010\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\b\u0010 \u001a\u00020\u0004H\u0002J\u0011\u0010!\u001a\u0004\u0018\u00010\u000eH\u0002¢\u0006\u0004\b!\u0010\"J#\u0010&\u001a\u00020\u00042\u0006\u0010$\u001a\u00020#2\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u000eH\u0002¢\u0006\u0004\b&\u0010'J\n\u0010(\u001a\u0004\u0018\u00010\tH\u0002J$\u00100\u001a\u00020/2\u0006\u0010*\u001a\u00020)2\b\u0010,\u001a\u0004\u0018\u00010+2\b\u0010.\u001a\u0004\u0018\u00010-H\u0016J\u000e\u00102\u001a\u00020\u00042\u0006\u00101\u001a\u00020\u000eJ\u000e\u00104\u001a\u00020\u00042\u0006\u00103\u001a\u00020\u001cJ\u000e\u00106\u001a\u00020\u00042\u0006\u00105\u001a\u00020\u001cJ\u0010\u00108\u001a\u00020\u00042\b\b\u0002\u00107\u001a\u00020\u000eJ\u0014\u0010;\u001a\u00020\u00042\f\u0010:\u001a\b\u0012\u0004\u0012\u00020\u000409J\u001a\u0010=\u001a\u00020\u00042\u0006\u0010<\u001a\u00020/2\b\u0010.\u001a\u0004\u0018\u00010-H\u0016J\u0010\u0010@\u001a\u00020\u00042\u0006\u0010?\u001a\u00020>H\u0016J\b\u0010A\u001a\u00020\u0004H\u0016J\u0010\u0010D\u001a\u00020\u00042\u0006\u0010C\u001a\u00020BH\u0007J\u0010\u0010F\u001a\u00020\u00042\u0006\u0010C\u001a\u00020EH\u0007J\u0010\u0010H\u001a\u00020\u00042\u0006\u0010C\u001a\u00020GH\u0007J\u0010\u0010J\u001a\u00020\u00042\u0006\u0010C\u001a\u00020IH\u0007J\u0010\u0010L\u001a\u00020\u00042\u0006\u0010C\u001a\u00020KH\u0007J\u0010\u0010N\u001a\u00020\u00042\u0006\u0010C\u001a\u00020MH\u0007J\u0010\u0010P\u001a\u00020\u00042\u0006\u0010C\u001a\u00020OH\u0007J\u0010\u0010R\u001a\u00020\u00042\u0006\u0010C\u001a\u00020QH\u0007R\u001b\u0010X\u001a\u00020S8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bT\u0010U\u001a\u0004\bV\u0010WR\"\u0010_\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\\"\u0004\b]\u0010^R$\u0010g\u001a\u0004\u0018\u00010`8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\ba\u0010b\u001a\u0004\bc\u0010d\"\u0004\be\u0010fR\u0016\u00103\u001a\u00020\u001c8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bh\u0010iR\u0016\u00105\u001a\u00020\u001c8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bj\u0010iR\u0016\u0010m\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010lR\u0016\u00107\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010lR\u001c\u0010q\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010pR\u001c\u0010:\u001a\b\u0012\u0004\u0012\u00020\u0004098\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\br\u0010s¨\u0006x"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "", "H0", "", "J0", "C0", "R0", "", "Lcom/onyx/galaxy/note/category/data/NoteOutlineType;", "B0", "K0", "Z0", "Q0", "", "pageIndex", "U0", "b1", "T0", "x0", "W0", "X0", "selectionMode", "Y0", "a1", "S0", "I0", "V0", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "newEditorBundle", "P0", "t0", "M0", "w0", "()Ljava/lang/Integer;", "", "eventId", "triggerFrom", "N0", "(Ljava/lang/String;Ljava/lang/Integer;)V", "v0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "level", "setCurrentVisibleLevel", "editorBundle", "setEditBundle", "docManagerBundle", "setDocManagerBundle", "switchPageIndex", "setSwitchPageIndex", "Lkotlin/Function0;", "closeAction", "setCloseAction", "view", "onViewCreated", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "onDestroyView", "Lcom/onyx/android/sdk/universal/editor/events/note/QuitSelectionModeEvent;", NotificationCompat.CATEGORY_EVENT, "onQuitSelectionModeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/EnterSelectionModeEvent;", "onEnterSelectionModeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;", "onSplitScreenShowQuoteEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/AllDataSelectedEvent;", "onAllDataSelectedEvent", "Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentEvent;", "onEditExcerptCommentEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/NoteTabDataChangedEvent;", "onNoteTabDataChangedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/EditorBundleChangedEvent;", "onEditorBundleChangedEvent", "Lcom/onyx/galaxy/note/editor/event/SidebarVisibleLevelChangedEvent;", "onSidebarVisibleLevelChangedEvent", "Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;", "d1", "Lkotlin/Lazy;", "u0", "()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;", "binding", "e1", Constants.HASIDCALL_INDEX_SIG, "getFullScreen", Constants.BOOLEAN_VALUE_SIG, "setFullScreen", "(Z)V", "fullScreen", "Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentArgs;", "f1", "Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentArgs;", "getEditExcerptCommentArgs", "()Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentArgs;", "setEditExcerptCommentArgs", "(Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentArgs;)V", "editExcerptCommentArgs", "g1", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "h1", "i1", "I", "currentVisibleLevel", "j1", "k1", "Ljava/util/List;", "tabList", "l1", "Lkotlin/jvm/functions/Function0;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "ViewPagerFragmentAdapter", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteOutlineFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteOutlineFragment.kt\ncom/onyx/galaxy/note/editor/ui/NoteOutlineFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,601:1\n1#2:602\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteOutlineFragment extends BaseFragment {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: m1 */
    @NotNull
    public static NoteOutlineType f59109m1 = NoteOutlineType.DocOverview;

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e1, reason: from kotlin metadata */
    public boolean fullScreen;

    /* renamed from: f1, reason: from kotlin metadata */
    @Nullable
    public EditExcerptCommentArgs editExcerptCommentArgs;

    /* renamed from: g1, reason: from kotlin metadata */
    public EditorBundle editorBundle;

    /* renamed from: h1, reason: from kotlin metadata */
    public EditorBundle docManagerBundle;

    /* renamed from: i1, reason: from kotlin metadata */
    public int currentVisibleLevel;

    /* renamed from: j1, reason: from kotlin metadata */
    public int switchPageIndex;

    /* renamed from: k1, reason: from kotlin metadata */
    @NotNull
    public List<NoteOutlineType> tabList;

    /* renamed from: l1, reason: from kotlin metadata */
    public Function0<Unit> closeAction;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$Companion;", "", "()V", "lastOutlineType", "Lcom/onyx/galaxy/note/category/data/NoteOutlineType;", "getLastOutlineType", "()Lcom/onyx/galaxy/note/category/data/NoteOutlineType;", "setLastOutlineType", "(Lcom/onyx/galaxy/note/category/data/NoteOutlineType;)V", "clearLastOutlineType", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void clearLastOutlineType() {
            setLastOutlineType(NoteOutlineType.DocOverview);
        }

        @NotNull
        public final NoteOutlineType getLastOutlineType() {
            return NoteOutlineFragment.f59109m1;
        }

        public final void setLastOutlineType(@NotNull NoteOutlineType noteOutlineType) {
            Intrinsics.checkNotNullParameter(noteOutlineType, "<set-?>");
            NoteOutlineFragment.f59109m1 = noteOutlineType;
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0002H\u0016R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$ViewPagerFragmentAdapter;", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "", "position", "Landroidx/fragment/app/Fragment;", "createFragment", "getItemCount", "", "Lcom/onyx/galaxy/note/category/data/NoteOutlineType;", C4921e.f26528e, "Ljava/util/List;", "sidebarTypes", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public final class ViewPagerFragmentAdapter extends FragmentStateAdapter {

        /* renamed from: o, reason: from kotlin metadata */
        @NotNull
        public final List<NoteOutlineType> sidebarTypes;

        /* renamed from: p */
        public final /* synthetic */ NoteOutlineFragment f59120p;

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes9.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[NoteOutlineType.values().length];
                try {
                    iArr[NoteOutlineType.DocOverview.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[NoteOutlineType.TOC.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[NoteOutlineType.PageBookmark.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[NoteOutlineType.Excerpt.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public ViewPagerFragmentAdapter(@NotNull NoteOutlineFragment noteOutlineFragment, List<? extends NoteOutlineType> sidebarTypes) {
            super(noteOutlineFragment);
            Intrinsics.checkNotNullParameter(sidebarTypes, "sidebarTypes");
            this.f59120p = noteOutlineFragment;
            this.sidebarTypes = sidebarTypes;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        @NotNull
        public Fragment createFragment(int position) {
            DraftDocOverviewFragment draftDocOverviewFragment;
            int i = WhenMappings.$EnumSwitchMapping$0[this.sidebarTypes.get(position).ordinal()];
            EditorBundle editorBundle = null;
            Function0 function0 = null;
            Function0 function02 = null;
            Function0 function03 = null;
            if (i == 1) {
                EditorBundle editorBundle2 = this.f59120p.editorBundle;
                if (editorBundle2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                    editorBundle2 = null;
                }
                if (EditorBundleKt.getUiFeature(editorBundle2).supportMultiPage()) {
                    DocOverviewFragment docOverviewFragment = new DocOverviewFragment();
                    NoteOutlineFragment noteOutlineFragment = this.f59120p;
                    EditorBundle editorBundle3 = noteOutlineFragment.editorBundle;
                    if (editorBundle3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                        editorBundle3 = null;
                    }
                    docOverviewFragment.setEditBundle(editorBundle3);
                    EditorBundle editorBundle4 = noteOutlineFragment.docManagerBundle;
                    if (editorBundle4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("docManagerBundle");
                        editorBundle4 = null;
                    }
                    docOverviewFragment.setDocManagerBundle(editorBundle4);
                    docOverviewFragment.setSelectable(noteOutlineFragment.getFullScreen());
                    docOverviewFragment.setThumbnailSizeType(NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getDocOverViewThumbnailSizeType());
                    Function0 function04 = noteOutlineFragment.closeAction;
                    if (function04 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("closeAction");
                    } else {
                        function03 = function04;
                    }
                    docOverviewFragment.setCloseOnSelect(function03);
                    docOverviewFragment.setCurrentVisibleLevel(noteOutlineFragment.currentVisibleLevel);
                    draftDocOverviewFragment = docOverviewFragment;
                } else {
                    DraftDocOverviewFragment draftDocOverviewFragment2 = new DraftDocOverviewFragment();
                    NoteOutlineFragment noteOutlineFragment2 = this.f59120p;
                    EditorBundle editorBundle5 = noteOutlineFragment2.editorBundle;
                    if (editorBundle5 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                    } else {
                        editorBundle = editorBundle5;
                    }
                    draftDocOverviewFragment2.setEditBundle(editorBundle);
                    draftDocOverviewFragment2.setCurrentVisibleLevel(noteOutlineFragment2.currentVisibleLevel);
                    draftDocOverviewFragment2.setSelectable(noteOutlineFragment2.getFullScreen());
                    draftDocOverviewFragment = draftDocOverviewFragment2;
                }
            } else if (i == 2) {
                DocTocFragment docTocFragment = new DocTocFragment();
                NoteOutlineFragment noteOutlineFragment3 = this.f59120p;
                EditorBundle editorBundle6 = noteOutlineFragment3.editorBundle;
                if (editorBundle6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                    editorBundle6 = null;
                }
                docTocFragment.setEditBundle(editorBundle6);
                docTocFragment.setSelectable(noteOutlineFragment3.getFullScreen());
                Function0 function05 = noteOutlineFragment3.closeAction;
                if (function05 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("closeAction");
                } else {
                    function02 = function05;
                }
                docTocFragment.setCloseOnSelect(function02);
                draftDocOverviewFragment = docTocFragment;
            } else if (i == 3) {
                DocBookmarkFragment docBookmarkFragment = new DocBookmarkFragment();
                NoteOutlineFragment noteOutlineFragment4 = this.f59120p;
                EditorBundle editorBundle7 = noteOutlineFragment4.editorBundle;
                if (editorBundle7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                    editorBundle7 = null;
                }
                docBookmarkFragment.setEditBundle(editorBundle7);
                docBookmarkFragment.setFullScreen(noteOutlineFragment4.getFullScreen());
                Function0 function06 = noteOutlineFragment4.closeAction;
                if (function06 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("closeAction");
                } else {
                    function0 = function06;
                }
                docBookmarkFragment.setCloseOnSelect(function0);
                draftDocOverviewFragment = docBookmarkFragment;
            } else {
                if (i != 4) {
                    return new BaseFragment();
                }
                DocExcerptFragment docExcerptFragment = new DocExcerptFragment();
                NoteOutlineFragment noteOutlineFragment5 = this.f59120p;
                EditorBundle editorBundle8 = noteOutlineFragment5.editorBundle;
                if (editorBundle8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                    editorBundle8 = null;
                }
                docExcerptFragment.setEditBundle(editorBundle8);
                docExcerptFragment.setSelectable(noteOutlineFragment5.getFullScreen());
                docExcerptFragment.setEditExcerptCommentArgs(noteOutlineFragment5.getEditExcerptCommentArgs());
                Function0 function07 = noteOutlineFragment5.closeAction;
                if (function07 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("closeAction");
                    function07 = null;
                }
                docExcerptFragment.setCloseOnSelect(function07);
                noteOutlineFragment5.setEditExcerptCommentArgs(null);
                draftDocOverviewFragment = docExcerptFragment;
            }
            return draftDocOverviewFragment;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return CollectionKt.getSize(this.sidebarTypes);
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NoteOutlineType.values().length];
            try {
                iArr[NoteOutlineType.DocOverview.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NoteOutlineType.TOC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NoteOutlineType.PageBookmark.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[NoteOutlineType.Excerpt.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public NoteOutlineFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentNoteSidebarBinding>() { // from class: com.onyx.galaxy.note.editor.ui.NoteOutlineFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentNoteSidebarBinding invoke() {
                FragmentNoteSidebarBinding inflate = FragmentNoteSidebarBinding.inflate(LayoutInflater.from(NoteOutlineFragment.this.getContext()));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
        this.currentVisibleLevel = 1;
        this.switchPageIndex = -1;
        this.tabList = new ArrayList();
    }

    /* renamed from: A0 */
    public static final void m46823A0(NoteOutlineFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46856X0();
    }

    /* renamed from: D0 */
    public static final void m46824D0(NoteOutlineFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ThumbnailSizeType thumbnailSizeType = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().toggleDocOverViewThumbnailSize();
        this$0.m46862u0().ivThumbSize.setBackgroundDrawable(ThemeUtils.getThemeDrawable(thumbnailSizeType.getImageRes()));
        EditorBundle editorBundle = this$0.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        EditorBundleKt.postEvent(editorBundle, new PageThumbnailSizeChangedEvent(thumbnailSizeType));
    }

    /* renamed from: E0 */
    public static final void m46825E0(NoteOutlineFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Function0<Unit> function0 = this$0.closeAction;
        if (function0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("closeAction");
            function0 = null;
        }
        function0.invoke();
    }

    /* renamed from: F0 */
    public static final void m46826F0(NoteOutlineFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundle editorBundle = this$0.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        EditorBundleKt.postEvent(editorBundle, new AddEvent());
    }

    /* renamed from: G0 */
    public static final void m46827G0(NoteOutlineFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46854V0();
    }

    /* renamed from: L0 */
    public static final void m46828L0(NoteOutlineFragment this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.getActivity() != null) {
            ViewKt.setViewVisibleOrGone(this$0.m46862u0().switchViewType, !KeyboardUtils.isSoftInputVisible(r1));
        }
    }

    /* renamed from: O0 */
    public static /* synthetic */ void m46829O0(NoteOutlineFragment noteOutlineFragment, String str, Integer num, int i, Object obj) {
        if ((i & 2) != 0) {
            num = null;
        }
        noteOutlineFragment.m46847N0(str, num);
    }

    public static /* synthetic */ void setSwitchPageIndex$default(NoteOutlineFragment noteOutlineFragment, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = -1;
        }
        noteOutlineFragment.setSwitchPageIndex(i);
    }

    /* renamed from: y0 */
    public static final void m46838y0(NoteOutlineFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Function0<Unit> function0 = this$0.closeAction;
        if (function0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("closeAction");
            function0 = null;
        }
        function0.invoke();
        this$0.m46847N0(OnyxStatisticConstant.ID_CLICK_SIDEBAR_FULLSCREENVIEW_CLOSE, this$0.m46864w0());
    }

    /* renamed from: z0 */
    public static final void m46839z0(NoteOutlineFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46855W0();
    }

    /* renamed from: B0 */
    public final List<NoteOutlineType> m46840B0() {
        List<NoteOutlineType> mutableList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) NoteOutlineType.getEntries());
        if (m46842H0()) {
            EditorBundle editorBundle = this.editorBundle;
            EditorBundle editorBundle2 = null;
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            if (!EditorBundleKt.getUiFeature(editorBundle).supportAddToOutline()) {
                mutableList.remove(NoteOutlineType.TOC);
            }
            EditorBundle editorBundle3 = this.editorBundle;
            if (editorBundle3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            } else {
                editorBundle2 = editorBundle3;
            }
            if (!EditorBundleKt.getUiFeature(editorBundle2).supportCreatePageLink()) {
                mutableList.remove(NoteOutlineType.PageBookmark);
            }
        }
        return mutableList;
    }

    /* renamed from: C0 */
    public final void m46841C0() {
        m46860b1();
        m46862u0().ivThumbSize.setBackgroundDrawable(ThemeUtils.getThemeDrawable(NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getDocOverViewThumbnailSizeType().getImageRes()));
        TintImageView ivThumbSize = m46862u0().ivThumbSize;
        Intrinsics.checkNotNullExpressionValue(ivThumbSize, "ivThumbSize");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivThumbSize, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.hzj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteOutlineFragment.m46824D0(NoteOutlineFragment.this, view);
            }
        }, 1, null);
        ViewKt.setViewVisibleOrGone(m46862u0().close, !this.fullScreen);
        TintImageView close = m46862u0().close;
        Intrinsics.checkNotNullExpressionValue(close, "close");
        com.onyx.android.sdk.extension.ViewKt.click$default(close, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.izj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteOutlineFragment.m46825E0(NoteOutlineFragment.this, view);
            }
        }, 1, null);
        TintImageView ivAdd = m46862u0().ivAdd;
        Intrinsics.checkNotNullExpressionValue(ivAdd, "ivAdd");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivAdd, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.jzj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteOutlineFragment.m46826F0(NoteOutlineFragment.this, view);
            }
        }, 1, null);
        TintTextView switchViewType = m46862u0().switchViewType;
        Intrinsics.checkNotNullExpressionValue(switchViewType, "switchViewType");
        com.onyx.android.sdk.extension.ViewKt.click$default(switchViewType, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.kzj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteOutlineFragment.m46827G0(NoteOutlineFragment.this, view);
            }
        }, 1, null);
        ViewKt.setViewVisibleOrGone(m46862u0().switchViewType, !this.fullScreen);
        m46862u0().tabLayout.removeAllTabs();
        this.tabList = m46840B0();
        TintTabLayoutView tabLayout = m46862u0().tabLayout;
        Intrinsics.checkNotNullExpressionValue(tabLayout, "tabLayout");
        TabLayoutKt.addNoteOutlineTabs(tabLayout, this.tabList, new Function1<TabLayout.Tab, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteOutlineFragment$initView$5
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TabLayout.Tab tab) {
                invoke2(tab);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull TabLayout.Tab it2) {
                FragmentNoteSidebarBinding m46862u0;
                FragmentNoteSidebarBinding m46862u02;
                Intrinsics.checkNotNullParameter(it2, "it");
                NoteOutlineFragment.this.m46853U0(it2.getPosition());
                Object tag = it2.getTag();
                Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.onyx.galaxy.note.category.data.NoteOutlineType");
                NoteOutlineType noteOutlineType = (NoteOutlineType) tag;
                m46862u0 = NoteOutlineFragment.this.m46862u0();
                m46862u0.title.setText(NoteOutlineFragment.this.requireContext().getString(noteOutlineType.getTitleResId()));
                m46862u02 = NoteOutlineFragment.this.m46862u0();
                ViewKt.setViewVisibleOrInvisible(m46862u02.ivAdd, !NoteOutlineFragment.this.getFullScreen() && noteOutlineType == NoteOutlineType.TOC);
                NoteOutlineFragment.INSTANCE.setLastOutlineType(noteOutlineType);
            }
        });
        m46862u0().fullscreenTabLayout.removeAllTabs();
        m46862u0().bottomTabLayout.removeAllTabs();
        SlideTintTabLayout fullscreenTabLayout = m46862u0().fullscreenTabLayout;
        Intrinsics.checkNotNullExpressionValue(fullscreenTabLayout, "fullscreenTabLayout");
        TabLayoutKt.addFullscreenNoteOutlineTabs(fullscreenTabLayout, this.tabList, new Function1<TabLayout.Tab, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteOutlineFragment$initView$6
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TabLayout.Tab tab) {
                invoke2(tab);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull TabLayout.Tab tab) {
                Intrinsics.checkNotNullParameter(tab, "tab");
                NoteOutlineFragment.this.m46853U0(tab.getPosition());
            }
        });
        TintTabLayoutView bottomTabLayout = m46862u0().bottomTabLayout;
        Intrinsics.checkNotNullExpressionValue(bottomTabLayout, "bottomTabLayout");
        TabLayoutKt.addNoteOutlineBottomTabs(bottomTabLayout, this.tabList, new Function1<TabLayout.Tab, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteOutlineFragment$initView$7
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TabLayout.Tab tab) {
                invoke2(tab);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull TabLayout.Tab tab) {
                Intrinsics.checkNotNullParameter(tab, "tab");
                NoteOutlineFragment.this.m46853U0(tab.getPosition());
            }
        });
        TintTabLayoutView tabLayout2 = m46862u0().tabLayout;
        Intrinsics.checkNotNullExpressionValue(tabLayout2, "tabLayout");
        List tabList = com.onyx.android.sdk.extension.TabLayoutKt.tabList(tabLayout2, new Function1<TabLayout.Tab, NoteOutlineType>() { // from class: com.onyx.galaxy.note.editor.ui.NoteOutlineFragment$initView$sideBarTypes$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final NoteOutlineType invoke(@NotNull TabLayout.Tab it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                Object tag = it2.getTag();
                Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.onyx.galaxy.note.category.data.NoteOutlineType");
                return (NoteOutlineType) tag;
            }
        });
        m46862u0().viewPager.setOffscreenPageLimit(tabList.size());
        m46862u0().viewPager.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.onyx.galaxy.note.editor.ui.NoteOutlineFragment$initView$8
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int position) {
                FragmentNoteSidebarBinding m46862u0;
                FragmentNoteSidebarBinding m46862u02;
                FragmentNoteSidebarBinding m46862u03;
                FragmentNoteSidebarBinding m46862u04;
                boolean m46851S0;
                NoteOutlineType m46863v0;
                m46862u0 = NoteOutlineFragment.this.m46862u0();
                TintTabLayoutView tabLayout3 = m46862u0.tabLayout;
                Intrinsics.checkNotNullExpressionValue(tabLayout3, "tabLayout");
                com.onyx.android.sdk.extension.TabLayoutKt.selectTab(tabLayout3, position);
                m46862u02 = NoteOutlineFragment.this.m46862u0();
                SlideTintTabLayout fullscreenTabLayout2 = m46862u02.fullscreenTabLayout;
                Intrinsics.checkNotNullExpressionValue(fullscreenTabLayout2, "fullscreenTabLayout");
                com.onyx.android.sdk.extension.TabLayoutKt.selectTab(fullscreenTabLayout2, position);
                m46862u03 = NoteOutlineFragment.this.m46862u0();
                TintTabLayoutView bottomTabLayout2 = m46862u03.bottomTabLayout;
                Intrinsics.checkNotNullExpressionValue(bottomTabLayout2, "bottomTabLayout");
                com.onyx.android.sdk.extension.TabLayoutKt.selectTab(bottomTabLayout2, position);
                m46862u04 = NoteOutlineFragment.this.m46862u0();
                MediumTextView mediumTextView = m46862u04.finish;
                m46851S0 = NoteOutlineFragment.this.m46851S0();
                ViewKt.setViewVisibleOrGone(mediumTextView, m46851S0);
                NoteOutlineFragment.this.m46860b1();
                NoteOutlineFragment.this.m46846M0();
                m46863v0 = NoteOutlineFragment.this.m46863v0();
                if (m46863v0 != null) {
                    StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
                    String lowerCase = m46863v0.name().toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                    statisticsBundle.postEvent(new StatisticsDocSidebarEvent(lowerCase));
                }
            }
        });
        m46862u0().viewPager.setUserInputEnabled(false);
        m46862u0().viewPager.setAdapter(new ViewPagerFragmentAdapter(this, tabList));
        if (this.switchPageIndex < 0) {
            this.switchPageIndex = this.tabList.indexOf(f59109m1);
        }
        TabLayout.Tab tabAt = m46862u0().tabLayout.getTabAt(this.switchPageIndex);
        if (tabAt != null) {
            tabAt.select();
        }
        TabLayout.Tab tabAt2 = m46862u0().fullscreenTabLayout.getTabAt(this.switchPageIndex);
        if (tabAt2 != null) {
            tabAt2.select();
        }
        TabLayout.Tab tabAt3 = m46862u0().bottomTabLayout.getTabAt(this.switchPageIndex);
        if (tabAt3 != null) {
            tabAt3.select();
        }
        m46853U0(this.switchPageIndex);
        m46845K0();
    }

    /* renamed from: H0 */
    public final boolean m46842H0() {
        return (this.editorBundle == null || this.docManagerBundle == null || this.closeAction == null) ? false : true;
    }

    /* renamed from: I0 */
    public final boolean m46843I0() {
        return ViewKt.isVisible(m46862u0().selectAll);
    }

    /* renamed from: J0 */
    public final void m46844J0() {
        m46841C0();
        m46865x0();
        m46849Q0();
        m46829O0(this, OnyxStatisticConstant.ID_VIEW_SIDEBAR, null, 2, null);
    }

    /* renamed from: K0 */
    public final void m46845K0() {
        if (this.fullScreen) {
            return;
        }
        Window window = requireActivity().getWindow();
        KeyboardUtils.unregisterSoftInputChangedListener(window);
        KeyboardUtils.registerSoftInputChangedListener(window, new KeyboardUtils.OnSoftInputChangedListener() { // from class: com.sunia.HTREnginev2.dzj
            @Override // com.blankj.utilcode.util.KeyboardUtils.OnSoftInputChangedListener
            public final void onSoftInputChanged(int i) {
                NoteOutlineFragment.m46828L0(NoteOutlineFragment.this, i);
            }
        });
    }

    /* renamed from: M0 */
    public final void m46846M0() {
        TintTabLayoutView tabLayout = m46862u0().tabLayout;
        Intrinsics.checkNotNullExpressionValue(tabLayout, "tabLayout");
        TabLayout.Tab selectedTab = com.onyx.android.sdk.extension.TabLayoutKt.getSelectedTab(tabLayout);
        Object tag = selectedTab != null ? selectedTab.getTag() : null;
        NoteOutlineType noteOutlineType = tag instanceof NoteOutlineType ? (NoteOutlineType) tag : null;
        if (noteOutlineType == null) {
            return;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[noteOutlineType.ordinal()];
        if (i == 1) {
            m46829O0(this, this.fullScreen ? OnyxStatisticConstant.ID_CLICK_DOCSOVERVIEW_FULL : OnyxStatisticConstant.ID_CLICK_DOCSOVERVIEW, null, 2, null);
            return;
        }
        if (i == 2) {
            m46829O0(this, this.fullScreen ? OnyxStatisticConstant.ID_CLICK_OUTLINE_FULL : OnyxStatisticConstant.ID_CLICK_OUTLINE, null, 2, null);
        } else if (i == 3) {
            m46829O0(this, this.fullScreen ? OnyxStatisticConstant.ID_CLICK_BOOKMARK_FULL : OnyxStatisticConstant.ID_CLICK_BOOKMARK, null, 2, null);
        } else {
            if (i != 4) {
                return;
            }
            m46829O0(this, this.fullScreen ? OnyxStatisticConstant.ID_CLICK_EXCERPT_FULL : OnyxStatisticConstant.ID_CLICK_EXCERPT, null, 2, null);
        }
    }

    /* renamed from: N0 */
    public final void m46847N0(String eventId, Integer triggerFrom) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_ID, EditorBundleKt.docId(editorBundle));
        if (triggerFrom != null) {
            linkedHashMap.put(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(triggerFrom.intValue()));
        }
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(eventId, linkedHashMap));
    }

    /* renamed from: P0 */
    public final void m46848P0(EditorBundle newEditorBundle) {
        if (m46842H0()) {
            m46861t0(newEditorBundle);
            List<NoteOutlineType> m46840B0 = m46840B0();
            int indexOf = m46840B0.contains(f59109m1) ? m46840B0.indexOf(f59109m1) : 0;
            m46844J0();
            m46853U0(indexOf);
        }
    }

    /* renamed from: Q0 */
    public final void m46849Q0() {
        if (this.fullScreen) {
            int dimens = ResManager.INSTANCE.getDimens(C10651R.dimen.sidebar_title_height_fullscreen);
            ConstraintLayout titleLayout = m46862u0().titleLayout;
            Intrinsics.checkNotNullExpressionValue(titleLayout, "titleLayout");
            ViewKt.setLayoutHeight(titleLayout, Integer.valueOf(dimens));
            MediumTextView title = m46862u0().title;
            Intrinsics.checkNotNullExpressionValue(title, "title");
            ViewKt.setBold(title, false);
            ViewKt.setViewVisibleOrInvisible(m46862u0().topDivider, true);
            ViewKt.setViewVisibleOrGone(m46862u0().tabLayout, false);
            ViewKt.setViewVisibleOrInvisible(m46862u0().bottomDivider, false);
            m46850R0();
            m46847N0(OnyxStatisticConstant.ID_VIEW_SIDEBAR_FULLSCREENVIEW, m46864w0());
        }
    }

    /* renamed from: R0 */
    public final void m46850R0() {
        IScreen screenDevice = DeviceFactory.INSTANCE.getScreenDevice();
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        boolean isSmallScreen = screenDevice.isSmallScreen(requireActivity);
        ViewKt.setViewVisibleOrGone(m46862u0().title, isSmallScreen);
        ViewKt.setViewVisibleOrGone(m46862u0().bottomTabLayout, isSmallScreen);
        ViewKt.setViewVisibleOrGone(m46862u0().fullscreenTabLayoutContainer, !isSmallScreen);
    }

    /* renamed from: S0 */
    public final boolean m46851S0() {
        Object orNull;
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            return true;
        }
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        if (EditorBundleKt.getUiFeature(editorBundle).supportMultiPage()) {
            return true;
        }
        if (!this.fullScreen) {
            return false;
        }
        orNull = CollectionsKt___CollectionsKt.getOrNull(this.tabList, m46862u0().viewPager.getCurrentItem());
        NoteOutlineType noteOutlineType = (NoteOutlineType) orNull;
        return noteOutlineType == null || noteOutlineType == NoteOutlineType.Excerpt;
    }

    /* renamed from: T0 */
    public final boolean m46852T0() {
        if (!this.fullScreen) {
            return false;
        }
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        return EditorBundleKt.getUiFeature(editorBundle).supportMultiPage() && this.switchPageIndex == 0;
    }

    /* renamed from: U0 */
    public final void m46853U0(int pageIndex) {
        if (pageIndex > -1) {
            this.switchPageIndex = pageIndex;
            if (m46862u0().viewPager.getCurrentItem() != pageIndex) {
                m46862u0().viewPager.setCurrentItem(pageIndex, false);
            }
            m46857Y0(false);
            m46860b1();
        }
    }

    /* renamed from: V0 */
    public final void m46854V0() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        EditorBundle editorBundle2 = this.docManagerBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("docManagerBundle");
            editorBundle2 = null;
        }
        new NoteOutlineDialogFragment(editorBundle, editorBundle2, this.switchPageIndex).show(requireActivity().getSupportFragmentManager(), (String) null);
        RxTimerUtil.INSTANCE.shortTimer(new Function1<Long, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteOutlineFragment$switchViewType$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                invoke(l.longValue());
                return Unit.INSTANCE;
            }

            public final void invoke(long j) {
                FragmentNoteSidebarBinding m46862u0;
                m46862u0 = NoteOutlineFragment.this.m46862u0();
                m46862u0.close.performClick();
            }
        });
        m46847N0(OnyxStatisticConstant.ID_CLICK_SIDEBAR_CHANGEVIEW, m46864w0());
        NoteOutlineType m46863v0 = m46863v0();
        if (m46863v0 != null) {
            StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
            String lowerCase = m46863v0.name().toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            statisticsBundle.postEvent(new StatisticsFullDocSidebarEvent(lowerCase));
        }
    }

    /* renamed from: W0 */
    public final void m46855W0() {
        Boolean valueOf = ((Boolean) ViewKt.getTagSafely(m46862u0().selectAll)) == null ? Boolean.valueOf(m46862u0().selectAll.isChecked()) : Boolean.valueOf(!r0.booleanValue());
        m46862u0().selectAll.setChecked(valueOf.booleanValue());
        m46862u0().selectAll.setTag(valueOf);
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        EditorBundleKt.postEvent(editorBundle, new SelectAllDataEvent(valueOf.booleanValue()));
    }

    /* renamed from: X0 */
    public final void m46856X0() {
        m46857Y0(!m46843I0());
    }

    /* renamed from: Y0 */
    public final void m46857Y0(boolean selectionMode) {
        if (this.fullScreen) {
            EditorBundle editorBundle = null;
            if (selectionMode) {
                EditorBundle editorBundle2 = this.editorBundle;
                if (editorBundle2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                } else {
                    editorBundle = editorBundle2;
                }
                EditorBundleKt.postEvent(editorBundle, new EnterSelectionModeEvent());
                return;
            }
            EditorBundle editorBundle3 = this.editorBundle;
            if (editorBundle3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            } else {
                editorBundle = editorBundle3;
            }
            EditorBundleKt.postEvent(editorBundle, new QuitSelectionModeEvent());
        }
    }

    /* renamed from: Z0 */
    public final void m46858Z0() {
        FragmentActivity activity;
        if (this.fullScreen || (activity = getActivity()) == null) {
            return;
        }
        KeyboardUtils.unregisterSoftInputChangedListener(activity.getWindow());
    }

    /* renamed from: a1 */
    public final void m46859a1(boolean selectionMode) {
        ViewKt.setViewVisibleOrGone(m46862u0().finish, m46851S0());
        ViewKt.setViewVisibleOrGone(m46862u0().closeText, !selectionMode);
        ViewKt.setViewVisibleOrGone(m46862u0().selectAll, selectionMode);
        m46862u0().selectAll.setChecked(false);
        m46862u0().selectAll.setTag(null);
        if (selectionMode) {
            m46862u0().finish.setText(C10651R.string.finish);
        } else {
            m46862u0().finish.setText(C10651R.string.select);
        }
    }

    /* renamed from: b1 */
    public final void m46860b1() {
        ViewKt.setViewVisibleOrGone(m46862u0().ivThumbSize, m46852T0());
    }

    @Nullable
    public final EditExcerptCommentArgs getEditExcerptCommentArgs() {
        return this.editExcerptCommentArgs;
    }

    public final boolean getFullScreen() {
        return this.fullScreen;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAllDataSelectedEvent(@NotNull AllDataSelectedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46862u0().selectAll.setChecked(event.getSelected());
        m46862u0().selectAll.setTag(Boolean.valueOf(event.getSelected()));
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        if (this.fullScreen) {
            m46850R0();
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View root = m46862u0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        m46858Z0();
        super.onDestroyView();
        EditorBundle editorBundle = this.editorBundle;
        EditorBundle editorBundle2 = null;
        if (editorBundle != null) {
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            EditorBundleKt.unregister(editorBundle, this);
        }
        EditorBundle editorBundle3 = this.docManagerBundle;
        if (editorBundle3 != null) {
            if (editorBundle3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("docManagerBundle");
            } else {
                editorBundle2 = editorBundle3;
            }
            EditorBundleKt.unregister(editorBundle2, this);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditExcerptCommentEvent(@NotNull EditExcerptCommentEvent event) {
        Object obj;
        Intrinsics.checkNotNullParameter(event, "event");
        TintTabLayoutView tabLayout = m46862u0().tabLayout;
        Intrinsics.checkNotNullExpressionValue(tabLayout, "tabLayout");
        Iterator it2 = com.onyx.android.sdk.extension.TabLayoutKt.tabList(tabLayout, new Function1<TabLayout.Tab, TabLayout.Tab>() { // from class: com.onyx.galaxy.note.editor.ui.NoteOutlineFragment$onEditExcerptCommentEvent$tab$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final TabLayout.Tab invoke(@NotNull TabLayout.Tab it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return it3;
            }
        }).iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it2.next();
                if (((TabLayout.Tab) obj).getTag() == NoteOutlineType.Excerpt) {
                    break;
                }
            }
        }
        TabLayout.Tab tab = (TabLayout.Tab) obj;
        if (tab == null) {
            return;
        }
        DocExcerptFragment docExcerptFragment = (DocExcerptFragment) getChildFragmentManager().findFragmentByTag(String.valueOf(tab.getPosition()));
        if (docExcerptFragment == null || !docExcerptFragment.isVisible()) {
            this.editExcerptCommentArgs = event.getArgs();
        }
        m46853U0(tab.getPosition());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditorBundleChangedEvent(@NotNull EditorBundleChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46848P0(event.getCurrent());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEnterSelectionModeEvent(@NotNull EnterSelectionModeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46859a1(true);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNoteTabDataChangedEvent(@NotNull NoteTabDataChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46848P0(event.getEditorBundle());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onQuitSelectionModeEvent(@NotNull QuitSelectionModeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46859a1(false);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSidebarVisibleLevelChangedEvent(@NotNull SidebarVisibleLevelChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        setCurrentVisibleLevel(event.getLevel());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSplitScreenShowQuoteEvent(@NotNull SplitScreenShowQuoteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.fullScreen) {
            Function0<Unit> function0 = this.closeAction;
            if (function0 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("closeAction");
                function0 = null;
            }
            function0.invoke();
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        if (m46842H0()) {
            m46844J0();
            EditorBundle editorBundle = this.editorBundle;
            EditorBundle editorBundle2 = null;
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            EditorBundleKt.register(editorBundle, this);
            EditorBundle editorBundle3 = this.docManagerBundle;
            if (editorBundle3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("docManagerBundle");
            } else {
                editorBundle2 = editorBundle3;
            }
            EditorBundleKt.register(editorBundle2, this);
        }
    }

    public final void setCloseAction(@NotNull Function0<Unit> closeAction) {
        Intrinsics.checkNotNullParameter(closeAction, "closeAction");
        this.closeAction = closeAction;
    }

    public final void setCurrentVisibleLevel(int level) {
        this.currentVisibleLevel = level;
    }

    public final void setDocManagerBundle(@NotNull EditorBundle docManagerBundle) {
        Intrinsics.checkNotNullParameter(docManagerBundle, "docManagerBundle");
        this.docManagerBundle = docManagerBundle;
    }

    public final void setEditBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
    }

    public final void setEditExcerptCommentArgs(@Nullable EditExcerptCommentArgs editExcerptCommentArgs) {
        this.editExcerptCommentArgs = editExcerptCommentArgs;
    }

    public final void setFullScreen(boolean z) {
        this.fullScreen = z;
    }

    public final void setSwitchPageIndex(int switchPageIndex) {
        this.switchPageIndex = switchPageIndex;
    }

    /* renamed from: t0 */
    public final void m46861t0(EditorBundle newEditorBundle) {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            EditorBundleKt.unregister(editorBundle, this);
        }
        this.editorBundle = newEditorBundle;
        if (newEditorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            newEditorBundle = null;
        }
        EditorBundleKt.register(newEditorBundle, this);
    }

    /* renamed from: u0 */
    public final FragmentNoteSidebarBinding m46862u0() {
        return (FragmentNoteSidebarBinding) this.binding.getValue();
    }

    /* renamed from: v0 */
    public final NoteOutlineType m46863v0() {
        TintTabLayoutView tabLayout = m46862u0().tabLayout;
        Intrinsics.checkNotNullExpressionValue(tabLayout, "tabLayout");
        TabLayout.Tab selectedTab = com.onyx.android.sdk.extension.TabLayoutKt.getSelectedTab(tabLayout);
        Object tag = selectedTab != null ? selectedTab.getTag() : null;
        if (tag instanceof NoteOutlineType) {
            return (NoteOutlineType) tag;
        }
        return null;
    }

    /* renamed from: w0 */
    public final Integer m46864w0() {
        TintTabLayoutView tabLayout = m46862u0().tabLayout;
        Intrinsics.checkNotNullExpressionValue(tabLayout, "tabLayout");
        TabLayout.Tab selectedTab = com.onyx.android.sdk.extension.TabLayoutKt.getSelectedTab(tabLayout);
        Object tag = selectedTab != null ? selectedTab.getTag() : null;
        NoteOutlineType noteOutlineType = tag instanceof NoteOutlineType ? (NoteOutlineType) tag : null;
        if (noteOutlineType == null) {
            return null;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[noteOutlineType.ordinal()];
        if (i == 1) {
            return 2000;
        }
        if (i == 2) {
            return 2001;
        }
        if (i != 3) {
            return i != 4 ? null : 2003;
        }
        return 2002;
    }

    /* renamed from: x0 */
    public final void m46865x0() {
        ViewKt.setViewVisibleOrGone(m46862u0().selectionLayout, this.fullScreen);
        ViewKt.setViewVisibleOrGone(m46862u0().finish, m46851S0());
        m46860b1();
        TintTextView closeText = m46862u0().closeText;
        Intrinsics.checkNotNullExpressionValue(closeText, "closeText");
        com.onyx.android.sdk.extension.ViewKt.click$default(closeText, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ezj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteOutlineFragment.m46838y0(NoteOutlineFragment.this, view);
            }
        }, 1, null);
        TintRadioButton selectAll = m46862u0().selectAll;
        Intrinsics.checkNotNullExpressionValue(selectAll, "selectAll");
        com.onyx.android.sdk.extension.ViewKt.click$default(selectAll, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.fzj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteOutlineFragment.m46839z0(NoteOutlineFragment.this, view);
            }
        }, 1, null);
        MediumTextView finish = m46862u0().finish;
        Intrinsics.checkNotNullExpressionValue(finish, "finish");
        com.onyx.android.sdk.extension.ViewKt.click$default(finish, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.gzj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteOutlineFragment.m46823A0(NoteOutlineFragment.this, view);
            }
        }, 1, null);
    }
}
