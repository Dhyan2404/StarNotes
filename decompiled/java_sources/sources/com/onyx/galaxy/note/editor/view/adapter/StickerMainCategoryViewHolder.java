package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.google.android.material.divider.MaterialDividerItemDecoration;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.replicator.sticker.data.StickerValues;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.onyx.android.sdk.replicator.sticker.model.StickerModel;
import com.onyx.android.sdk.replicator.sticker.model.StickerModelKt;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.LayoutStickerCategoryMainBinding;
import com.onyx.galaxy.note.editor.view.adapter.StickerMainCategoryViewHolder;
import com.onyx.galaxy.note.p048ui.sticker.AddSubCategoryAction;
import com.onyx.galaxy.note.p048ui.sticker.DeleteStickersAction;
import com.onyx.galaxy.note.p048ui.sticker.ImportStickerFileAction;
import com.onyx.galaxy.note.p048ui.sticker.InsertStickersToNoteAction;
import com.onyx.galaxy.note.p048ui.sticker.LoadStickerListAction;
import com.onyx.galaxy.note.p048ui.sticker.MoveSubCategoryAction;
import com.onyx.galaxy.note.p048ui.sticker.StickerUiBundle;
import com.onyx.galaxy.note.settings.data.PermissionRequestConst;
import com.onyx.galaxy.note.settings.utils.PermissionActionUtils;
import com.onyx.galaxy.note.utils.Navigator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\b\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0016\u0012\u0006\u0010\u001e\u001a\u00020\u0002¢\u0006\u0004\b1\u00102J\b\u0010\u0004\u001a\u00020\u0003H\u0002J,\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0002J\b\u0010\f\u001a\u00020\u0006H\u0002J\b\u0010\r\u001a\u00020\u0003H\u0002J\b\u0010\u000e\u001a\u00020\u0003H\u0002J\b\u0010\u000f\u001a\u00020\u0003H\u0002J\b\u0010\u0010\u001a\u00020\u0003H\u0002J\u0006\u0010\u0011\u001a\u00020\u0003J\u0006\u0010\u0012\u001a\u00020\u0003J\u0006\u0010\u0013\u001a\u00020\u0003J\u0006\u0010\u0014\u001a\u00020\u0003J\u0006\u0010\u0015\u001a\u00020\u0003R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u001a\u0010\u001e\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b$\u0010%R\"\u0010\t\u001a\u00020\b8\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b\t\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\"\u0010\n\u001a\u00020\b8\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b\n\u0010'\u001a\u0004\b,\u0010)\"\u0004\b-\u0010+R\u0016\u00100\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010\f¨\u00063"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;", "", "a0", "", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;", "list", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "mainCategory", "subCategory", "Y", Constants.HASIDCALL_INDEX_SIG, "c0", "b0", "P", "e0", "updateSubCategoryList", "updateSubCategoryStickerList", "updateEmptyLayout", "addImportEvent", "addNewCategoryEvent", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;", "I", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;", "bundle", "J", "Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;", "getBinding$note_overseasRelease", "()Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/adapter/StickerSubCategoryAdapter;", "K", "Lcom/onyx/galaxy/note/editor/view/adapter/StickerSubCategoryAdapter;", "subCategoryAdapter", "Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;", "L", "Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;", "stickerListAdapter", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "getMainCategory$note_overseasRelease", "()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "setMainCategory$note_overseasRelease", "(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V", "getSubCategory$note_overseasRelease", "setSubCategory$note_overseasRelease", "", "M", "isStickerEmpty", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nStickerMainCategoryViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StickerMainCategoryViewHolder.kt\ncom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,318:1\n350#2,7:319\n766#2:326\n857#2,2:327\n1549#2:329\n1620#2,3:330\n*S KotlinDebug\n*F\n+ 1 StickerMainCategoryViewHolder.kt\ncom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder\n*L\n300#1:319,7\n214#1:326\n214#1:327,2\n215#1:329\n215#1:330,3\n*E\n"})
/* loaded from: classes9.dex */
public final class StickerMainCategoryViewHolder extends DataBindingHolder<LayoutStickerCategoryMainBinding> {

    /* renamed from: I, reason: from kotlin metadata */
    @NotNull
    public final StickerUiBundle bundle;

    /* renamed from: J, reason: from kotlin metadata */
    @NotNull
    public final LayoutStickerCategoryMainBinding binding;

