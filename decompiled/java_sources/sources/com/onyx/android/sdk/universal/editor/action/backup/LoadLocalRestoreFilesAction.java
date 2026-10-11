package com.onyx.android.sdk.universal.editor.action.backup;

import android.database.Cursor;
import android.provider.MediaStore;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/backup/LoadLocalRestoreFilesAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadLocalRestoreFilesAction extends RxBaseAction<List<? extends String>> {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.LoadLocalRestoreFilesAction$a */
    /* loaded from: classes8.dex */
    public static final class C8497a<T, R> implements Function {
        public C8497a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<String> apply(@NotNull LoadLocalRestoreFilesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadLocalRestoreFilesAction.this.m37309l();
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<? extends String>> create() {
        Observable<List<? extends String>> map = Observable.just(this).observeOn(Schedulers.m61350io()).map(new C8497a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final List<String> m37309l() {
        List<String> emptyList;
        Cursor query = getAppContext().getContentResolver().query(MediaStore.Files.getContentUri("external"), null, "_data LIKE ?", new String[]{"%.note"}, "date_added DESC, date_modified DESC", null);
        if (query == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        Cursor cursor = query;
        try {
            Cursor cursor2 = cursor;
            ArrayList arrayList = new ArrayList();
            while (cursor2.moveToNext()) {
                int columnIndex = cursor2.getColumnIndex("_data");
                if (columnIndex >= 0) {
                    String string = cursor2.getString(columnIndex);
                    FileUtils fileUtils = FileUtils.INSTANCE;
                    if (!fileUtils.isDirectory(string) && fileUtils.fileCanRead(string)) {
                        Intrinsics.checkNotNull(string);
                        arrayList.add(string);
                    }
                }
            }
            CloseableKt.closeFinally(cursor, null);
            return arrayList;
        } finally {
        }
    }
}
