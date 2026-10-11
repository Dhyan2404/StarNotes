package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.p035db.model.NoteTabData;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.events.app.NoteOverviewCloseDocumentEvent;
import com.onyx.android.sdk.universal.editor.events.note.SplitScreenType;
import com.onyx.android.sdk.universal.editor.events.note.StartSplitScreenEvent;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupNoteOverviewOptionsBinding;
import com.onyx.galaxy.note.editor.view.popup.NoteOverviewOptionsPopup;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0011\u001a\u00020\f¢\u0006\u0004\b\u0019\u0010\u001aJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002R\u001d\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0011\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001b\u0010\u0016\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0003\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "s", C4921e.f26528e, "", "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", "q", "Ljava/util/List;", "getNoteTabList", "()Ljava/util/List;", "noteTabList", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "r", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "getNote", "()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "note", "Lcom/onyx/galaxy/note/databinding/PopupNoteOverviewOptionsBinding;", "Lkotlin/Lazy;", GoogleApiAvailabilityLight.f29016b, "()Lcom/onyx/galaxy/note/databinding/PopupNoteOverviewOptionsBinding;", "binding", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteOverviewOptionsPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteOverviewOptionsPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n256#2,2:73\n288#3,2:75\n*S KotlinDebug\n*F\n+ 1 NoteOverviewOptionsPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup\n*L\n43#1:73,2\n45#1:75,2\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteOverviewOptionsPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final List<NoteTabData> noteTabList;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final NoteModelBean note;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteOverviewOptionsPopup(@NotNull final Context context, @NotNull List<NoteTabData> noteTabList, @NotNull NoteModelBean note) {
        super(context, null, 2, null);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(noteTabList, "noteTabList");
        Intrinsics.checkNotNullParameter(note, "note");
        this.noteTabList = noteTabList;
        this.note = note;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupNoteOverviewOptionsBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.NoteOverviewOptionsPopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupNoteOverviewOptionsBinding invoke() {
                return PopupNoteOverviewOptionsBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        m49086s();
        m49085o();
    }

    /* renamed from: p */
    public static final void m49081p(NoteOverviewOptionsPopup this$0, View view) {
        Object obj;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Iterator<T> it2 = this$0.noteTabList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it2.next();
                if (Intrinsics.areEqual(((NoteTabData) obj).getUniqueId(), this$0.note.getUniqueId())) {
                    break;
                }
            }
        }
        NoteTabData noteTabData = (NoteTabData) obj;
        if (noteTabData != null) {
            DocCollectionBundle.INSTANCE.postEvent(new NoteOverviewCloseDocumentEvent(noteTabData));
        }
        this$0.dismiss();
    }

    /* renamed from: q */
    public static final void m49082q(NoteOverviewOptionsPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        DocCollectionBundle.INSTANCE.postEvent(new StartSplitScreenEvent(this$0.note.getUniqueId(), SplitScreenType.UP_DOWN));
        this$0.dismiss();
    }

    /* renamed from: r */
    public static final void m49083r(NoteOverviewOptionsPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        DocCollectionBundle.INSTANCE.postEvent(new StartSplitScreenEvent(this$0.note.getUniqueId(), SplitScreenType.LEFT_RIGHT));
        this$0.dismiss();
    }

    @NotNull
    public final NoteModelBean getNote() {
        return this.note;
    }

    @NotNull
    public final List<NoteTabData> getNoteTabList() {
        return this.noteTabList;
    }

    /* renamed from: n */
    public final PopupNoteOverviewOptionsBinding m49084n() {
        return (PopupNoteOverviewOptionsBinding) this.binding.getValue();
    }

    /* renamed from: o */
    public final void m49085o() {
        TintTextView tvCloseNote = m49084n().tvCloseNote;
        Intrinsics.checkNotNullExpressionValue(tvCloseNote, "tvCloseNote");
        tvCloseNote.setVisibility(CollectionKt.contains(this.noteTabList, new Function1<NoteTabData, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.popup.NoteOverviewOptionsPopup$initListener$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull NoteTabData it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2.getUniqueId(), NoteOverviewOptionsPopup.this.getNote().getUniqueId()));
            }
        }) ? 0 : 8);
        m49084n().tvCloseNote.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.xzj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteOverviewOptionsPopup.m49081p(NoteOverviewOptionsPopup.this, view);
            }
        });
        m49084n().tvUpDownSplit.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.yzj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteOverviewOptionsPopup.m49082q(NoteOverviewOptionsPopup.this, view);
            }
        });
        m49084n().tvLeftRightSplit.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.zzj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteOverviewOptionsPopup.m49083r(NoteOverviewOptionsPopup.this, view);
            }
        });
    }

    /* renamed from: s */
    public final void m49086s() {
        View root = m49084n().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
    }
}