    /* renamed from: K, reason: from kotlin metadata */
    public StickerSubCategoryAdapter subCategoryAdapter;

    /* renamed from: L, reason: from kotlin metadata */
    public StickerListAdapter stickerListAdapter;

    /* renamed from: M, reason: from kotlin metadata */
    public boolean isStickerEmpty;
    public StickerCategoryModel mainCategory;
    public StickerCategoryModel subCategory;

    @SourceDebugExtension({"SMAP\nStickerMainCategoryViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StickerMainCategoryViewHolder.kt\ncom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$addBatchEvent$3$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,318:1\n1855#2,2:319\n*S KotlinDebug\n*F\n+ 1 StickerMainCategoryViewHolder.kt\ncom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$addBatchEvent$3$1\n*L\n222#1:319,2\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.StickerMainCategoryViewHolder$a */
    /* loaded from: classes9.dex */
    public static final class C12281a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ List<Integer> f59630f;

        public C12281a(List<Integer> list) {
            this.f59630f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StickerMainCategoryViewHolder.this.bundle.clearSelectedItems(StickerMainCategoryViewHolder.this.getMainCategory$note_overseasRelease());
            List<Integer> list = this.f59630f;
            StickerMainCategoryViewHolder stickerMainCategoryViewHolder = StickerMainCategoryViewHolder.this;
            Iterator<T> it3 = list.iterator();
            while (it3.hasNext()) {
                int intValue = ((Number) it3.next()).intValue();
                StickerListAdapter stickerListAdapter = stickerMainCategoryViewHolder.stickerListAdapter;
                if (stickerListAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("stickerListAdapter");
                    stickerListAdapter = null;
                }
                stickerListAdapter.notifyItemChanged(intValue);
            }
            StickerMainCategoryViewHolder.this.m47703e0();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.StickerMainCategoryViewHolder$b */
    /* loaded from: classes9.dex */
    public static final class C12282b<T> implements Consumer {
        public C12282b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StickerMainCategoryViewHolder.this.updateSubCategoryStickerList();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.StickerMainCategoryViewHolder$c */
    /* loaded from: classes9.dex */
    public static final class C12283c<T> implements Consumer {
        public C12283c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StickerListAdapter stickerListAdapter = StickerMainCategoryViewHolder.this.stickerListAdapter;
            if (stickerListAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("stickerListAdapter");
                stickerListAdapter = null;
            }
            stickerListAdapter.notifyDataSetChanged();
            StickerMainCategoryViewHolder.this.m47703e0();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.StickerMainCategoryViewHolder$d */
    /* loaded from: classes9.dex */
    public static final class C12284d<T> implements Consumer {
        public C12284d() {
        }

        /* renamed from: a */
        public final void m47704a(boolean z) {
            if (z) {
                RxBaseAction.execute$default(new ImportStickerFileAction(StickerMainCategoryViewHolder.this.bundle), null, null, null, 7, null);
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m47704a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.StickerMainCategoryViewHolder$e */
    /* loaded from: classes9.dex */
    public static final class C12285e<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ int f59635f;

        public C12285e(int i) {
            this.f59635f = i;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Object last;
            Intrinsics.checkNotNullParameter(it2, "it");
            StickerSubCategoryAdapter stickerSubCategoryAdapter = StickerMainCategoryViewHolder.this.subCategoryAdapter;
            StickerSubCategoryAdapter stickerSubCategoryAdapter2 = null;
            if (stickerSubCategoryAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("subCategoryAdapter");
                stickerSubCategoryAdapter = null;
            }
            stickerSubCategoryAdapter.notifyItemChanged(this.f59635f);
            StickerMainCategoryViewHolder stickerMainCategoryViewHolder = StickerMainCategoryViewHolder.this;
            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) stickerMainCategoryViewHolder.getMainCategory$note_overseasRelease().getSubCategory());
            stickerMainCategoryViewHolder.setSubCategory$note_overseasRelease((StickerCategoryModel) last);
            StickerSubCategoryAdapter stickerSubCategoryAdapter3 = StickerMainCategoryViewHolder.this.subCategoryAdapter;
            if (stickerSubCategoryAdapter3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("subCategoryAdapter");
            } else {
                stickerSubCategoryAdapter2 = stickerSubCategoryAdapter3;
            }
            stickerSubCategoryAdapter2.notifyItemInserted(StickerMainCategoryViewHolder.this.getMainCategory$note_overseasRelease().getSubCategory().size() - 1);
            StickerMainCategoryViewHolder.this.getBinding().subCategoryListView.scrollToPosition(StickerMainCategoryViewHolder.this.getMainCategory$note_overseasRelease().getSubCategory().size() - 1);
            StickerMainCategoryViewHolder.this.updateSubCategoryStickerList();
            StickerMainCategoryViewHolder.this.updateSubCategoryList();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.StickerMainCategoryViewHolder$f */
    /* loaded from: classes9.dex */
    public static final class C12286f<T, R> implements Function {
        public C12286f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<StickerModel> apply(@NotNull List<StickerModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StickerMainCategoryViewHolder stickerMainCategoryViewHolder = StickerMainCategoryViewHolder.this;
            return stickerMainCategoryViewHolder.m47698Y(it2, stickerMainCategoryViewHolder.getMainCategory$note_overseasRelease(), StickerMainCategoryViewHolder.this.getSubCategory$note_overseasRelease());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.StickerMainCategoryViewHolder$g */
    /* loaded from: classes9.dex */
    public static final class C12287g<T> implements Consumer {
        public C12287g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<StickerModel> stickers) {
            Intrinsics.checkNotNullParameter(stickers, "stickers");
            StickerMainCategoryViewHolder.this.getSubCategory$note_overseasRelease().getStickers().clear();
            StickerMainCategoryViewHolder.this.getSubCategory$note_overseasRelease().getStickers().addAll(stickers);
            StickerListAdapter stickerListAdapter = StickerMainCategoryViewHolder.this.stickerListAdapter;
            if (stickerListAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("stickerListAdapter");
                stickerListAdapter = null;
            }
            stickerListAdapter.submitList(stickers);
            StickerMainCategoryViewHolder.this.isStickerEmpty = stickers.isEmpty();
            StickerMainCategoryViewHolder.this.m47703e0();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StickerMainCategoryViewHolder(@NotNull StickerUiBundle bundle, @NotNull LayoutStickerCategoryMainBinding binding) {
        super(binding.getRoot());
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.bundle = bundle;
        this.binding = binding;
        m47702c0();
        m47701b0();
        addImportEvent();
        m47697P();
        addNewCategoryEvent();
        m47700a0();
    }

    /* renamed from: Q */
    public static final void m47688Q(StickerMainCategoryViewHolder this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.bundle.toggleSelectAll(this$0.getMainCategory$note_overseasRelease());
        StickerListAdapter stickerListAdapter = this$0.stickerListAdapter;
        if (stickerListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("stickerListAdapter");
            stickerListAdapter = null;
        }
        stickerListAdapter.notifyDataSetChanged();
        this$0.m47703e0();
    }

    /* renamed from: R */
    public static final void m47689R(StickerMainCategoryViewHolder this$0, View view) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        List<StickerModel> selectedStickers = this$0.bundle.getSelectedStickers(this$0.getMainCategory$note_overseasRelease());
        ArrayList<StickerModel> arrayList = new ArrayList();
        for (Object obj : selectedStickers) {
            if (StickerModelKt.isNormalSticker((StickerModel) obj)) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (StickerModel stickerModel : arrayList) {
            StickerListAdapter stickerListAdapter = this$0.stickerListAdapter;
            if (stickerListAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("stickerListAdapter");
                stickerListAdapter = null;
            }
            arrayList2.add(Integer.valueOf(stickerListAdapter.getItems().indexOf(stickerModel)));
        }
        new InsertStickersToNoteAction(this$0.bundle, this$0.getMainCategory$note_overseasRelease(), arrayList).build().doOnNext(new C12281a(arrayList2)).subscribe();
    }

    /* renamed from: S */
    public static final void m47690S(StickerMainCategoryViewHolder this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        new MoveSubCategoryAction(this$0.bundle, this$0.getMainCategory$note_overseasRelease(), this$0.bundle.getSelectedItems(this$0.getMainCategory$note_overseasRelease())).build().doOnNext(new C12282b()).subscribe();
    }

    /* renamed from: T */
    public static final void m47691T(StickerMainCategoryViewHolder this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        new DeleteStickersAction(this$0.bundle, this$0.getMainCategory$note_overseasRelease(), this$0.bundle.getSelectedItems(this$0.getMainCategory$note_overseasRelease())).build().doOnNext(new C12283c()).subscribe();
    }

    /* renamed from: U */
    public static final void m47692U(StickerMainCategoryViewHolder this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.bundle.exitSelectionMode(this$0.getMainCategory$note_overseasRelease());
        StickerListAdapter stickerListAdapter = this$0.stickerListAdapter;
        if (stickerListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("stickerListAdapter");
            stickerListAdapter = null;
        }
        stickerListAdapter.notifyDataSetChanged();
        this$0.m47703e0();
    }

    /* renamed from: V */
    public static final void m47693V(StickerMainCategoryViewHolder this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.bundle.enterSelectionMode(this$0.getMainCategory$note_overseasRelease());
        StickerListAdapter stickerListAdapter = this$0.stickerListAdapter;
        if (stickerListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("stickerListAdapter");
            stickerListAdapter = null;
        }
        stickerListAdapter.notifyDataSetChanged();
        this$0.m47703e0();
    }

    /* renamed from: W */
    public static final void m47694W(StickerMainCategoryViewHolder this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        Context activityContext = this$0.bundle.getActivityContext();
        Context activityContext2 = this$0.bundle.getActivityContext();
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        String string = activityContext2.getString(permissionRequestConst.getPERMISSION_IMPORT_STICKER_FUNCTION_NAME());
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = this$0.bundle.getActivityContext().getString(permissionRequestConst.getPERMISSION_IMPORT_STICKER_INTENT_NAME());
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        permissionActionUtils.requestImagePermission(activityContext, string, string2).build().doOnNext(new C12284d()).subscribe();
    }

    /* renamed from: X */
    public static final void m47695X(StickerMainCategoryViewHolder this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        new AddSubCategoryAction(this$0.bundle, this$0.getMainCategory$note_overseasRelease()).build().doOnNext(new C12285e(this$0.getMainCategory$note_overseasRelease().getSubCategory().indexOf(this$0.getSubCategory$note_overseasRelease()))).subscribe();
    }

    /* renamed from: d0 */
    public static final void m47696d0(View view) {
        Navigator.INSTANCE.navigateToStickerMaterialCenter();
    }

    /* renamed from: P */
    public final void m47697P() {
        this.binding.selectButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.dzm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StickerMainCategoryViewHolder.m47693V(StickerMainCategoryViewHolder.this, view);
            }
        });
        this.binding.selectCheckBox.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ezm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StickerMainCategoryViewHolder.m47688Q(StickerMainCategoryViewHolder.this, view);
            }
        });
        this.binding.insertButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.fzm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StickerMainCategoryViewHolder.m47689R(StickerMainCategoryViewHolder.this, view);
            }
        });
        this.binding.moveButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.gzm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StickerMainCategoryViewHolder.m47690S(StickerMainCategoryViewHolder.this, view);
            }
        });
        this.binding.deleteButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.hzm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StickerMainCategoryViewHolder.m47691T(StickerMainCategoryViewHolder.this, view);
            }
        });
        this.binding.finishButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.izm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StickerMainCategoryViewHolder.m47692U(StickerMainCategoryViewHolder.this, view);
            }
        });
    }

    /* renamed from: Y */
    public final List<StickerModel> m47698Y(List<StickerModel> list, StickerCategoryModel mainCategory, StickerCategoryModel subCategory) {
        List<StickerModel> mutableList;
        if (list.isEmpty() || mainCategory.getType() != 4 || subCategory.getType() != -1) {
            return list;
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list);
        CollectionKt.safeAdd(mutableList, 0, m47699Z());
        return mutableList;
    }

    /* renamed from: Z */
    public final StickerModel m47699Z() {
        StickerModel stickerModel = new StickerModel();
        stickerModel.setType(4);
        stickerModel.setUniqueId(StickerValues.STICKER_MATERIAL_ADD_ID);
        return stickerModel;
    }

    /* renamed from: a0 */
    public final void m47700a0() {
        this.binding.stickerEmptyTipView.updateTitleColor(ThemeUtils.getColorById(C7996R.color.theme_text_color_02));
        this.binding.stickerEmptyTipView.updateTitleSize(ResManager.INSTANCE.getDimension(C7384R.dimen.sp_12));
    }

    public final void addImportEvent() {
        this.binding.importButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.czm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StickerMainCategoryViewHolder.m47694W(StickerMainCategoryViewHolder.this, view);
            }
        });
    }

    public final void addNewCategoryEvent() {
        this.binding.categoryAddButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.bzm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StickerMainCategoryViewHolder.m47695X(StickerMainCategoryViewHolder.this, view);
            }
        });
    }

    /* renamed from: b0 */
    public final void m47701b0() {
        MaterialDividerItemDecoration materialDividerItemDecoration = new MaterialDividerItemDecoration(this.binding.getRoot().getContext(), 1);
        materialDividerItemDecoration.setDividerColor(0);
        ResManager resManager = ResManager.INSTANCE;
        materialDividerItemDecoration.setDividerThickness(resManager.getDimensionPixelSize(C7384R.dimen.dp_12));
        this.stickerListAdapter = new StickerListAdapter(this.bundle, new StickerMainCategoryViewHolder$initStickerGridView$1(this));
        LayoutStickerCategoryMainBinding layoutStickerCategoryMainBinding = this.binding;
        layoutStickerCategoryMainBinding.stickerListView.setLayoutManager(new GridLayoutManager(layoutStickerCategoryMainBinding.getRoot().getContext(), resManager.getInteger(C10651R.integer.item_sticker_col)));
        this.binding.stickerListView.addItemDecoration(materialDividerItemDecoration);
        RecyclerView recyclerView = this.binding.stickerListView;
        StickerListAdapter stickerListAdapter = this.stickerListAdapter;
        if (stickerListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("stickerListAdapter");
            stickerListAdapter = null;
        }
        recyclerView.setAdapter(stickerListAdapter);
    }

    /* renamed from: c0 */
    public final void m47702c0() {
        this.subCategoryAdapter = new StickerSubCategoryAdapter(this.bundle, new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.editor.view.adapter.StickerMainCategoryViewHolder$initSubCategoryListView$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i) {
                StickerMainCategoryViewHolder.this.bundle.clearSelectedItems(StickerMainCategoryViewHolder.this.getMainCategory$note_overseasRelease());
                StickerSubCategoryAdapter stickerSubCategoryAdapter = StickerMainCategoryViewHolder.this.subCategoryAdapter;
                if (stickerSubCategoryAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("subCategoryAdapter");
                    stickerSubCategoryAdapter = null;
                }
                stickerSubCategoryAdapter.notifyItemChanged(i);
            }
        }, new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.editor.view.adapter.StickerMainCategoryViewHolder$initSubCategoryListView$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i) {
                StickerMainCategoryViewHolder stickerMainCategoryViewHolder = StickerMainCategoryViewHolder.this;
                StickerCategoryModel selectedSubCategory = stickerMainCategoryViewHolder.bundle.getSelectedSubCategory(StickerMainCategoryViewHolder.this.getMainCategory$note_overseasRelease());
                if (selectedSubCategory == null) {
                    return;
                }
                stickerMainCategoryViewHolder.setSubCategory$note_overseasRelease(selectedSubCategory);
                StickerSubCategoryAdapter stickerSubCategoryAdapter = StickerMainCategoryViewHolder.this.subCategoryAdapter;
                if (stickerSubCategoryAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("subCategoryAdapter");
                    stickerSubCategoryAdapter = null;
                }
                stickerSubCategoryAdapter.notifyItemChanged(i);
                StickerMainCategoryViewHolder.this.updateSubCategoryStickerList();
            }
        }, new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.editor.view.adapter.StickerMainCategoryViewHolder$initSubCategoryListView$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i) {
                StickerSubCategoryAdapter stickerSubCategoryAdapter = StickerMainCategoryViewHolder.this.subCategoryAdapter;
                if (stickerSubCategoryAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("subCategoryAdapter");
                    stickerSubCategoryAdapter = null;
                }
                stickerSubCategoryAdapter.notifyDataSetChanged();
                if (StickerMainCategoryViewHolder.this.getSubCategory$note_overseasRelease().getType() == -1 || !Intrinsics.areEqual(StickerMainCategoryViewHolder.this.getSubCategory$note_overseasRelease(), StickerMainCategoryViewHolder.this.bundle.getSelectedSubCategory(StickerMainCategoryViewHolder.this.getMainCategory$note_overseasRelease()))) {
                    StickerMainCategoryViewHolder stickerMainCategoryViewHolder = StickerMainCategoryViewHolder.this;
                    StickerCategoryModel selectedSubCategory = stickerMainCategoryViewHolder.bundle.getSelectedSubCategory(StickerMainCategoryViewHolder.this.getMainCategory$note_overseasRelease());
                    if (selectedSubCategory == null) {
                        return;
                    }
                    stickerMainCategoryViewHolder.setSubCategory$note_overseasRelease(selectedSubCategory);
                    StickerMainCategoryViewHolder.this.updateSubCategoryStickerList();
                }
                StickerMainCategoryViewHolder.this.updateSubCategoryList();
            }
        });
        LayoutStickerCategoryMainBinding layoutStickerCategoryMainBinding = this.binding;
        layoutStickerCategoryMainBinding.subCategoryListView.setLayoutManager(new LinearLayoutManager(layoutStickerCategoryMainBinding.getRoot().getContext(), 0, false));
        RecyclerView recyclerView = this.binding.subCategoryListView;
        StickerSubCategoryAdapter stickerSubCategoryAdapter = this.subCategoryAdapter;
        if (stickerSubCategoryAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("subCategoryAdapter");
            stickerSubCategoryAdapter = null;
        }
        recyclerView.setAdapter(stickerSubCategoryAdapter);
    }

    /* renamed from: e0 */
    public final void m47703e0() {
        int type = getMainCategory$note_overseasRelease().getType();
        boolean z = false;
        if (type == -2) {
            this.binding.headerView.setVisibility(4);
            this.binding.categoryAddButton.setVisibility(4);
            this.binding.importButton.setVisibility(8);
            this.binding.moveButton.setVisibility(8);
            this.binding.deleteButton.setVisibility(8);
        } else if (type != 2) {
            this.binding.headerView.setVisibility(0);
            this.binding.categoryAddButton.setVisibility(4);
            this.binding.importButton.setVisibility(8);
            this.binding.moveButton.setVisibility(8);
            this.binding.deleteButton.setVisibility(8);
        } else {
            this.binding.headerView.setVisibility(0);
            this.binding.categoryAddButton.setVisibility(0);
            this.binding.importButton.setVisibility(0);
            this.binding.moveButton.setVisibility(0);
            this.binding.deleteButton.setVisibility(0);
        }
        boolean isInSelectionMode = this.bundle.isInSelectionMode(getMainCategory$note_overseasRelease());
        ViewKt.setViewVisibleOrInvisible(this.binding.buttonGroup, !isInSelectionMode);
        ViewKt.setViewVisibleOrInvisible(this.binding.selectionLayout, isInSelectionMode);
        StickerListAdapter stickerListAdapter = this.stickerListAdapter;
        StickerListAdapter stickerListAdapter2 = null;
        if (stickerListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("stickerListAdapter");
            stickerListAdapter = null;
        }
        Iterator<StickerModel> it2 = stickerListAdapter.getItems().iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            } else if (StickerModelKt.isNormalSticker(it2.next())) {
                break;
            } else {
                i++;
            }
        }
        StickerListAdapter stickerListAdapter3 = this.stickerListAdapter;
        if (stickerListAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("stickerListAdapter");
        } else {
            stickerListAdapter2 = stickerListAdapter3;
        }
        int size = stickerListAdapter2.getItems().size() - Math.max(i, 0);
        List<StickerModel> selectedItems = this.bundle.getSelectedItems(getMainCategory$note_overseasRelease());
        boolean z2 = !selectedItems.isEmpty();
        this.binding.selectCheckBox.setEnabled(size > 0);
        TintTextView tintTextView = this.binding.selectCheckBox;
        if (selectedItems.size() == size && selectedItems.size() > 0) {
            z = true;
        }
        tintTextView.setSelected(z);
        this.binding.insertButton.setEnabled(z2);
        this.binding.moveButton.setEnabled(z2);
        this.binding.deleteButton.setEnabled(z2);
        if (!AccountDataBundle.INSTANCE.isAlreadyLogin()) {
            this.binding.moveButton.setVisibility(8);
            this.binding.deleteButton.setVisibility(8);
        }
        ViewKt.setViewVisibleOrInvisible(this.binding.stickerEmptyTipView, this.isStickerEmpty);
        ViewKt.setViewVisibleOrInvisible(this.binding.stickerListView, !this.isStickerEmpty);
    }

    @NotNull
    /* renamed from: getBinding$note_overseasRelease, reason: from getter */
    public final LayoutStickerCategoryMainBinding getBinding() {
        return this.binding;
    }

    @NotNull
    public final StickerCategoryModel getMainCategory$note_overseasRelease() {
        StickerCategoryModel stickerCategoryModel = this.mainCategory;
        if (stickerCategoryModel != null) {
            return stickerCategoryModel;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mainCategory");
        return null;
    }

    @NotNull
    public final StickerCategoryModel getSubCategory$note_overseasRelease() {
        StickerCategoryModel stickerCategoryModel = this.subCategory;
        if (stickerCategoryModel != null) {
            return stickerCategoryModel;
        }
        Intrinsics.throwUninitializedPropertyAccessException("subCategory");
        return null;
    }

    public final void setMainCategory$note_overseasRelease(@NotNull StickerCategoryModel stickerCategoryModel) {
        Intrinsics.checkNotNullParameter(stickerCategoryModel, "<set-?>");
        this.mainCategory = stickerCategoryModel;
    }

    public final void setSubCategory$note_overseasRelease(@NotNull StickerCategoryModel stickerCategoryModel) {
        Intrinsics.checkNotNullParameter(stickerCategoryModel, "<set-?>");
        this.subCategory = stickerCategoryModel;
    }

    public final void updateEmptyLayout() {
        if (getMainCategory$note_overseasRelease().getType() == 4) {
            TextView textView = (TextView) this.binding.stickerEmptyTipView.findViewById(C10651R.id.tv_title);
            if (textView != null) {
                ResManager resManager = ResManager.INSTANCE;
                textView.setText(resManager.getStringSafely(C10651R.string.empty_view_sticker_title));
                textView.setTextSize(0, resManager.getDimension(C7384R.dimen.sp_12));
            }
            TextView textView2 = (TextView) this.binding.stickerEmptyTipView.findViewById(C10651R.id.tv_sub_title);
            if (textView2 != null) {
                textView2.setText(ResManager.INSTANCE.getStringSafely(C10651R.string.empty_view_template_sub_title));
                textView2.setVisibility(0);
                com.onyx.android.sdk.extension.ViewKt.click$default(textView2, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.jzm
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        StickerMainCategoryViewHolder.m47696d0(view);
                    }
                }, 1, null);
                return;
            }
            return;
        }
        TextView textView3 = (TextView) this.binding.stickerEmptyTipView.findViewById(C10651R.id.tv_title);
        if (textView3 != null) {
            ResManager resManager2 = ResManager.INSTANCE;
            textView3.setText(resManager2.getStringSafely(C10651R.string.note_empty_view_sticker_title));
            textView3.setTextSize(0, resManager2.getDimension(C7384R.dimen.sp_14));
        }
        TextView textView4 = (TextView) this.binding.stickerEmptyTipView.findViewById(C10651R.id.tv_sub_title);
        if (textView4 != null) {
            textView4.setText("");
            textView4.setVisibility(4);
            textView4.setOnClickListener(null);
        }
    }

    public final void updateSubCategoryList() {
        StickerSubCategoryAdapter stickerSubCategoryAdapter = this.subCategoryAdapter;
        if (stickerSubCategoryAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("subCategoryAdapter");
            stickerSubCategoryAdapter = null;
        }
        stickerSubCategoryAdapter.submitList(getMainCategory$note_overseasRelease().getSubCategory());
        ViewKt.setViewVisibleOrInvisible(this.binding.subCategoryListView, getMainCategory$note_overseasRelease().getSubCategory().size() > 1);
    }

    public final void updateSubCategoryStickerList() {
        StickerListAdapter stickerListAdapter = this.stickerListAdapter;
        if (stickerListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("stickerListAdapter");
            stickerListAdapter = null;
        }
        stickerListAdapter.setMainCategory$note_overseasRelease(getMainCategory$note_overseasRelease());
        new LoadStickerListAction(this.bundle, getMainCategory$note_overseasRelease(), getSubCategory$note_overseasRelease()).build().map(new C12286f()).doOnNext(new C12287g()).subscribe();
    }
}
