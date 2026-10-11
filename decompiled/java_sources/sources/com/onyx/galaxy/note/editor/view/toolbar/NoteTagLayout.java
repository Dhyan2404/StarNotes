package com.onyx.galaxy.note.editor.view.toolbar;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.flexbox.FlexLine;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.replicator.note.utils.NoteTagNodes;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.EditTagForNoteAction;
import com.onyx.galaxy.note.category.action.LoadTagTreeAction;
import com.onyx.galaxy.note.category.event.NoteTagUpdatedEvent;
import com.onyx.galaxy.note.category.view.adapter.TagsListAdapter;
import com.onyx.galaxy.note.common.data.EditTagForNoteContext;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.LayoutNoteTagBinding;
import com.onyx.galaxy.note.editor.view.toolbar.NoteTagLayout;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.function.Predicate;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u0000 F2\u00020\u0001:\u0001FB\u0011\b\u0016\u0012\u0006\u0010=\u001a\u00020<¢\u0006\u0004\b>\u0010?B\u001d\b\u0016\u0012\u0006\u0010=\u001a\u00020<\u0012\n\b\u0002\u0010A\u001a\u0004\u0018\u00010@¢\u0006\u0004\b>\u0010BB%\b\u0016\u0012\u0006\u0010=\u001a\u00020<\u0012\n\b\u0002\u0010A\u001a\u0004\u0018\u00010@\u0012\u0006\u0010D\u001a\u00020C¢\u0006\u0004\b>\u0010EJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0004J\b\u0010\n\u001a\u00020\u0004H\u0002J\b\u0010\u000b\u001a\u00020\u0004H\u0002J\b\u0010\f\u001a\u00020\u0004H\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u001e\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u001a\u0010\u0018\u001a\u00020\u00042\u0010\u0010\u0017\u001a\f\u0012\u0004\u0012\u00020\u00150\u0014j\u0002`\u0016H\u0002J\b\u0010\u0019\u001a\u00020\u0004H\u0003J\u0012\u0010\u001c\u001a\u00020\u00042\b\b\u0002\u0010\u001b\u001a\u00020\u001aH\u0002J\u0010\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u0011H\u0002R\u001b\u0010$\u001a\u00020\u001f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000b\u0010%R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\n\u0010&R\u001c\u0010*\u001a\b\u0012\u0004\u0012\u00020'0\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u001c\u0010-\u001a\b\u0012\u0004\u0012\u00020'0+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010)R\u0016\u0010/\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010.R\u0016\u00101\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010.R\u001a\u00102\u001a\b\u0012\u0004\u0012\u00020\u00110+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010)R\u001a\u00103\u001a\b\u0012\u0004\u0012\u00020\u00110+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010)R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u00104R\u0014\u00107\u001a\u0002058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u00106R\u0014\u0010;\u001a\u0002088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010:¨\u0006G"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTagLayout;", "Landroid/widget/FrameLayout;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "setEditorBundle", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "syncNoteModel", "setSyncNoteModel", "updateTagEvent", C6998g.f39679a, C6997f.f39671c, "j", "Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;", "editTagForNoteContext", "l", "", "", "selectedTagIds", "q", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "tagTree", "m", "s", "", "isInit", C4921e.f26528e, "eventId", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/galaxy/note/databinding/LayoutNoteTagBinding;", "e", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/LayoutNoteTagBinding;", "binding", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", C6999h.f39688c, "Ljava/util/List;", "allTagList", "", "i", "selectTagList", Constants.HASIDCALL_INDEX_SIG, "isTagExpand", C4921e.f26537n, "showExpandIcon", "expandTagList", "foldTagList", "Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;", "Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;", "Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;", "adapter", "Lcom/google/android/flexbox/FlexboxLayoutManager;", "p", "Lcom/google/android/flexbox/FlexboxLayoutManager;", "flexboxLayoutManager", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteTagLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTagLayout.kt\ncom/onyx/galaxy/note/editor/view/toolbar/NoteTagLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,207:1\n1549#2:208\n1620#2,3:209\n1549#2:212\n1620#2,3:213\n766#2:216\n857#2,2:217\n1549#2:219\n1620#2,3:220\n326#3,4:223\n*S KotlinDebug\n*F\n+ 1 NoteTagLayout.kt\ncom/onyx/galaxy/note/editor/view/toolbar/NoteTagLayout\n*L\n103#1:208\n103#1:209,3\n119#1:212\n119#1:213,3\n142#1:216\n142#1:217,2\n155#1:219\n155#1:220,3\n190#1:223,4\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteTagLayout extends FrameLayout {

    @NotNull
    public static final String TAG = "NoteTagLayout";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: f, reason: from kotlin metadata */
    public EditorBundle editorBundle;

    /* renamed from: g, reason: from kotlin metadata */
    public SyncNoteModel syncNoteModel;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<? extends SyncTagModel> allTagList;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public List<SyncTagModel> selectTagList;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean isTagExpand;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean showExpandIcon;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final List<String> expandTagList;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final List<String> foldTagList;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public EditTagForNoteContext editTagForNoteContext;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final TagsListAdapter adapter;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final FlexboxLayoutManager flexboxLayoutManager;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NoteTagLayout(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final LayoutNoteTagBinding getBinding() {
        return (LayoutNoteTagBinding) this.binding.getValue();
    }

    /* renamed from: h */
    public static final void m50051h(NoteTagLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50059j();
    }

    /* renamed from: i */
    public static final void m50052i(NoteTagLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.isTagExpand = !this$0.isTagExpand;
        m50054p(this$0, false, 1, null);
    }

    /* renamed from: k */
    public static final void m50053k(NoteTagLayout this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditTagForNoteContext editTagForNoteContext = this$0.editTagForNoteContext;
        Intrinsics.checkNotNull(editTagForNoteContext);
        this$0.m50060l(editTagForNoteContext);
    }

    /* renamed from: p */
    public static /* synthetic */ void m50054p(NoteTagLayout noteTagLayout, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        noteTagLayout.m50063o(z);
    }

    /* renamed from: r */
    public static final boolean m50055r(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    /* renamed from: t */
    public static final void m50056t(NoteTagLayout this$0, List tagIds) {
        Object orNull;
        int lastIndex;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(tagIds, "$tagIds");
        List<FlexLine> flexLines = this$0.flexboxLayoutManager.getFlexLines();
        Intrinsics.checkNotNullExpressionValue(flexLines, "getFlexLines(...)");
        int integer = ResManager.INSTANCE.getInteger(C10651R.integer.note_tags_fold_line_index);
        orNull = CollectionsKt___CollectionsKt.getOrNull(flexLines, integer);
        FlexLine flexLine = (FlexLine) orNull;
        Integer valueOf = flexLine != null ? Integer.valueOf(flexLine.getFirstIndex() + flexLine.getItemCount()) : null;
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(flexLines);
        this$0.showExpandIcon = lastIndex > integer;
        if (valueOf != null) {
            this$0.foldTagList.addAll(CollectionKt.safelySubList(tagIds, 0, valueOf.intValue()));
        }
        ViewKt.setViewVisibleOrGone(this$0.getBinding().ivExpand, this$0.showExpandIcon);
    }

    /* renamed from: f */
    public final void m50057f() {
        new LoadTagTreeAction().build().doOnNext(new Consumer() { // from class: com.onyx.galaxy.note.editor.view.toolbar.NoteTagLayout.a
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull TreeNode<NoteTagBean> p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                NoteTagLayout.this.m50061m(p0);
            }
        }).subscribe();
    }

    /* renamed from: g */
    public final void m50058g() {
        getBinding().tagManagerContainer.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.t2k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTagLayout.m50051h(NoteTagLayout.this, view);
            }
        });
        getBinding().ivExpand.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.u2k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTagLayout.m50052i(NoteTagLayout.this, view);
            }
        });
        this.flexboxLayoutManager.setFlexDirection(0);
        getBinding().rvTags.setLayoutManager(this.flexboxLayoutManager);
        getBinding().rvTags.setAdapter(this.adapter);
    }

    /* renamed from: j */
    public final void m50059j() {
        int collectionSizeOrDefault;
        List<SyncTagModel> list = this.selectTagList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((SyncTagModel) it2.next()).getUniqueId());
        }
        EditTagForNoteContext editTagForNoteContext = new EditTagForNoteContext();
        editTagForNoteContext.getSelectTagIds().addAll(arrayList);
        this.editTagForNoteContext = editTagForNoteContext;
        EditTagForNoteContext editTagForNoteContext2 = this.editTagForNoteContext;
        Intrinsics.checkNotNull(editTagForNoteContext2);
        EditTagForNoteAction editTagForNoteAction = new EditTagForNoteAction(editTagForNoteContext2, TAG);
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        editTagForNoteAction.setActivityContext(context).build().doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.v2k
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                NoteTagLayout.m50053k(NoteTagLayout.this);
            }
        }).subscribe();
        m50062n(OnyxStatisticConstant.ID_CLICK_TAG_MANAGE);
    }

    /* renamed from: l */
    public final void m50060l(EditTagForNoteContext editTagForNoteContext) {
        int collectionSizeOrDefault;
        List<String> distinct;
        List<NoteTagBean> selectedNoteTagBean = editTagForNoteContext.getSelectedNoteTagBean();
        List<NoteTagBean> list = selectedNoteTagBean;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NoteTagBean) it2.next()).getUniqueId());
        }
        distinct = CollectionsKt___CollectionsKt.distinct(arrayList);
        this.selectTagList.clear();
        this.selectTagList.addAll(selectedNoteTagBean);
        SyncNoteModel syncNoteModel = this.syncNoteModel;
        SyncNoteModel syncNoteModel2 = null;
        if (syncNoteModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("syncNoteModel");
            syncNoteModel = null;
        }
        m50064q(syncNoteModel, distinct);
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        m50064q(EditorBundleKt.noteBundle(editorBundle).getNoteDoc().getNoteModel(), distinct);
        m50065s();
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle2 = null;
        }
        SyncNoteModel syncNoteModel3 = this.syncNoteModel;
        if (syncNoteModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("syncNoteModel");
        } else {
            syncNoteModel2 = syncNoteModel3;
        }
        EditorBundleKt.postEvent(editorBundle2, new NoteTagUpdatedEvent(syncNoteModel2));
    }

    /* renamed from: m */
    public final void m50061m(TreeNode<NoteTagBean> tagTree) {
        List<SyncTagModel> mutableList;
        List<SyncTagModel> flattenToList = NoteTagNodes.INSTANCE.flattenToList(tagTree);
        this.allTagList = flattenToList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : flattenToList) {
            SyncTagModel syncTagModel = (SyncTagModel) obj;
            SyncNoteModel syncNoteModel = this.syncNoteModel;
            if (syncNoteModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("syncNoteModel");
                syncNoteModel = null;
            }
            if (syncNoteModel.getTagIdList().contains(syncTagModel.getUniqueId())) {
                arrayList.add(obj);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        this.selectTagList = mutableList;
        m50065s();
    }

    /* renamed from: n */
    public final void m50062n(String eventId) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_ID, EditorBundleKt.docId(editorBundle));
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(eventId, linkedHashMap));
    }

    /* renamed from: o */
    public final void m50063o(boolean isInit) {
        getBinding().ivExpand.setRotation(this.isTagExpand ? ResManager.INSTANCE.getFloat(C10651R.dimen.rotition_180) : 0.0f);
        if (!isInit) {
            this.adapter.submitList(null);
            this.adapter.submitList(this.isTagExpand ? this.expandTagList : this.foldTagList);
        }
        TintRecycleView rvTags = getBinding().rvTags;
        Intrinsics.checkNotNullExpressionValue(rvTags, "rvTags");
        ViewGroup.LayoutParams layoutParams = rvTags.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.topMargin = ResManager.INSTANCE.getDimens(CollectionKt.isNonBlank(this.adapter.getItems()) ? C7384R.dimen.dp_8 : C7384R.dimen.dp_0);
        rvTags.setLayoutParams(marginLayoutParams);
    }

    /* renamed from: q */
    public final void m50064q(SyncNoteModel syncNoteModel, final List<String> selectedTagIds) {
        List distinct;
        List<String> mutableList;
        List<String> tagIdList = syncNoteModel.getTagIdList();
        final Function1<String, Boolean> function1 = new Function1<String, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.NoteTagLayout$updateNoteModelTagList$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!selectedTagIds.contains(it2));
            }
        };
        tagIdList.removeIf(new Predicate() { // from class: com.sunia.HTREnginev2.x2k
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m50055r;
                m50055r = NoteTagLayout.m50055r(Function1.this, obj);
                return m50055r;
            }
        });
        tagIdList.addAll(selectedTagIds);
        distinct = CollectionsKt___CollectionsKt.distinct(tagIdList);
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) distinct);
        syncNoteModel.setTagIdList(mutableList);
    }

    @SuppressLint({"RestrictedApi"})
    /* renamed from: s */
    public final void m50065s() {
        int collectionSizeOrDefault;
        this.isTagExpand = true;
        this.showExpandIcon = false;
        this.adapter.submitList(null);
        this.expandTagList.clear();
        this.foldTagList.clear();
        List<SyncTagModel> list = this.selectTagList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        final ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((SyncTagModel) it2.next()).getUniqueId());
        }
        this.expandTagList.addAll(arrayList);
        this.adapter.submitList(arrayList);
        getBinding().rvTags.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.w2k
            @Override // java.lang.Runnable
            public final void run() {
                NoteTagLayout.m50056t(NoteTagLayout.this, arrayList);
            }
        }, 300L);
        m50063o(true);
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
    }

    public final void setSyncNoteModel(@NotNull SyncNoteModel syncNoteModel) {
        Intrinsics.checkNotNullParameter(syncNoteModel, "syncNoteModel");
        this.syncNoteModel = syncNoteModel;
    }

    public final void updateTagEvent() {
        EditTagForNoteContext editTagForNoteContext = this.editTagForNoteContext;
        if (editTagForNoteContext != null) {
            m50060l(editTagForNoteContext);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NoteTagLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ NoteTagLayout(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteTagLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        List<? extends SyncTagModel> emptyList;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LayoutNoteTagBinding>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.NoteTagLayout$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LayoutNoteTagBinding invoke() {
                return LayoutNoteTagBinding.inflate(LayoutInflater.from(NoteTagLayout.this.getContext()), NoteTagLayout.this, true);
            }
        });
        this.binding = lazy;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.allTagList = emptyList;
        this.selectTagList = new ArrayList();
        this.isTagExpand = true;
        this.expandTagList = new ArrayList();
        this.foldTagList = new ArrayList();
        this.adapter = new TagsListAdapter();
        this.flexboxLayoutManager = new FlexboxLayoutManager(getContext());
        m50058g();
        m50057f();
    }

    public /* synthetic */ NoteTagLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}
