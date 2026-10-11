package com.onyx.galaxy.note.editor.p046ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.data.common.data.GuideInfo;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.replicator.note.p035db.model.NoteTabData;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.universal.common.events.EditDoneEvent;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.events.app.NoteTabDataChangedEvent;
import com.onyx.android.sdk.universal.editor.events.app.UpdateTagEvent;
import com.onyx.android.sdk.universal.editor.events.app.VirtualDocViewInfoEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.GuideTipsPopup;
import com.onyx.galaxy.note.databinding.PopupNoteDocumentMoreSettingsBinding;
import com.onyx.galaxy.note.editor.data.ShortcutType;
import com.onyx.galaxy.note.editor.p046ui.NoteSettingMoreFragment;
import com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog;
import com.onyx.galaxy.note.editor.view.popup.ThemePopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.editor.view.toolbar.NoteCommonSettingsLayout;
import com.onyx.galaxy.note.editor.view.toolbar.NoteExportSettingsLayout;
import com.onyx.galaxy.note.editor.view.toolbar.NotePageSettingsLayout;
import com.onyx.galaxy.note.editor.view.toolbar.NoteTagLayout;
import com.onyx.galaxy.note.editor.view.toolbar.NoteTitleEditText;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.settings.p047ui.SettingsActivity;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.Iterator;
import java.util.LinkedHashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\u0018\u00002\u00020\u0001:\u0001PB\u0007¢\u0006\u0004\bN\u0010OJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\b\u0010\t\u001a\u00020\u0004H\u0002J\b\u0010\n\u001a\u00020\u0004H\u0002J\b\u0010\u000b\u001a\u00020\u0004H\u0002J\b\u0010\f\u001a\u00020\u0004H\u0002J\b\u0010\r\u001a\u00020\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u000e\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u000eJ\u000e\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u000eJ\u000e\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001bJ\u0014\u0010 \u001a\u00020\u00042\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00040\u001eJ\u0016\u0010%\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020!2\u0006\u0010$\u001a\u00020#J\u000e\u0010(\u001a\u00020\u00042\u0006\u0010'\u001a\u00020&J$\u00100\u001a\u00020/2\u0006\u0010*\u001a\u00020)2\b\u0010,\u001a\u0004\u0018\u00010+2\b\u0010.\u001a\u0004\u0018\u00010-H\u0016J\u001a\u00102\u001a\u00020\u00042\u0006\u00101\u001a\u00020/2\b\u0010.\u001a\u0004\u0018\u00010-H\u0016J\b\u00103\u001a\u00020\u0004H\u0016J\u0010\u00106\u001a\u00020\u00042\u0006\u00105\u001a\u000204H\u0007J\u0010\u00108\u001a\u00020\u00042\u0006\u00105\u001a\u000207H\u0007J\u0010\u0010:\u001a\u00020\u00042\u0006\u00105\u001a\u000209H\u0007J\u0010\u0010<\u001a\u00020\u00042\u0006\u00105\u001a\u00020;H\u0007R\u001b\u0010B\u001a\u00020=8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b>\u0010?\u001a\u0004\b@\u0010AR\u0018\u0010'\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0016\u0010\u0014\u001a\u00020\u000e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bE\u0010FR\u0016\u0010\u0016\u001a\u00020\u000e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bG\u0010FR\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bH\u0010IR\u0016\u0010\u001c\u001a\u00020\u001b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bJ\u0010KR\u001c\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00040\u001e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bL\u0010M¨\u0006Q"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "", "y0", "", "w0", "u0", "v0", "p0", "t0", "s0", "dismiss", "r0", "z0", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "newEditorBundle", "o0", "", "eventId", "A0", "editorBundle", "setEditBundle", "docManagerBundle", "setDocManagerBundle", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "syncNoteModel", "setSyncNoteModel", "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", "noteTabData", "setNoteTabData", "Lkotlin/Function0;", "closeAction", "setCloseAction", "Lcom/onyx/android/sdk/data/common/data/GuideInfo;", "guideInfo", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", "showPageWhiteSpaceGuide", "Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$NoteDocMoreSettingsListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setListener", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "onDestroyView", "Lcom/onyx/android/sdk/universal/editor/events/app/NoteTabDataChangedEvent;", NotificationCompat.CATEGORY_EVENT, "onNoteTabDataChangedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;", "onVirtualDocViewInfoEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/UpdateTagEvent;", "onUpdateTagEvent", "Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;", "onEditDoneEvent", "Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;", "d1", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;", "binding", "e1", "Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$NoteDocMoreSettingsListener;", "f1", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "g1", "h1", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "i1", "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", "j1", "Lkotlin/jvm/functions/Function0;", Constants.CONSTRUCTOR_NAME, "()V", "NoteDocMoreSettingsListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class NoteSettingMoreFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @Nullable
    public NoteDocMoreSettingsListener listener;

    /* renamed from: f1, reason: from kotlin metadata */
    public EditorBundle editorBundle;

    /* renamed from: g1, reason: from kotlin metadata */
    public EditorBundle docManagerBundle;

    /* renamed from: h1, reason: from kotlin metadata */
    public SyncNoteModel syncNoteModel;

    /* renamed from: i1, reason: from kotlin metadata */
    public NoteTabData noteTabData;

    /* renamed from: j1, reason: from kotlin metadata */
    public Function0<Unit> closeAction;

    @Metadata(m61527d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$NoteDocMoreSettingsListener;", "Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText$NoteTitleChangedListener;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface NoteDocMoreSettingsListener extends NoteTitleEditText.NoteTitleChangedListener {

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes9.dex */
        public static final class DefaultImpls {
            public static void onFocusChanged(@NotNull NoteDocMoreSettingsListener noteDocMoreSettingsListener, boolean z) {
                NoteTitleEditText.NoteTitleChangedListener.DefaultImpls.onFocusChanged(noteDocMoreSettingsListener, z);
            }
        }
    }

    public NoteSettingMoreFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupNoteDocumentMoreSettingsBinding>() { // from class: com.onyx.galaxy.note.editor.ui.NoteSettingMoreFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupNoteDocumentMoreSettingsBinding invoke() {
                PopupNoteDocumentMoreSettingsBinding inflate = PopupNoteDocumentMoreSettingsBinding.inflate(LayoutInflater.from(NoteSettingMoreFragment.this.getContext()));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
    }

    /* renamed from: B0 */
    public static final void m47051B0(final NoteSettingMoreFragment this$0, final GuideInfo guideInfo, final DockType dockType, final TintFrameLayout anchorView) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(guideInfo, "$guideInfo");
        Intrinsics.checkNotNullParameter(dockType, "$dockType");
        Intrinsics.checkNotNullParameter(anchorView, "$anchorView");
        FragmentKt.requireContextSafety(this$0, new Function1<Context, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteSettingMoreFragment$showPageWhiteSpaceGuide$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Context context) {
                invoke2(context);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Context it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                GuideInfo guideInfo2 = GuideInfo.this;
                DockType dockType2 = dockType;
                final NoteSettingMoreFragment noteSettingMoreFragment = this$0;
                GuideTipsPopup.show$default(new GuideTipsPopup(it2, guideInfo2, dockType2, new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteSettingMoreFragment$showPageWhiteSpaceGuide$1$1.1
                    {
                        super(1);
                    }

                    public final void invoke(boolean z) {
                        View guideDivider = NoteSettingMoreFragment.this.getBinding().notePageSetting.getBinding().guideDivider;
                        Intrinsics.checkNotNullExpressionValue(guideDivider, "guideDivider");
                        guideDivider.setVisibility(z ? 0 : 8);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                        invoke(bool.booleanValue());
                        return Unit.INSTANCE;
                    }
                }), anchorView, null, 2, null);
            }
        });
    }

    /* renamed from: q0 */
    public static final void m47055q0(NoteSettingMoreFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBinding().titleEdittext.clearFocusIfNeed();
    }

    /* renamed from: x0 */
    public static final void m47056x0(NoteSettingMoreFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47057A0(OnyxStatisticConstant.ID_CLICK_DOCSSETTING_CLOSE);
        this$0.dismiss();
    }

    /* renamed from: A0 */
    public final void m47057A0(String eventId) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_ID, EditorBundleKt.docId(editorBundle));
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(eventId, linkedHashMap));
    }

    public final void dismiss() {
        Function0<Unit> function0 = this.closeAction;
        if (function0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("closeAction");
            function0 = null;
        }
        function0.invoke();
    }

    @NotNull
    public final PopupNoteDocumentMoreSettingsBinding getBinding() {
        return (PopupNoteDocumentMoreSettingsBinding) this.binding.getValue();
    }

    /* renamed from: o0 */
    public final void m47058o0(EditorBundle newEditorBundle) {
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

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
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
        GlobalBundle.INSTANCE.unregister(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditDoneEvent(@NotNull EditDoneEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getBinding().titleEdittext.commitTitleEdit();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNoteTabDataChangedEvent(@NotNull NoteTabDataChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m47066y0()) {
            m47058o0(event.getEditorBundle());
            this.noteTabData = event.getNoteTabData();
            this.syncNoteModel = event.getSyncNoteModel();
            m47067z0();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUpdateTagEvent(@NotNull UpdateTagEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getBinding().flTagContainer.updateTagEvent();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        if (m47066y0()) {
            m47067z0();
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
        GlobalBundle.INSTANCE.register(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVirtualDocViewInfoEvent(@NotNull VirtualDocViewInfoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getBinding().notePageSetting.updateView();
    }

    /* renamed from: p0 */
    public final void m47059p0() {
        getBinding().rootContainer.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.x1k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteSettingMoreFragment.m47055q0(NoteSettingMoreFragment.this, view);
            }
        });
        NoteTitleEditText noteTitleEditText = getBinding().titleEdittext;
        EditorBundle editorBundle = this.editorBundle;
        NoteTabData noteTabData = null;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        noteTitleEditText.setEditorBundle(editorBundle);
        NoteTitleEditText noteTitleEditText2 = getBinding().titleEdittext;
        NoteTabData noteTabData2 = this.noteTabData;
        if (noteTabData2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteTabData");
        } else {
            noteTabData = noteTabData2;
        }
        noteTitleEditText2.setNoteTabData(noteTabData);
        getBinding().titleEdittext.setListener(new NoteTitleEditText.NoteTitleChangedListener() { // from class: com.onyx.galaxy.note.editor.ui.NoteSettingMoreFragment$initEditText$2
            @Override // com.onyx.galaxy.note.editor.view.toolbar.NoteTitleEditText.NoteTitleChangedListener
            public void onFocusChanged(boolean hasFocus) {
                NoteSettingMoreFragment.this.m47057A0(OnyxStatisticConstant.ID_CLICK_DOCSSETTING_RENAME);
            }

            @Override // com.onyx.galaxy.note.editor.view.toolbar.NoteTitleEditText.NoteTitleChangedListener
            public void onTitleChanged(@NotNull String newTitle) {
                NoteSettingMoreFragment.NoteDocMoreSettingsListener noteDocMoreSettingsListener;
                Intrinsics.checkNotNullParameter(newTitle, "newTitle");
                noteDocMoreSettingsListener = NoteSettingMoreFragment.this.listener;
                if (noteDocMoreSettingsListener != null) {
                    noteDocMoreSettingsListener.onTitleChanged(newTitle);
                }
            }
        });
    }

    /* renamed from: r0 */
    public final void m47060r0() {
        NoteCommonSettingsLayout noteCommonSettingsLayout = getBinding().noteCommonSetting;
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        noteCommonSettingsLayout.setEditorBundle(editorBundle);
        getBinding().noteCommonSetting.setListener(new NoteCommonSettingsLayout.NoteCommonSettingListener() { // from class: com.onyx.galaxy.note.editor.ui.NoteSettingMoreFragment$initNoteCommonSetting$1
            @Override // com.onyx.galaxy.note.editor.view.toolbar.NoteCommonSettingsLayout.NoteCommonSettingListener
            public void onChangeTheme(@NotNull View view) {
                EditorBundle editorBundle2;
                Intrinsics.checkNotNullParameter(view, "view");
                DockType dockType = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getShortcutBarData().isLeftSideShortcut(ShortcutType.SHORTCUT_OTHER_SETTINGS, false) ? DockType.RIGHT : DockType.LEFT;
                NoteCommonSettingsLayout noteCommonSetting = NoteSettingMoreFragment.this.getBinding().noteCommonSetting;
                Intrinsics.checkNotNullExpressionValue(noteCommonSetting, "noteCommonSetting");
                if (ViewExtKt.isLayoutDirectionRtl(noteCommonSetting)) {
                    dockType = dockType.reverse();
                }
                Context requireContext = NoteSettingMoreFragment.this.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                editorBundle2 = NoteSettingMoreFragment.this.editorBundle;
                if (editorBundle2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                    editorBundle2 = null;
                }
                new ThemePopup(requireContext, dockType, editorBundle2).show(view);
                NoteSettingMoreFragment.this.m47057A0(OnyxStatisticConstant.ID_CLICK_DOCSSETTING_CHANGETHEME);
            }

            @Override // com.onyx.galaxy.note.editor.view.toolbar.NoteCommonSettingsLayout.NoteCommonSettingListener
            public void onMoreSettings() {
                Intent intent = new Intent(NoteSettingMoreFragment.this.requireContext(), (Class<?>) SettingsActivity.class);
                intent.putExtra(SettingsActivity.SETTING_MENU_NAME, 1);
                NoteSettingMoreFragment.this.startActivity(intent);
                NoteSettingMoreFragment.this.m47057A0(OnyxStatisticConstant.ID_CLICK_SYSTEMSETTING);
            }
        });
    }

    /* renamed from: s0 */
    public final void m47061s0() {
        NoteExportSettingsLayout noteExportSettingsLayout = getBinding().noteExportSetting;
        EditorBundle editorBundle = this.editorBundle;
        EditorBundle editorBundle2 = null;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        noteExportSettingsLayout.setEditorBundle(editorBundle);
        NoteExportSettingsLayout noteExportSettingsLayout2 = getBinding().noteExportSetting;
        EditorBundle editorBundle3 = this.docManagerBundle;
        if (editorBundle3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("docManagerBundle");
        } else {
            editorBundle2 = editorBundle3;
        }
        noteExportSettingsLayout2.setDocManagerBundle(editorBundle2);
        getBinding().noteExportSetting.setListener(new NoteExportDialog.ExportListener() { // from class: com.onyx.galaxy.note.editor.ui.NoteSettingMoreFragment$initNoteExportSetting$1
            @Override // com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog.ExportListener
            public void onFileExported(@NotNull String filePath) {
                Intrinsics.checkNotNullParameter(filePath, "filePath");
                NoteSettingMoreFragment.this.dismiss();
            }
        });
    }

    public final void setCloseAction(@NotNull Function0<Unit> closeAction) {
        Intrinsics.checkNotNullParameter(closeAction, "closeAction");
        this.closeAction = closeAction;
    }

    public final void setDocManagerBundle(@NotNull EditorBundle docManagerBundle) {
        Intrinsics.checkNotNullParameter(docManagerBundle, "docManagerBundle");
        this.docManagerBundle = docManagerBundle;
    }

    public final void setEditBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
    }

    public final void setListener(@NotNull NoteDocMoreSettingsListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    public final void setNoteTabData(@NotNull NoteTabData noteTabData) {
        Intrinsics.checkNotNullParameter(noteTabData, "noteTabData");
        this.noteTabData = noteTabData;
    }

    public final void setSyncNoteModel(@NotNull SyncNoteModel syncNoteModel) {
        Intrinsics.checkNotNullParameter(syncNoteModel, "syncNoteModel");
        this.syncNoteModel = syncNoteModel;
    }

    public final void showPageWhiteSpaceGuide(@NotNull final GuideInfo guideInfo, @NotNull final DockType dockType) {
        Intrinsics.checkNotNullParameter(guideInfo, "guideInfo");
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        final TintFrameLayout whitespaceAdjustment = getBinding().notePageSetting.getBinding().whitespaceAdjustment;
        Intrinsics.checkNotNullExpressionValue(whitespaceAdjustment, "whitespaceAdjustment");
        whitespaceAdjustment.post(new Runnable() { // from class: com.sunia.HTREnginev2.y1k
            @Override // java.lang.Runnable
            public final void run() {
                NoteSettingMoreFragment.m47051B0(NoteSettingMoreFragment.this, guideInfo, dockType, whitespaceAdjustment);
            }
        });
    }

    /* renamed from: t0 */
    public final void m47062t0() {
        NotePageSettingsLayout notePageSettingsLayout = getBinding().notePageSetting;
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        notePageSettingsLayout.setEditorBundle(editorBundle);
        getBinding().notePageSetting.setListener(new NotePageSettingsLayout.NotePageSettingChangedListener() { // from class: com.onyx.galaxy.note.editor.ui.NoteSettingMoreFragment$initNotePageSettingsLayout$1
            @Override // com.onyx.galaxy.note.editor.view.toolbar.NotePageSettingsLayout.NotePageSettingChangedListener
            public void close() {
                NoteSettingMoreFragment.this.dismiss();
            }

            @Override // com.onyx.galaxy.note.editor.view.toolbar.NotePageSettingsLayout.NotePageSettingChangedListener
            public void onCurrentPageChanged(int pageIndex) {
                Function0 function0;
                function0 = NoteSettingMoreFragment.this.closeAction;
                if (function0 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("closeAction");
                }
            }

            @Override // com.onyx.galaxy.note.editor.view.toolbar.NotePageSettingsLayout.NotePageSettingChangedListener
            public void onCurrentPageLinkCreated(@NotNull ShapeLinkBean linkBean) {
                Intrinsics.checkNotNullParameter(linkBean, "linkBean");
                NoteSettingMoreFragment.this.dismiss();
            }

            @Override // com.onyx.galaxy.note.editor.view.toolbar.NotePageSettingsLayout.NotePageSettingChangedListener
            public void onShowedAddTocView() {
                NoteSettingMoreFragment.this.dismiss();
            }

            @Override // com.onyx.galaxy.note.editor.view.toolbar.NotePageSettingsLayout.NotePageSettingChangedListener
            public void onShowedTemplateView() {
                NoteSettingMoreFragment.this.m47057A0(OnyxStatisticConstant.ID_CLICK_DOCSSETTING_CHANGETEMPLATE);
                NoteSettingMoreFragment.this.dismiss();
            }
        });
    }

    /* renamed from: u0 */
    public final void m47063u0() {
        Iterator<String> it2 = OnyxStatisticConstant.INSTANCE.getMoreSettingEvent().iterator();
        while (it2.hasNext()) {
            m47057A0(it2.next());
        }
    }

    /* renamed from: v0 */
    public final void m47064v0() {
        NoteTagLayout noteTagLayout = getBinding().flTagContainer;
        EditorBundle editorBundle = this.editorBundle;
        SyncNoteModel syncNoteModel = null;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        noteTagLayout.setEditorBundle(editorBundle);
        NoteTagLayout noteTagLayout2 = getBinding().flTagContainer;
        SyncNoteModel syncNoteModel2 = this.syncNoteModel;
        if (syncNoteModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("syncNoteModel");
        } else {
            syncNoteModel = syncNoteModel2;
        }
        noteTagLayout2.setSyncNoteModel(syncNoteModel);
    }

    /* renamed from: w0 */
    public final void m47065w0() {
        PopupNoteDocumentMoreSettingsBinding binding = getBinding();
        NoteTabData noteTabData = this.noteTabData;
        if (noteTabData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteTabData");
            noteTabData = null;
        }
        binding.setModel(noteTabData);
        m47059p0();
        m47064v0();
        m47062t0();
        m47061s0();
        m47060r0();
        getBinding().ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.z1k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteSettingMoreFragment.m47056x0(NoteSettingMoreFragment.this, view);
            }
        });
        m47063u0();
    }

    /* renamed from: y0 */
    public final boolean m47066y0() {
        return (this.editorBundle == null || this.syncNoteModel == null || this.docManagerBundle == null || this.noteTabData == null || this.closeAction == null) ? false : true;
    }

    /* renamed from: z0 */
    public final void m47067z0() {
        m47065w0();
        m47057A0(OnyxStatisticConstant.ID_VIEW_DOCSSETTING);
    }
}
