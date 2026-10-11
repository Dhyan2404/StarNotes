package com.onyx.galaxy.note.category.view.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.C1126e;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.NewTreeKt;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.p039ui.AutoSizeDialog;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.category.view.adapter.SelectMultiFolderAdapter;
import com.onyx.galaxy.note.category.view.adapter.SelectMultiTagAdapter;
import com.onyx.galaxy.note.category.view.dialog.SelectMultiTagDialog;
import com.onyx.galaxy.note.common.data.ManageTagContext;
import com.onyx.galaxy.note.databinding.DialogSelectMultiTagBinding;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0017\u001a\u00020\u0014¢\u0006\u0004\b+\u0010,J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002J\b\u0010\f\u001a\u00020\u0004H\u0002J\b\u0010\r\u001a\u00020\u0004H\u0002J\b\u0010\u000e\u001a\u00020\u0004H\u0002J\b\u0010\u000f\u001a\u00020\u0004H\u0002R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R*\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001b\u0010#\u001a\u00020 8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010!\u001a\u0004\b\u0015\u0010\"R\u001b\u0010&\u001a\u00020$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010!\u001a\u0004\b\u0011\u0010%R\u0014\u0010*\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006-"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/dialog/SelectMultiTagDialog;", "Lcom/onyx/android/sdk/ui/AutoSizeDialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "dismiss", "l", C4921e.f26537n, "", "", "j", "u", "r", "s", "t", "Landroid/content/Context;", C6999h.f39688c, "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/common/data/ManageTagContext;", "i", "Lcom/onyx/galaxy/note/common/data/ManageTagContext;", "manageTagContext", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "getPublisher", "()Lio/reactivex/rxjava3/subjects/PublishSubject;", "setPublisher", "(Lio/reactivex/rxjava3/subjects/PublishSubject;)V", "publisher", "Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;", "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;", "binding", "Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;", "()Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;", "adapter", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "m", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "disposables", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/common/data/ManageTagContext;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSelectMultiTagDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectMultiTagDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/SelectMultiTagDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,143:1\n256#2,2:144\n256#2,2:146\n1549#3:148\n1620#3,3:149\n766#3:152\n857#3,2:153\n1549#3:155\n1620#3,3:156\n*S KotlinDebug\n*F\n+ 1 SelectMultiTagDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/SelectMultiTagDialog\n*L\n76#1:144,2\n77#1:146,2\n85#1:148\n85#1:149,3\n90#1:152\n90#1:153,2\n110#1:155\n110#1:156,3\n*E\n"})
/* loaded from: classes17.dex */
public final class SelectMultiTagDialog extends AutoSizeDialog {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final ManageTagContext manageTagContext;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public PublishSubject<Boolean> publisher;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final Lazy adapter;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable disposables;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectMultiTagDialog(@NotNull Context context, @NotNull ManageTagContext manageTagContext) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(manageTagContext, "manageTagContext");
        this.context = context;
        this.manageTagContext = manageTagContext;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogSelectMultiTagBinding>() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectMultiTagDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogSelectMultiTagBinding invoke() {
                Context context2;
                context2 = SelectMultiTagDialog.this.context;
                return DialogSelectMultiTagBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<SelectMultiTagAdapter>() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectMultiTagDialog$adapter$2

            @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
            /* renamed from: com.onyx.galaxy.note.category.view.dialog.SelectMultiTagDialog$adapter$2$1 */
            /* loaded from: classes9.dex */
            public /* synthetic */ class C114581 extends FunctionReferenceImpl implements Function0<Unit> {
                public C114581(Object obj) {
                    super(0, obj, SelectMultiTagDialog.class, "updateSelectionState", "updateSelectionState()V", 0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    ((SelectMultiTagDialog) this.receiver).m44556u();
                }
            }

            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SelectMultiTagAdapter invoke() {
                List m44550j;
                List mutableList;
                ManageTagContext manageTagContext2;
                m44550j = SelectMultiTagDialog.this.m44550j();
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) m44550j);
                manageTagContext2 = SelectMultiTagDialog.this.manageTagContext;
                return new SelectMultiTagAdapter(mutableList, manageTagContext2, new C114581(SelectMultiTagDialog.this));
            }
        });
        this.adapter = lazy2;
        this.disposables = new CompositeDisposable();
    }

    /* renamed from: m */
    public static final void m44543m(SelectMultiTagDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44554s();
    }

    /* renamed from: n */
    public static final void m44544n(SelectMultiTagDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44554s();
    }

    /* renamed from: o */
    public static final void m44545o(SelectMultiTagDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44555t();
    }

    /* renamed from: p */
    public static final void m44546p(SelectMultiTagDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44553r();
        this$0.dismiss();
        PublishSubject<Boolean> publishSubject = this$0.publisher;
        if (publishSubject != null) {
            RxjavaKt.done(publishSubject, Boolean.TRUE);
        }
    }

    /* renamed from: q */
    public static final void m44547q(SelectMultiTagDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
        PublishSubject<Boolean> publishSubject = this$0.publisher;
        if (publishSubject != null) {
            RxjavaKt.done(publishSubject, Boolean.FALSE);
        }
    }

    @Override // com.onyx.android.sdk.p039ui.AutoSizeDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        this.disposables.clear();
    }

    @Nullable
    public final PublishSubject<Boolean> getPublisher() {
        return this.publisher;
    }

    /* renamed from: h */
    public final SelectMultiTagAdapter m44548h() {
        return (SelectMultiTagAdapter) this.adapter.getValue();
    }

    /* renamed from: i */
    public final DialogSelectMultiTagBinding m44549i() {
        return (DialogSelectMultiTagBinding) this.binding.getValue();
    }

    /* renamed from: j */
    public final List<String> m44550j() {
        int collectionSizeOrDefault;
        List<TreeNode<NoteTagBean>> findChildrenNodes = this.manageTagContext.getRootNode().findChildrenNodes(NewTreeKt.STRATEGY_DEPTH_FIRST);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(findChildrenNodes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = findChildrenNodes.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NoteTagBean) ((TreeNode) it2.next()).getData()).getUniqueId());
        }
        if (this.manageTagContext.getSelectAll()) {
            return CollectionKt.mergeList(CollectionKt.asList(SelectMultiFolderAdapter.INSTANCE.getUNCLASSIFIED_FOLDER_ID()), arrayList);
        }
        List<String> selectedTagIds = this.manageTagContext.getSelectedTagIds();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : selectedTagIds) {
            String str = (String) obj;
            if (Intrinsics.areEqual(str, SelectMultiFolderAdapter.INSTANCE.getUNCLASSIFIED_FOLDER_ID()) || arrayList.contains(str)) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    /* renamed from: k */
    public final void m44551k() {
        m44549i().treeListView.setAdapter(m44548h());
        boolean z = !this.manageTagContext.getRootNode().hasChild();
        RecyclerView treeListView = m44549i().treeListView;
        Intrinsics.checkNotNullExpressionValue(treeListView, "treeListView");
        treeListView.setVisibility(z ^ true ? 0 : 8);
        TintConstraintLayout root = m44549i().emptyBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        root.setVisibility(z ? 0 : 8);
        m44548h().submitTreeNodes();
        m44556u();
    }

    /* renamed from: l */
    public final void m44552l() {
        TintImageView selectAllButton = m44549i().selectAllButton;
        Intrinsics.checkNotNullExpressionValue(selectAllButton, "selectAllButton");
        ViewKt.click$default(selectAllButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.efm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectMultiTagDialog.m44543m(SelectMultiTagDialog.this, view);
            }
        }, 1, null);
        TintTextView selectAllText = m44549i().selectAllText;
        Intrinsics.checkNotNullExpressionValue(selectAllText, "selectAllText");
        ViewKt.click$default(selectAllText, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ffm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectMultiTagDialog.m44544n(SelectMultiTagDialog.this, view);
            }
        }, 1, null);
        TintImageView selectUnclassifiedButton = m44549i().selectUnclassifiedButton;
        Intrinsics.checkNotNullExpressionValue(selectUnclassifiedButton, "selectUnclassifiedButton");
        ViewKt.click$default(selectUnclassifiedButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.gfm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectMultiTagDialog.m44545o(SelectMultiTagDialog.this, view);
            }
        }, 1, null);
        TintTextView doneButton = m44549i().doneButton;
        Intrinsics.checkNotNullExpressionValue(doneButton, "doneButton");
        ViewKt.click$default(doneButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.hfm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectMultiTagDialog.m44546p(SelectMultiTagDialog.this, view);
            }
        }, 1, null);
        TintTextView cancelButton = m44549i().cancelButton;
        Intrinsics.checkNotNullExpressionValue(cancelButton, "cancelButton");
        ViewKt.click$default(cancelButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ifm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectMultiTagDialog.m44547q(SelectMultiTagDialog.this, view);
            }
        }, 1, null);
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063296, this, savedInstanceState);
    }

    /* renamed from: r */
    public final void m44553r() {
        int collectionSizeOrDefault;
        List<String> mutableList;
        String str;
        if (m44548h().isAllSelected()) {
            this.manageTagContext.setSelectAll(true);
            this.manageTagContext.setSelectedTagIds(new ArrayList());
            return;
        }
        this.manageTagContext.setSelectAll(false);
        this.manageTagContext.setSelectedTagIds(CollectionKt.copy(m44548h().getSelectedTagIds()));
        ManageTagContext manageTagContext = this.manageTagContext;
        List<String> selectedTagIds = manageTagContext.getSelectedTagIds();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(selectedTagIds, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (final String str2 : selectedTagIds) {
            SelectMultiTagAdapter.Companion companion = SelectMultiTagAdapter.INSTANCE;
            if (Intrinsics.areEqual(str2, companion.getUNCLASSIFIED_TAG_ID())) {
                str = companion.getUNCLASSIFIED_TAG_NAME();
            } else {
                TreeNode<NoteTagBean> findNode = this.manageTagContext.getRootNode().findNode(new Function1<TreeNode<NoteTagBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectMultiTagDialog$saveSelectedTags$1$bean$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull TreeNode<NoteTagBean> it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return Boolean.valueOf(Intrinsics.areEqual(it2.getData().getUniqueId(), str2));
                    }
                });
                NoteTagBean data = findNode != null ? findNode.getData() : null;
                if (data == null || (str = data.getContent()) == null) {
                    str = "";
                }
            }
            arrayList.add(str);
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        manageTagContext.setSelectedTagNames(mutableList);
    }

    /* renamed from: s */
    public final void m44554s() {
        if (m44548h().isAllSelected()) {
            m44548h().getSelectedTagIds().clear();
        } else {
            List<String> allTagIds = m44548h().getAllTagIds();
            m44548h().getSelectedTagIds().clear();
            m44548h().getSelectedTagIds().add(SelectMultiTagAdapter.INSTANCE.getUNCLASSIFIED_TAG_ID());
            m44548h().getSelectedTagIds().addAll(allTagIds);
        }
        m44548h().submitTreeNodes();
        m44556u();
    }

    public final void setPublisher(@Nullable PublishSubject<Boolean> publishSubject) {
        this.publisher = publishSubject;
    }

    /* renamed from: t */
    public final void m44555t() {
        List<String> selectedTagIds = m44548h().getSelectedTagIds();
        SelectMultiTagAdapter.Companion companion = SelectMultiTagAdapter.INSTANCE;
        boolean contains = selectedTagIds.contains(companion.getUNCLASSIFIED_TAG_ID());
        m44549i().selectUnclassifiedButton.setSelected(!contains);
        if (contains) {
            m44548h().getSelectedTagIds().remove(companion.getUNCLASSIFIED_TAG_ID());
        } else {
            CollectionKt.addIfNotContains(m44548h().getSelectedTagIds(), companion.getUNCLASSIFIED_TAG_ID());
        }
        m44556u();
    }

    /* renamed from: u */
    public final void m44556u() {
        m44549i().selectUnclassifiedButton.setSelected(m44548h().getSelectedTagIds().contains(SelectMultiTagAdapter.INSTANCE.getUNCLASSIFIED_TAG_ID()));
        m44549i().selectAllButton.setSelected(m44548h().isAllSelected());
    }
}
