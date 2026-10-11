package com.onyx.galaxy.note.category.action.cover;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfo;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.replicator.note.bean.CoverCategory;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.universal.editor.action.bkground.RxBaseTemplateAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\r\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B'\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u0010\u001a\u00020\u000b\u0012\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0017\u0010\u0010\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001f\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/cover/LoadOfficialCoverAction;", "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;", "coverCategory", "", C6998g.f39679a, "I", "getOrientation", "()I", "orientation", C6999h.f39688c, "Ljava/util/List;", "getList", "()Ljava/util/List;", "list", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;ILjava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadOfficialCoverAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadOfficialCoverAction.kt\ncom/onyx/galaxy/note/category/action/cover/LoadOfficialCoverAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,28:1\n766#2:29\n857#2,2:30\n*S KotlinDebug\n*F\n+ 1 LoadOfficialCoverAction.kt\ncom/onyx/galaxy/note/category/action/cover/LoadOfficialCoverAction\n*L\n24#1:29\n24#1:30,2\n*E\n"})
/* loaded from: classes9.dex */
public final class LoadOfficialCoverAction extends RxBaseTemplateAction<List<? extends CoverModel>> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final CoverCategory coverCategory;

    /* renamed from: g, reason: from kotlin metadata */
    public final int orientation;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public final List<CoverModel> list;

    /* renamed from: com.onyx.galaxy.note.category.action.cover.LoadOfficialCoverAction$a */
    /* loaded from: classes9.dex */
    public static final class C11040a<T, R> implements Function {

        /* renamed from: e */
        public static final C11040a<T, R> f54110e = new C11040a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ProviderInfo apply(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(it2.getSyncUserId());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.cover.LoadOfficialCoverAction$b */
    /* loaded from: classes9.dex */
    public static final class C11041b<T, R> implements Function {
        public C11041b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CoverModel> apply(@NotNull ProviderInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadOfficialCoverAction.this.m42660l();
        }
    }

    public LoadOfficialCoverAction(@NotNull CoverCategory coverCategory, int i, @Nullable List<CoverModel> list) {
        Intrinsics.checkNotNullParameter(coverCategory, "coverCategory");
        this.coverCategory = coverCategory;
        this.orientation = i;
        this.list = list;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<CoverModel>> create() {
        Observable<List<CoverModel>> map = AccountDataBundle.INSTANCE.loadOnyxAccountObservable().observeOn(getObserveOn()).map(C11040a.f54110e).map(new C11041b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Nullable
    public final List<CoverModel> getList() {
        return this.list;
    }

    public final int getOrientation() {
        return this.orientation;
    }

    /* renamed from: l */
    public final List<CoverModel> m42660l() {
        List<CoverModel> list = this.list;
        if (list == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            CoverModel coverModel = (CoverModel) obj;
            if (Intrinsics.areEqual(coverModel.getCategoryId(), this.coverCategory.getUniqueId()) && coverModel.getOrientation() == this.orientation) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }
}
