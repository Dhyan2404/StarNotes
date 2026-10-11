package com.onyx.galaxy.note.editor.view.popup;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.media.event.RecordChangeEvent;
import com.onyx.android.sdk.media.recorder.AudioRecordManager;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.events.app.EditorBundleChangedEvent;
import com.onyx.android.sdk.universal.editor.events.app.NoteTabDataChangedEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeTouchModeEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.feature.touch.TouchModeFeature;
import com.onyx.android.sdk.universal.editor.feature.touch.TouchModeFeatureManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.databinding.PopupShortcutBarMoreFunctionsBinding;
import com.onyx.galaxy.note.editor.data.ShortcutBarData;
import com.onyx.galaxy.note.editor.data.ShortcutType;
import com.onyx.galaxy.note.editor.event.EditNoteEncryptionChangedEvent;
import com.onyx.galaxy.note.editor.event.ShowShortcutBarCustomPopupEvent;
import com.onyx.galaxy.note.editor.view.adapter.ShortcutBarMoreFunctionAdapter;
import com.onyx.galaxy.note.editor.view.popup.ShortcutBarMoreFunctionPopup;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010*\u001a\u00020'\u0012\u0006\u0010,\u001a\u00020\u0015\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0018\u00101\u001a\u0014\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020\u00040.¢\u0006\u0004\b<\u0010=J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0006H\u0007J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\bH\u0007J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\nH\u0007J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\fH\u0007J\b\u0010\u000e\u001a\u00020\u0004H\u0014J\u0006\u0010\u000f\u001a\u00020\u0004J\u0016\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010J\u0006\u0010\u0014\u001a\u00020\u0004J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\b\u0010\u0018\u001a\u00020\u0004H\u0002J\b\u0010\u0019\u001a\u00020\u0004H\u0002J\b\u0010\u001a\u001a\u00020\u0004H\u0002J\b\u0010\u001c\u001a\u00020\u001bH\u0002J\b\u0010\u001d\u001a\u00020\u0010H\u0002J\b\u0010\u001e\u001a\u00020\u0004H\u0002J\b\u0010\u001f\u001a\u00020\u0004H\u0002J\u0018\u0010#\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u0010H\u0002J\u0016\u0010&\u001a\u00020\u00042\f\u0010%\u001a\b\u0012\u0004\u0012\u00020 0$H\u0002R\u0014\u0010*\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010,\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010+R\u0016\u0010\u0011\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010-R&\u00101\u001a\u0014\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020\u00040.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u001b\u00105\u001a\u0002028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u00103\u001a\u0004\b/\u00104R\u0014\u00108\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u00107R\u0014\u0010;\u001a\u0002098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010:¨\u0006>"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;", "Lcom/onyx/galaxy/note/editor/view/popup/BaseShortcutPopup;", "Lcom/onyx/android/sdk/media/event/RecordChangeEvent;", NotificationCompat.CATEGORY_EVENT, "", "onRecordChangeEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/NoteTabDataChangedEvent;", "onNoteTabDataChangedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/EditorBundleChangedEvent;", "onEditorBundleChangedEvent", "Lcom/onyx/galaxy/note/editor/event/EditNoteEncryptionChangedEvent;", "onEditNoteEncryptionChangedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;", "onChangeTouchModeEvent", "onDismiss", "updateAudioSet", "", "isPreviewAudioSet", "hasNewRecordTip", "updateAudioSetItem", "onReadingModeChanged", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", Keywords.FUNC_CURRENT_STRING, "F", "H", "I", "x", "Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;", "w", "E", "B", "y", "Lcom/onyx/galaxy/note/editor/data/ShortcutType;", "shortcutType", "isAdd", "t", "", "list", "u", "Landroid/view/View;", "s", "Landroid/view/View;", "anchorView", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.HASIDCALL_INDEX_SIG, "Lkotlin/Function2;", "v", "Lkotlin/jvm/functions/Function2;", "onClickFunc", "Lcom/onyx/galaxy/note/databinding/PopupShortcutBarMoreFunctionsBinding;", "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/databinding/PopupShortcutBarMoreFunctionsBinding;", "binding", "Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;", "Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;", "shortcutBarData", "Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;", "Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;", "adapter", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZLkotlin/jvm/functions/Function2;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShortcutBarMoreFunctionPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortcutBarMoreFunctionPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,260:1\n350#2,7:261\n350#2,7:268\n350#2,7:275\n350#2,7:282\n350#2,7:289\n350#2,7:296\n*S KotlinDebug\n*F\n+ 1 ShortcutBarMoreFunctionPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup\n*L\n105#1:261,7\n106#1:268,7\n119#1:275,7\n126#1:282,7\n206#1:289,7\n218#1:296,7\n*E\n"})
/* loaded from: classes9.dex */
public final class ShortcutBarMoreFunctionPopup extends BaseShortcutPopup {

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final View anchorView;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public EditorBundle editorBundle;

