package com.onyx.android.sdk.universal.editor.action.image;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.onyx.android.sdk.base.data.SortOrder;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\u0018\u0000 \u000f2\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001\u000fB\u0011\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u001e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0002R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/image/LoadMediaStoreRecentImagesAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Landroid/net/Uri;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", "limit", TypedValues.CycleType.S_WAVE_OFFSET, "m", "e", "I", Constants.CONSTRUCTOR_NAME, "(I)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadMediaStoreRecentImagesAction extends RxBaseAction<List<? extends Uri>> {

    /* renamed from: f */
    public static final Uri f49801f = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;

    /* renamed from: g */
    @NotNull
    public static final String[] f49802g = {"_id", "_data"};

    /* renamed from: e, reason: from kotlin metadata */
    public final int limit;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.LoadMediaStoreRecentImagesAction$a */
    /* loaded from: classes8.dex */
    public static final class C9504a<T, R> implements Function {
        public C9504a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Uri> apply(@NotNull LoadMediaStoreRecentImagesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadMediaStoreRecentImagesAction.this.m39109l();
        }
    }

    public LoadMediaStoreRecentImagesAction() {
        this(0, 1, null);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<? extends Uri>> create() {
        Observable<List<? extends Uri>> map = Observable.just(this).observeOn(Schedulers.m61350io()).map(new C9504a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final List<Uri> m39109l() {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            List<Uri> m39110m = m39110m(this.limit, i);
            if (CollectionKt.getSize(m39110m) <= 0 || CollectionKt.getSize(arrayList) >= this.limit) {
                break;
            }
            CollectionKt.safeAddAll(arrayList, m39110m);
            i += CollectionKt.getSize(m39110m);
        }
        return CollectionKt.safelySubList(arrayList, 0, this.limit);
    }

    /* renamed from: m */
    public final List<Uri> m39110m(int limit, int offset) {
        List<Uri> emptyList;
        ContentResolver contentResolver = getAppContext().getContentResolver();
        StringBuilder sb = new StringBuilder();
        sb.append("date_modified ");
        String name = SortOrder.Desc.name();
        Locale ROOT = Locale.ROOT;
        Intrinsics.checkNotNullExpressionValue(ROOT, "ROOT");
        String upperCase = name.toUpperCase(ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        sb.append(upperCase);
        String sb2 = sb.toString();
        Bundle bundle = new Bundle();
        bundle.putInt("android:query-arg-limit", limit);
        bundle.putInt("android:query-arg-offset", offset);
        bundle.putString("android:query-arg-sql-sort-order", sb2);
        Cursor query = contentResolver.query(f49801f, f49802g, bundle, null);
        if (query == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        Cursor cursor = query;
        try {
            Cursor cursor2 = cursor;
            Debug.INSTANCE.m32035d(LoadMediaStoreRecentImagesAction.class, "load mediaStore images count:" + cursor2.getCount(), new Object[0]);
            ArrayList arrayList = new ArrayList();
            while (cursor2.moveToNext()) {
                int columnIndex = cursor2.getColumnIndex("_data");
                if (columnIndex >= 0) {
                    String string = cursor2.getString(columnIndex);
                    FileUtils fileUtils = FileUtils.INSTANCE;
                    if (!fileUtils.isDirectory(string) && fileUtils.fileCanRead(string)) {
                        Uri fromFile = Uri.fromFile(new File(string));
                        Intrinsics.checkNotNullExpressionValue(fromFile, "fromFile(...)");
                        arrayList.add(fromFile);
                    }
                }
            }
            CloseableKt.closeFinally(cursor, null);
            return arrayList;
        } finally {
        }
    }

    public /* synthetic */ LoadMediaStoreRecentImagesAction(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 20 : i);
    }

    public LoadMediaStoreRecentImagesAction(int i) {
        this.limit = i;
    }
}
