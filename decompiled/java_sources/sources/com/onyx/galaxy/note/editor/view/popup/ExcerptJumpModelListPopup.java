package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.p039ui.BasePopWindow;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.events.note.SplitScreenShowQuoteEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.common.extension.PopupWindowKt;
import com.onyx.galaxy.note.databinding.PopupExcerptJumpModelListBinding;
import com.onyx.galaxy.note.editor.view.adapter.ExcerptQuoteModelAdapter;
import com.onyx.galaxy.note.editor.view.popup.ExcerptJumpModelListPopup;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0016\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012\u0012\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00170\u0012¢\u0006\u0004\b \u0010!J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00170\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0015R\u001b\u0010\u001f\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e¨\u0006\""}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/ExcerptJumpModelListPopup;", "Lcom/onyx/android/sdk/ui/BasePopWindow;", "", C6999h.f39688c, "Lcom/onyx/galaxy/note/editor/view/adapter/ExcerptQuoteModelAdapter;", "adapter", C6998g.f39679a, "", "position", "j", "Landroid/content/Context;", C4921e.f26537n, "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "l", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", "m", "Ljava/util/List;", "excerptCollectionList", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", GoogleApiAvailabilityLight.f29016b, "noteModelList", "Lcom/onyx/galaxy/note/databinding/PopupExcerptJumpModelListBinding;", C4921e.f26528e, "Lkotlin/Lazy;", C6997f.f39671c, "()Lcom/onyx/galaxy/note/databinding/PopupExcerptJumpModelListBinding;", "binding", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nExcerptJumpModelListPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExcerptJumpModelListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ExcerptJumpModelListPopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,71:1\n1855#2,2:72\n*S KotlinDebug\n*F\n+ 1 ExcerptJumpModelListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ExcerptJumpModelListPopup\n*L\n53#1:72,2\n*E\n"})
/* loaded from: classes9.dex */
public class ExcerptJumpModelListPopup extends BasePopWindow {

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final List<ExcerptCollectionModel> excerptCollectionList;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final List<SyncNoteModel> noteModelList;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ExcerptJumpModelListPopup(@NotNull Context context, @NotNull EditorBundle editorBundle, @NotNull List<ExcerptCollectionModel> excerptCollectionList, @NotNull List<? extends SyncNoteModel> noteModelList) {
        super(context);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(excerptCollectionList, "excerptCollectionList");
        Intrinsics.checkNotNullParameter(noteModelList, "noteModelList");
        this.context = context;
        this.editorBundle = editorBundle;
        this.excerptCollectionList = excerptCollectionList;
        this.noteModelList = noteModelList;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupExcerptJumpModelListBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.ExcerptJumpModelListPopup$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupExcerptJumpModelListBinding invoke() {
                Context context2;
                context2 = ExcerptJumpModelListPopup.this.context;
                return PopupExcerptJumpModelListBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
        m48748h();
    }

    /* renamed from: i */
    public static final void m48745i(ExcerptJumpModelListPopup this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m48749j(i);
    }

    /* renamed from: f */
    public final PopupExcerptJumpModelListBinding m48746f() {
        return (PopupExcerptJumpModelListBinding) this.binding.getValue();
    }

    /* renamed from: g */
    public final void m48747g(ExcerptQuoteModelAdapter adapter) {
        Sequence asSequence;
        Sequence map;
        Sequence filterNotNull;
        List list;
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (SyncNoteModel syncNoteModel : this.noteModelList) {
            linkedHashMap.put(syncNoteModel.getUniqueId(), syncNoteModel);
        }
        asSequence = CollectionsKt___CollectionsKt.asSequence(this.excerptCollectionList);
        map = SequencesKt___SequencesKt.map(asSequence, new Function1<ExcerptCollectionModel, SyncNoteModel>() { // from class: com.onyx.galaxy.note.editor.view.popup.ExcerptJumpModelListPopup$initItemList$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final SyncNoteModel invoke(@NotNull ExcerptCollectionModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return linkedHashMap.get(it2.getQuoteDocId());
            }
        });
        filterNotNull = SequencesKt___SequencesKt.filterNotNull(map);
        list = SequencesKt___SequencesKt.toList(filterNotNull);
        adapter.setItems(list);
    }

    /* renamed from: h */
    public final void m48748h() {
        setContentView(m48746f().getRoot());
        PopupWindowKt.setDefaultAttribute(this);
        m48746f().recyclerView.setLayoutManager(new LinearLayoutManager(this.context));
        ExcerptQuoteModelAdapter excerptQuoteModelAdapter = new ExcerptQuoteModelAdapter();
        m48747g(excerptQuoteModelAdapter);
        m48746f().recyclerView.setAdapter(excerptQuoteModelAdapter);
        excerptQuoteModelAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.gyf
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                ExcerptJumpModelListPopup.m48745i(ExcerptJumpModelListPopup.this, baseQuickAdapter, view, i);
            }
        });
    }

    /* renamed from: j */
    public final void m48749j(int position) {
        Object orNull;
        orNull = CollectionsKt___CollectionsKt.getOrNull(this.excerptCollectionList, position);
        ExcerptCollectionModel excerptCollectionModel = (ExcerptCollectionModel) orNull;
        if (excerptCollectionModel == null) {
            return;
        }
        EditorBundleKt.postEvent(this.editorBundle, new SplitScreenShowQuoteEvent(excerptCollectionModel.getSourceShapeId(), excerptCollectionModel.getQuoteDocId(), excerptCollectionModel.getQuoteShapeId()));
        dismiss();
    }
}
