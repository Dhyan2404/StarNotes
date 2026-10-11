package com.onyx.android.sdk.universal.editor.action.fonts;

import android.database.Cursor;
import android.provider.MediaStore;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u0007¢\u0006\u0004\b\u000f\u0010\rJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadMediaStoreFontsAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "e", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "editorBundle", Constants.CONSTRUCTOR_NAME, "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadMediaStoreFontsAction extends RxBaseAction<List<? extends String>> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public EditorBundle editorBundle;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.fonts.LoadMediaStoreFontsAction$a */
    /* loaded from: classes8.dex */
    public static final class C9119a<T, R> implements Function {
        public C9119a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<String> apply(@NotNull LoadMediaStoreFontsAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadMediaStoreFontsAction.this.m38365l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.fonts.LoadMediaStoreFontsAction$b */
    /* loaded from: classes8.dex */
    public static final class C9120b<T, R> implements Function {

        /* renamed from: e */
        public static final C9120b<T, R> f49083e = new C9120b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<String> apply(@NotNull List<String> it2) {
            List<String> distinct;
            Intrinsics.checkNotNullParameter(it2, "it");
            distinct = CollectionsKt___CollectionsKt.distinct(it2);
            return distinct;
        }
    }

    public LoadMediaStoreFontsAction(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<? extends String>> create() {
        Observable<List<? extends String>> map = Observable.just(this).observeOn(EditorBundleKt.ioSequenceScheduler(this.editorBundle)).map(new C9119a()).map(C9120b.f49083e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    /* renamed from: l */
    public final List<String> m38365l() {
        List<String> emptyList;
        Cursor query = getAppContext().getContentResolver().query(MediaStore.Files.getContentUri("external"), null, "_data LIKE ? OR _data LIKE ?", new String[]{"%.ttf", "%.otf"}, null, null);
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

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<set-?>");
        this.editorBundle = editorBundle;
    }
}