    /* renamed from: u, reason: from kotlin metadata */
    public boolean isPreviewAudioSet;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final Function2<ShortcutType, View, Unit> onClickFunc;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public final ShortcutBarData shortcutBarData;

    /* renamed from: y, reason: from kotlin metadata */
    @NotNull
    public final ShortcutBarMoreFunctionAdapter adapter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ShortcutBarMoreFunctionPopup(@NotNull View anchorView, @NotNull EditorBundle editorBundle, boolean z, @NotNull Function2<? super ShortcutType, ? super View, Unit> onClickFunc) {
        super(anchorView, true);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(anchorView, "anchorView");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(onClickFunc, "onClickFunc");
        this.anchorView = anchorView;
        this.editorBundle = editorBundle;
        this.isPreviewAudioSet = z;
        this.onClickFunc = onClickFunc;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupShortcutBarMoreFunctionsBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.ShortcutBarMoreFunctionPopup$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupShortcutBarMoreFunctionsBinding invoke() {
                View view;
                view = ShortcutBarMoreFunctionPopup.this.anchorView;
                return PopupShortcutBarMoreFunctionsBinding.inflate(LayoutInflater.from(view.getContext()));
            }
        });
        this.binding = lazy;
        this.shortcutBarData = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getShortcutBarData();
        this.adapter = new ShortcutBarMoreFunctionAdapter(this.editorBundle);
        View root = m49557v().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        setOutsideTouchable(false);
        setFocusable(false);
        m49559x();
    }

    /* renamed from: A */
    public static final void m49540A(ShortcutBarMoreFunctionPopup this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.adapter.notifyItemChanged(i);
    }

    /* renamed from: C */
    public static final void m49541C(ShortcutBarMoreFunctionPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: D */
    public static final void m49542D(ShortcutBarMoreFunctionPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundleKt.postEvent(this$0.editorBundle, new ShowShortcutBarCustomPopupEvent());
        ShortcutBarCustomPopup shortcutBarCustomPopup = new ShortcutBarCustomPopup(this$0.getContext(), this$0.editorBundle);
        Context context = this$0.getContext();
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type android.app.Activity");
        View decorView = ((Activity) context).getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
        shortcutBarCustomPopup.showAtLocation(decorView, 17, 0, 0);
        this$0.dismiss();
    }

    /* renamed from: G */
    public static final void m49543G(ShortcutBarMoreFunctionPopup this$0) {
        List<ShortcutType> mutableList;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TouchModeFeature currentTouchModeFeature = TouchModeFeatureManager.INSTANCE.getCurrentTouchModeFeature();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this$0.shortcutBarData.getCandidateShortcutTypes());
        this$0.m49556u(mutableList);
        for (ShortcutType shortcutType : ShortcutBarData.INSTANCE.getFILTER_READING_MOD_SHORTCUT_LIST()) {
            if (mutableList.contains(shortcutType)) {
                this$0.m49555t(shortcutType, currentTouchModeFeature.supportEdit());
            }
        }
    }

    /* renamed from: z */
    public static final void m49549z(final ShortcutBarMoreFunctionPopup this$0, BaseQuickAdapter baseQuickAdapter, View view, final int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "view");
        ShortcutType shortcutType = this$0.adapter.getItems().get(i);
        this$0.onClickFunc.invoke(shortcutType, view);
        if (this$0.adapter.getItems().get(i) == ShortcutType.SHORTCUT_AUDIO_SET) {
            this$0.m49557v().getRoot().postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.zom
                @Override // java.lang.Runnable
                public final void run() {
                    ShortcutBarMoreFunctionPopup.m49540A(ShortcutBarMoreFunctionPopup.this, i);
                }
            }, ResManager.INSTANCE.getInteger(C10651R.integer.audio_set_animation_duration));
        }
        if (shortcutType == ShortcutType.SHORTCUT_WRITING_MODE || shortcutType == ShortcutType.SHORTCUT_READING_MODE) {
            this$0.adapter.notifyItemChanged(i);
        }
        if (shortcutType == ShortcutType.SHORTCUT_AUDIO || this$0.m49551E() || shortcutType == ShortcutType.SHORTCUT_NOTE_MODE) {
            return;
        }
        this$0.dismiss();
    }

    /* renamed from: B */
    public final void m49550B() {
        m49560y();
        TintImageView ivClose = m49557v().ivClose;
        Intrinsics.checkNotNullExpressionValue(ivClose, "ivClose");
        ViewKt.click$default(ivClose, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.apm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortcutBarMoreFunctionPopup.m49541C(ShortcutBarMoreFunctionPopup.this, view);
            }
        }, 1, null);
        TintConstraintLayout clsCustomShortcut = m49557v().clsCustomShortcut;
        Intrinsics.checkNotNullExpressionValue(clsCustomShortcut, "clsCustomShortcut");
        ViewKt.click$default(clsCustomShortcut, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.bpm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortcutBarMoreFunctionPopup.m49542D(ShortcutBarMoreFunctionPopup.this, view);
            }
        }, 1, null);
    }

    /* renamed from: E */
    public final boolean m49551E() {
        AudioRecordManager m49558w = m49558w();
        return m49558w.isPlaying() || m49558w.isPaused();
    }

    /* renamed from: F */
    public final void m49552F(EditorBundle current) {
        EditorBundleKt.unregister(this.editorBundle, this);
        this.editorBundle = current;
        m49559x();
    }

    /* renamed from: H */
    public final void m49553H() {
        Iterator<ShortcutType> it2 = this.adapter.getItems().iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            } else {
                if (it2.next() == ShortcutType.SHORTCUT_ENCRYPTION) {
                    break;
                } else {
                    i++;
                }
            }
        }
        if (i >= 0) {
            this.adapter.notifyItemChanged(i);
        }
    }

    /* renamed from: I */
    public final void m49554I() {
        Iterator<ShortcutType> it2 = this.adapter.getItems().iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            } else {
                if (it2.next() == ShortcutType.SHORTCUT_NOTE_MODE) {
                    break;
                } else {
                    i++;
                }
            }
        }
        if (i >= 0) {
            this.adapter.notifyItemChanged(i);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeTouchModeEvent(@NotNull ChangeTouchModeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m49554I();
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void onDismiss() {
        super.onDismiss();
        m49558w().getEventBusHolder().unRegister(this);
        DocCollectionBundle.INSTANCE.ensureUnRegister(this);
        EditorBundleKt.unregister(this.editorBundle, this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditNoteEncryptionChangedEvent(@NotNull EditNoteEncryptionChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m49553H();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditorBundleChangedEvent(@NotNull EditorBundleChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m49552F(event.getCurrent());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNoteTabDataChangedEvent(@NotNull NoteTabDataChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m49552F(event.getEditorBundle());
    }

    public final void onReadingModeChanged() {
        m49557v().list.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.dpm
            @Override // java.lang.Runnable
            public final void run() {
                ShortcutBarMoreFunctionPopup.m49543G(ShortcutBarMoreFunctionPopup.this);
            }
        }, ResManager.INSTANCE.getInteger(C10651R.integer.list_item_drag_duration));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRecordChangeEvent(@NotNull RecordChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        updateAudioSet();
    }

    /* renamed from: t */
    public final void m49555t(ShortcutType shortcutType, boolean isAdd) {
        if (isAdd && !this.adapter.getItems().contains(shortcutType)) {
            this.adapter.add(shortcutType);
        }
        if (isAdd || !this.adapter.getItems().contains(shortcutType)) {
            return;
        }
        this.adapter.remove(shortcutType);
    }

    /* renamed from: u */
    public final void m49556u(List<ShortcutType> list) {
        if (EditorBundleKt.getUiFeature(this.editorBundle).supportEditPage()) {
            return;
        }
        list.remove(ShortcutType.SHORTCUT_PAGE_WHITESPACE_ADJUSTMENT);
        list.remove(ShortcutType.SHORTCUT_ADD_PAGE);
    }

    public final void updateAudioSet() {
        int i;
        Map mutableMapOf;
        AudioRecordManager m49558w = m49558w();
        boolean m49551E = m49551E();
        boolean z = this.adapter.getIsRecording() != m49551E;
        this.adapter.setRecording(m49551E);
        this.adapter.setRecordDuration(m49558w.getRecordDuration());
        Iterator<ShortcutType> it2 = this.adapter.getItems().iterator();
        int i2 = 0;
        while (true) {
            i = -1;
            if (!it2.hasNext()) {
                i2 = -1;
                break;
            } else {
                if (it2.next() == ShortcutType.SHORTCUT_AUDIO_SET) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        Iterator<ShortcutType> it3 = this.adapter.getItems().iterator();
        int i3 = 0;
        while (true) {
            if (!it3.hasNext()) {
                break;
            }
            if (it3.next() == ShortcutType.SHORTCUT_AUDIO) {
                i = i3;
                break;
            }
            i3++;
        }
        if (i2 >= 0 && z) {
            this.adapter.notifyItemChanged(i2);
        }
        if (i >= 0) {
            mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(ShortcutBarMoreFunctionAdapter.PAY_LOAD_UPDATE_RECORD_DUR, Boolean.TRUE));
            this.adapter.notifyItemChanged(i, mutableMapOf);
        }
    }

    public final void updateAudioSetItem(boolean isPreviewAudioSet, boolean hasNewRecordTip) {
        this.isPreviewAudioSet = isPreviewAudioSet;
        List<Integer> leftSideList = this.shortcutBarData.getLeftSideList();
        ShortcutType shortcutType = ShortcutType.SHORTCUT_AUDIO_SET;
        boolean contains = leftSideList.contains(Integer.valueOf(shortcutType.getShortcutType()));
        boolean contains2 = this.shortcutBarData.getRightSideList().contains(Integer.valueOf(shortcutType.getShortcutType()));
        boolean contains3 = this.adapter.getItems().contains(shortcutType);
        int i = -1;
        if (hasNewRecordTip && !contains && !contains2 && !contains3) {
            Iterator<ShortcutType> it2 = this.adapter.getItems().iterator();
            int i2 = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i2 = -1;
                    break;
                } else {
                    if (it2.next() == ShortcutType.SHORTCUT_AUDIO) {
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            if (i2 < 0) {
                this.adapter.add(ShortcutType.SHORTCUT_AUDIO_SET);
            } else {
                ShortcutBarMoreFunctionAdapter shortcutBarMoreFunctionAdapter = this.adapter;
                shortcutBarMoreFunctionAdapter.add(Integer.min(i2 + 1, shortcutBarMoreFunctionAdapter.getItems().size() - 1), ShortcutType.SHORTCUT_AUDIO_SET);
            }
        }
        if (!hasNewRecordTip && EditorBundleKt.noteBundle(this.editorBundle).getAudioShapeBeanList().isEmpty()) {
            this.adapter.remove(ShortcutType.SHORTCUT_AUDIO_SET);
        }
        Iterator<ShortcutType> it3 = this.adapter.getItems().iterator();
        int i3 = 0;
        while (true) {
            if (!it3.hasNext()) {
                break;
            }
            if (it3.next() == ShortcutType.SHORTCUT_AUDIO_SET) {
                i = i3;
                break;
            }
            i3++;
        }
        if (i < 0) {
            return;
        }
        this.adapter.setPreviewAudioSet(isPreviewAudioSet);
        this.adapter.setHasNewRecordTip(hasNewRecordTip);
        this.adapter.notifyItemChanged(i);
    }

    /* renamed from: v */
    public final PopupShortcutBarMoreFunctionsBinding m49557v() {
        return (PopupShortcutBarMoreFunctionsBinding) this.binding.getValue();
    }

    /* renamed from: w */
    public final AudioRecordManager m49558w() {
        return this.editorBundle.getMediaBundle().getRecorderManager();
    }

    /* renamed from: x */
    public final void m49559x() {
        m49550B();
        m49558w().getEventBusHolder().register(this);
        DocCollectionBundle.INSTANCE.ensureRegister(this);
        EditorBundleKt.register(this.editorBundle, this);
        updateAudioSet();
    }

    /* renamed from: y */
    public final void m49560y() {
        List<ShortcutType> mutableList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.shortcutBarData.getCandidateShortcutTypes());
        this.adapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.cpm
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                ShortcutBarMoreFunctionPopup.m49549z(ShortcutBarMoreFunctionPopup.this, baseQuickAdapter, view, i);
            }
        });
        m49556u(mutableList);
        if (EditorBundleKt.noteBundle(this.editorBundle).getAudioShapeBeanList().isEmpty()) {
            mutableList.remove(ShortcutType.SHORTCUT_AUDIO_SET);
        }
        if (!TouchModeFeatureManager.INSTANCE.getCurrentTouchModeFeature().supportEdit()) {
            mutableList.removeAll(ShortcutBarData.INSTANCE.getFILTER_READING_MOD_SHORTCUT_LIST());
        }
        this.adapter.setPreviewAudioSet(this.isPreviewAudioSet);
        this.adapter.submitList(mutableList);
        m49557v().list.setAdapter(this.adapter);
    }
}
