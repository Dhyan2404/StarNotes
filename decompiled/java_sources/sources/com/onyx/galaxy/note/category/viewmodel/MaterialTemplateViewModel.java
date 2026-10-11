package com.onyx.galaxy.note.category.viewmodel;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.bean.CoverCategory;
import com.onyx.android.sdk.replicator.note.bean.TemplateCategory;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.galaxy.note.category.action.cover.LoadCoverCategoryListAction;
import com.onyx.galaxy.note.category.action.cover.LoadMaterialCoverListAction;
import com.onyx.galaxy.note.category.action.template.LoadMaterialPaperListAction;
import com.onyx.galaxy.note.category.action.template.LoadTemplateCategoryListAction;
import com.onyx.galaxy.note.category.data.TemplateDisplayType;
import com.onyx.galaxy.note.datarepository.action.DeleteMaterialsCoverAction;
import com.onyx.galaxy.note.datarepository.action.DeleteMaterialsPaperAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b(\u0010)J\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\b\u0010\t\u001a\u00020\u0002H\u0002J\u0016\u0010\r\u001a\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\b\u0010\u000e\u001a\u00020\u0002H\u0002J\u0016\u0010\u0011\u001a\u00020\u00022\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\nH\u0002R.\u0010\u0019\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R.\u0010\u001d\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\n0\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0014\u001a\u0004\b\u001b\u0010\u0016\"\u0004\b\u001c\u0010\u0018R.\u0010\"\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\n0\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\u0014\u001a\u0004\b \u0010\u0016\"\u0004\b!\u0010\u0018R.\u0010'\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020#0\n0\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010\u0014\u001a\u0004\b%\u0010\u0016\"\u0004\b&\u0010\u0018¨\u0006*"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;", "Landroidx/lifecycle/ViewModel;", "", "loadData", "", CouchFieldKey.KEY_CATEGORY_ID, "Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;", "type", "deleteMaterialsCategory", "d", "", "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;", "coverCategories", "e", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;", "templateCategories", C6997f.f39671c, "Landroidx/lifecycle/MutableLiveData;", C6999h.f39688c, "Landroidx/lifecycle/MutableLiveData;", "getCoverMaterialCategoryList", "()Landroidx/lifecycle/MutableLiveData;", "setCoverMaterialCategoryList", "(Landroidx/lifecycle/MutableLiveData;)V", "coverMaterialCategoryList", "i", "getPaperMaterialCategoryList", "setPaperMaterialCategoryList", "paperMaterialCategoryList", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "j", "getMaterialPaperList", "setMaterialPaperList", "materialPaperList", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", C4921e.f26537n, "getMaterialCoverList", "setMaterialCoverList", "materialCoverList", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class MaterialTemplateViewModel extends ViewModel {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<List<CoverCategory>> coverMaterialCategoryList = new MutableLiveData<>();

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<List<TemplateCategory>> paperMaterialCategoryList = new MutableLiveData<>();

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<List<TemplateModel>> materialPaperList = new MutableLiveData<>();

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<List<CoverModel>> materialCoverList = new MutableLiveData<>();

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TemplateDisplayType.values().length];
            try {
                iArr[TemplateDisplayType.PAPER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TemplateDisplayType.COVER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.MaterialTemplateViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C11471a<T> implements Consumer {
        public C11471a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DeleteMaterialsPaperAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MaterialTemplateViewModel.this.loadData();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.MaterialTemplateViewModel$b */
    /* loaded from: classes9.dex */
    public static final class C11472b<T> implements Consumer {
        public C11472b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DeleteMaterialsCoverAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MaterialTemplateViewModel.this.loadData();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.MaterialTemplateViewModel$c */
    /* loaded from: classes9.dex */
    public static final class C11473c<T> implements Consumer {
        public C11473c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<CoverCategory> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MaterialTemplateViewModel.this.m44707e(it2);
        }
    }

    @SourceDebugExtension({"SMAP\nMaterialTemplateViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaterialTemplateViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$loadMaterialCoverList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,109:1\n1855#2:110\n766#2:111\n857#2,2:112\n1726#2,3:114\n1856#2:117\n*S KotlinDebug\n*F\n+ 1 MaterialTemplateViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$loadMaterialCoverList$1\n*L\n68#1:110\n69#1:111\n69#1:112,2\n70#1:114,3\n68#1:117\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.category.viewmodel.MaterialTemplateViewModel$d */
    /* loaded from: classes9.dex */
    public static final class C11474d<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<CoverCategory> f55702e;

        /* renamed from: f */
        public final /* synthetic */ MaterialTemplateViewModel f55703f;

        public C11474d(List<CoverCategory> list, MaterialTemplateViewModel materialTemplateViewModel) {
            this.f55702e = list;
            this.f55703f = materialTemplateViewModel;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<CoverModel> coverList) {
            Intrinsics.checkNotNullParameter(coverList, "coverList");
            for (CoverCategory coverCategory : this.f55702e) {
                ArrayList arrayList = new ArrayList();
                for (T t : coverList) {
                    if (Intrinsics.areEqual(((CoverModel) t).getCategoryId(), coverCategory.getUniqueId())) {
                        arrayList.add(t);
                    }
                }
                boolean z = true;
                if (!arrayList.isEmpty()) {
                    Iterator<T> it2 = arrayList.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (!((CoverModel) it2.next()).isLandscape()) {
                                z = false;
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
                if (z) {
                    coverCategory.setOrientation(Orientation.LANDSCAPE);
                } else {
                    coverCategory.setOrientation(Orientation.PORTRAIT);
                }
            }
            this.f55703f.getCoverMaterialCategoryList().setValue(this.f55702e);
            this.f55703f.getMaterialCoverList().setValue(coverList);
        }
    }

    @SourceDebugExtension({"SMAP\nMaterialTemplateViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaterialTemplateViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$loadMaterialPaperList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,109:1\n1855#2:110\n766#2:111\n857#2,2:112\n1726#2,3:114\n1856#2:117\n*S KotlinDebug\n*F\n+ 1 MaterialTemplateViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$loadMaterialPaperList$1\n*L\n95#1:110\n96#1:111\n96#1:112,2\n97#1:114,3\n95#1:117\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.category.viewmodel.MaterialTemplateViewModel$e */
    /* loaded from: classes9.dex */
    public static final class C11475e<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<TemplateCategory> f55704e;

        /* renamed from: f */
        public final /* synthetic */ MaterialTemplateViewModel f55705f;

        public C11475e(List<TemplateCategory> list, MaterialTemplateViewModel materialTemplateViewModel) {
            this.f55704e = list;
            this.f55705f = materialTemplateViewModel;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<TemplateModel> paperList) {
            Intrinsics.checkNotNullParameter(paperList, "paperList");
            for (TemplateCategory templateCategory : this.f55704e) {
                ArrayList arrayList = new ArrayList();
                for (T t : paperList) {
                    if (Intrinsics.areEqual(((TemplateModel) t).getCategoryId(), templateCategory.getUniqueId())) {
                        arrayList.add(t);
                    }
                }
                boolean z = true;
                if (!arrayList.isEmpty()) {
                    Iterator<T> it2 = arrayList.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (!((TemplateModel) it2.next()).isLandscape()) {
                                z = false;
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
                if (z) {
                    templateCategory.setOrientation(Orientation.LANDSCAPE);
                } else {
                    templateCategory.setOrientation(Orientation.PORTRAIT);
                }
            }
            this.f55705f.getPaperMaterialCategoryList().setValue(this.f55704e);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.MaterialTemplateViewModel$f */
    /* loaded from: classes9.dex */
    public static final class C11476f<T> implements Consumer {
        public C11476f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<TemplateModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MaterialTemplateViewModel.this.getMaterialPaperList().setValue(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.MaterialTemplateViewModel$g */
    /* loaded from: classes9.dex */
    public static final class C11477g<T> implements Consumer {
        public C11477g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<TemplateCategory> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MaterialTemplateViewModel.this.m44708f(it2);
        }
    }

    /* renamed from: d */
    public final void m44706d() {
        new LoadCoverCategoryListAction(NoteTemplateViewModel.INSTANCE.getMATERIALS_CATEGORIES_SOURCE()).build().doOnNext(new C11473c()).subscribe();
    }

    public final void deleteMaterialsCategory(@NotNull String categoryId, @NotNull TemplateDisplayType type) {
        Intrinsics.checkNotNullParameter(categoryId, "categoryId");
        Intrinsics.checkNotNullParameter(type, "type");
        int i = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i == 1) {
            new DeleteMaterialsPaperAction(categoryId).build().doOnNext(new C11471a()).subscribe();
        } else {
            if (i != 2) {
                return;
            }
            new DeleteMaterialsCoverAction(categoryId).build().doOnNext(new C11472b()).subscribe();
        }
    }

    /* renamed from: e */
    public final void m44707e(List<CoverCategory> coverCategories) {
        new LoadMaterialCoverListAction(coverCategories).build().observeOn(AndroidSchedulers.mainThread()).doOnNext(new C11474d(coverCategories, this)).subscribe();
    }

    /* renamed from: f */
    public final void m44708f(List<TemplateCategory> templateCategories) {
        new LoadMaterialPaperListAction(templateCategories).build().observeOn(AndroidSchedulers.mainThread()).doOnNext(new C11475e(templateCategories, this)).doOnNext(new C11476f()).subscribe();
    }

    /* renamed from: g */
    public final void m44709g() {
        new LoadTemplateCategoryListAction(false, NoteTemplateViewModel.INSTANCE.getMATERIALS_CATEGORIES_SOURCE()).build().doOnNext(new C11477g()).subscribe();
    }

    @NotNull
    public final MutableLiveData<List<CoverCategory>> getCoverMaterialCategoryList() {
        return this.coverMaterialCategoryList;
    }

    @NotNull
    public final MutableLiveData<List<CoverModel>> getMaterialCoverList() {
        return this.materialCoverList;
    }

    @NotNull
    public final MutableLiveData<List<TemplateModel>> getMaterialPaperList() {
        return this.materialPaperList;
    }

    @NotNull
    public final MutableLiveData<List<TemplateCategory>> getPaperMaterialCategoryList() {
        return this.paperMaterialCategoryList;
    }

    public final void loadData() {
        m44706d();
        m44709g();
    }

    public final void setCoverMaterialCategoryList(@NotNull MutableLiveData<List<CoverCategory>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.coverMaterialCategoryList = mutableLiveData;
    }

    public final void setMaterialCoverList(@NotNull MutableLiveData<List<CoverModel>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.materialCoverList = mutableLiveData;
    }

    public final void setMaterialPaperList(@NotNull MutableLiveData<List<TemplateModel>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.materialPaperList = mutableLiveData;
    }

    public final void setPaperMaterialCategoryList(@NotNull MutableLiveData<List<TemplateCategory>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.paperMaterialCategoryList = mutableLiveData;
    }
}
