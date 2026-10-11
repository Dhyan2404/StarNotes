package com.onyx.android.sdk.universal.editor.action.fonts;

import com.onyx.android.sdk.base.data.font.FontInfo;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.FontUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0015\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontInfoAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lcom/onyx/android/sdk/base/data/font/FontInfo;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", "e", "Ljava/util/List;", "pathList", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadFontInfoAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadFontInfoAction.kt\ncom/onyx/android/sdk/universal/editor/action/fonts/LoadFontInfoAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,30:1\n766#2:31\n857#2,2:32\n1549#2:34\n1620#2,3:35\n*S KotlinDebug\n*F\n+ 1 LoadFontInfoAction.kt\ncom/onyx/android/sdk/universal/editor/action/fonts/LoadFontInfoAction\n*L\n27#1:31\n27#1:32,2\n28#1:34\n28#1:35,3\n*E\n"})
/* loaded from: classes8.dex */
public final class LoadFontInfoAction extends RxBaseAction<List<? extends FontInfo>> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<String> pathList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.fonts.LoadFontInfoAction$a */
    /* loaded from: classes8.dex */
    public static final class C9116a<T, R> implements Function {
        public C9116a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<FontInfo> apply(@NotNull LoadFontInfoAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadFontInfoAction.this.m38360l();
        }
    }

    public LoadFontInfoAction(@NotNull List<String> pathList) {
        Intrinsics.checkNotNullParameter(pathList, "pathList");
        this.pathList = pathList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<? extends FontInfo>> create() {
        Observable<List<? extends FontInfo>> map = Observable.just(this).observeOn(Schedulers.m61350io()).map(new C9116a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final List<FontInfo> m38360l() {
        int collectionSizeOrDefault;
        List<String> list = this.pathList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((String) obj).length() > 0) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(FontUtils.INSTANCE.loadFontInfo(new File((String) it2.next())));
        }
        return arrayList2;
    }
}
