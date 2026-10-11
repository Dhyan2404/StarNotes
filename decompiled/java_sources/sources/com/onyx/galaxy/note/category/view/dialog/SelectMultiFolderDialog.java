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
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.category.view.adapter.SelectMultiFolderAdapter;
import com.onyx.galaxy.note.category.view.dialog.SelectMultiFolderDialog;
import com.onyx.galaxy.note.common.data.ManageFolderContext;
import com.onyx.galaxy.note.databinding.DialogSelectMultiFolderBinding;
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

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0017\u001a\u00020\u0014¢\u0006\u0004\b+\u0010,J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002J\b\u0010\f\u001a\u00020\u0004H\u0002J\b\u0010\r\u001a\u00020\u0004H\u0002J\b\u0010\u000e\u001a\u00020\u0004H\u0002J\b\u0010\u000f\u001a\u00020\u0004H\u0002R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R*\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001b\u0010#\u001a\u00020 8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010!\u001a\u0004\b\u0015\u0010\"R\u001b\u0010&\u001a\u00020$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010!\u001a\u0004\b\u0011\u0010%R\u0014\u0010*\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006-"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/dialog/SelectMultiFolderDialog;", "Lcom/onyx/android/sdk/ui/AutoSizeDialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "dismiss", "l", C4921e.f26537n, "", "", "j", "u", "r", "s", "t", "Landroid/content/Context;", C6999h.f39688c, "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;", "i", "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;", "manageFolderContext", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "getPublisher", "()Lio/reactivex/rxjava3/subjects/PublishSubject;", "setPublisher", "(Lio/reactivex/rxjava3/subjects/PublishSubject;)V", "publisher", "Lcom/onyx/galaxy/note/databinding/DialogSelectMultiFolderBinding;", "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/databinding/DialogSelectMultiFolderBinding;", "binding", "Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiFolderAdapter;", "()Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiFolderAdapter;", "adapter", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "m", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "disposables", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/common/data/ManageFolderContext;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSelectMultiFolderDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectMultiFolderDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/SelectMultiFolderDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,142:1\n256#2,2:143\n256#2,2:145\n1549#3:147\n1620#3,3:148\n766#3:151\n857#3,2:152\n1549#3:154\n1620#3,3:155\n*S KotlinDebug\n*F\n+ 1 SelectMultiFolderDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/SelectMultiFolderDialog\n*L\n75#1:143,2\n76#1:145,2\n84#1:147\n84#1:148,3\n89#1:151\n89#1:152,2\n109#1:154\n109#1:155,3\n*E\n"})
/* loaded from: classes17.dex */
public final class SelectMultiFolderDialog extends AutoSizeDialog {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final ManageFolderContext manageFolderContext;

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
    public SelectMultiFolderDialog(@NotNull Context context, @NotNull ManageFolderContext manageFolderContext) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(manageFolderContext, "manageFolderContext");
        this.context = context;
        this.manageFolderContext = manageFolderContext;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogSelectMultiFolderBinding>() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectMultiFolderDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogSelectMultiFolderBinding invoke() {
                Context context2;
                context2 = SelectMultiFolderDialog.this.context;
                return DialogSelectMultiFolderBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<SelectMultiFolderAdapter>() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectMultiFolderDialog$adapter$2

            @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
            /* renamed from: com.onyx.galaxy.note.category.view.dialog.SelectMultiFolderDialog$adapter$2$1 */
            /* loaded from: classes9.dex */
            public /* synthetic */ class C114571 extends FunctionReferenceImpl implements Function0<Unit> {
                public C114571(Object obj) {
                    super(0, obj, SelectMultiFolderDialog.class, "updateSelectionState", "updateSelectionState()V", 0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    ((SelectMultiFolderDialog) this.receiver).m44537u();
                }
            }

            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SelectMultiFolderAdapter invoke() {
                List m44531j;
                List mutableList;
                ManageFolderContext manageFolderContext2;
                m44531j = SelectMultiFolderDialog.this.m44531j();
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) m44531j);
                manageFolderContext2 = SelectMultiFolderDialog.this.manageFolderContext;
                return new SelectMultiFolderAdapter(mutableList, manageFolderContext2, new C114571(SelectMultiFolderDialog.this));
            }
        });
        this.adapter = lazy2;
        this.disposables = new CompositeDisposable();
    }

    /* renamed from: m */
    public static final void m44524m(SelectMultiFolderDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44535s();
    }

    /* renamed from: n */
    public static final void m44525n(SelectMultiFolderDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44535s();
    }

    /* renamed from: o */
    public static final void m44526o(SelectMultiFolderDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44536t();
    }

    /* renamed from: p */
    public static final void m44527p(SelectMultiFolderDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44534r();
        this$0.dismiss();
        PublishSubject<Boolean> publishSubject = this$0.publisher;
        if (publishSubject != null) {
            RxjavaKt.done(publishSubject, Boolean.TRUE);
        }
    }

    /* renamed from: q */
    public static final void m44528q(SelectMultiFolderDialog this$0, View view) {
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
    public final SelectMultiFolderAdapter m44529h() {
        return (SelectMultiFolderAdapter) this.adapter.getValue();
    }

    /* renamed from: i */
    public final DialogSelectMultiFolderBinding m44530i() {
        return (DialogSelectMultiFolderBinding) this.binding.getValue();
    }

    /* renamed from: j */
    public final List<String> m44531j() {
        int collectionSizeOrDefault;
        List<TreeNode<NoteModelBean>> findChildrenNodes = this.manageFolderContext.getRootNode().findChildrenNodes(NewTreeKt.STRATEGY_DEPTH_FIRST);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(findChildrenNodes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = findChildrenNodes.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NoteModelBean) ((TreeNode) it2.next()).getData()).getUniqueId());
        }
        if (this.manageFolderContext.getSelectAll()) {
            return CollectionKt.mergeList(CollectionKt.asList(SelectMultiFolderAdapter.INSTANCE.getUNCLASSIFIED_FOLDER_ID()), arrayList);
        }
        List<String> selectedFolderIds = this.manageFolderContext.getSelectedFolderIds();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : selectedFolderIds) {
            String str = (String) obj;
            if (Intrinsics.areEqual(str, SelectMultiFolderAdapter.INSTANCE.getUNCLASSIFIED_FOLDER_ID()) || arrayList.contains(str)) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    /* renamed from: k */
    public final void m44532k() {
        m44530i().treeListView.setAdapter(m44529h());
        boolean z = !this.manageFolderContext.getRootNode().hasChild();
        RecyclerView treeListView = m44530i().treeListView;
        Intrinsics.checkNotNullExpressionValue(treeListView, "treeListView");
        treeListView.setVisibility(z ^ true ? 0 : 8);
        TintConstraintLayout root = m44530i().emptyBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        root.setVisibility(z ? 0 : 8);
        m44529h().submitTreeNodes();
        m44537u();
    }

    /* renamed from: l */
    public final void m44533l() {
        TintImageView selectAllButton = m44530i().selectAllButton;
        Intrinsics.checkNotNullExpressionValue(selectAllButton, "selectAllButton");
        ViewKt.click$default(selectAllButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.vem
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectMultiFolderDialog.m44524m(SelectMultiFolderDialog.this, view);
            }
        }, 1, null);
        TintTextView selectAllText = m44530i().selectAllText;
        Intrinsics.checkNotNullExpressionValue(selectAllText, "selectAllText");
        ViewKt.click$default(selectAllText, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.wem
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectMultiFolderDialog.m44525n(SelectMultiFolderDialog.this, view);
            }
        }, 1, null);
        TintImageView selectUnclassifiedButton = m44530i().selectUnclassifiedButton;
        Intrinsics.checkNotNullExpressionValue(selectUnclassifiedButton, "selectUnclassifiedButton");
        ViewKt.click$default(selectUnclassifiedButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.xem
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectMultiFolderDialog.m44526o(SelectMultiFolderDialog.this, view);
            }
        }, 1, null);
        TintTextView doneButton = m44530i().doneButton;
        Intrinsics.checkNotNullExpressionValue(doneButton, "doneButton");
        ViewKt.click$default(doneButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.yem
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectMultiFolderDialog.m44527p(SelectMultiFolderDialog.this, view);
            }
        }, 1, null);
        TintTextView cancelButton = m44530i().cancelButton;
        Intrinsics.checkNotNullExpressionValue(cancelButton, "cancelButton");
        ViewKt.click$default(cancelButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.zem
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectMultiFolderDialog.m44528q(SelectMultiFolderDialog.this, view);
            }
        }, 1, null);
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063297, this, savedInstanceState);
    }

    /* renamed from: r */
    public final void m44534r() {
        int collectionSizeOrDefault;
        List<String> mutableList;
        String str;
        if (m44529h().isAllSelected()) {
            this.manageFolderContext.setSelectAll(true);
            this.manageFolderContext.setSelectedFolderIds(new ArrayList());
            return;
        }
        this.manageFolderContext.setSelectAll(false);
        this.manageFolderContext.setSelectedFolderIds(CollectionKt.copy(m44529h().getSelectedFolderIds()));
        ManageFolderContext manageFolderContext = this.manageFolderContext;
        List<String> selectedFolderIds = manageFolderContext.getSelectedFolderIds();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(selectedFolderIds, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (final String str2 : selectedFolderIds) {
            SelectMultiFolderAdapter.Companion companion = SelectMultiFolderAdapter.INSTANCE;
            if (Intrinsics.areEqual(str2, companion.getUNCLASSIFIED_FOLDER_ID())) {
                str = companion.getUNCLASSIFIED_FOLDER_NAME();
            } else {
                TreeNode<NoteModelBean> findNode = this.manageFolderContext.getRootNode().findNode(new Function1<TreeNode<NoteModelBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectMultiFolderDialog$saveSelectedFolders$1$bean$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull TreeNode<NoteModelBean> it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return Boolean.valueOf(Intrinsics.areEqual(it2.getData().getUniqueId(), str2));
                    }
                });
                NoteModelBean data = findNode != null ? findNode.getData() : null;
                if (data == null || (str = data.getTitle()) == null) {
                    str = "";
                }
            }
            arrayList.add(str);
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        manageFolderContext.setSelectedFolderNames(mutableList);
    }

    /* renamed from: s */
    public final void m44535s() {
        if (m44529h().isAllSelected()) {
            m44529h().getSelectedFolderIds().clear();
        } else {
            List<String> allFolderIds = m44529h().getAllFolderIds();
            m44529h().getSelectedFolderIds().clear();
            m44529h().getSelectedFolderIds().add(SelectMultiFolderAdapter.INSTANCE.getUNCLASSIFIED_FOLDER_ID());
            m44529h().getSelectedFolderIds().addAll(allFolderIds);
        }
        m44529h().submitTreeNodes();
        m44537u();
    }

    public final void setPublisher(@Nullable PublishSubject<Boolean> publishSubject) {
        this.publisher = publishSubject;
    }

    /* renamed from: t */
    public final void m44536t() {
        List<String> selectedFolderIds = m44529h().getSelectedFolderIds();
        SelectMultiFolderAdapter.Companion companion = SelectMultiFolderAdapter.INSTANCE;
        boolean contains = selectedFolderIds.contains(companion.getUNCLASSIFIED_FOLDER_ID());
        m44530i().selectUnclassifiedButton.setSelected(!contains);
        if (contains) {
            m44529h().getSelectedFolderIds().remove(companion.getUNCLASSIFIED_FOLDER_ID());
        } else {
            CollectionKt.addIfNotContains(m44529h().getSelectedFolderIds(), companion.getUNCLASSIFIED_FOLDER_ID());
        }
        m44537u();
    }

    /* renamed from: u */
    public final void m44537u() {
        m44530i().selectUnclassifiedButton.setSelected(m44529h().getSelectedFolderIds().contains(SelectMultiFolderAdapter.INSTANCE.getUNCLASSIFIED_FOLDER_ID()));
        m44530i().selectAllButton.setSelected(m44529h().isAllSelected());
    }
}
