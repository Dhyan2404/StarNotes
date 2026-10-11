package com.onyx.galaxy.note.category.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.action.DeleteFileAction;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.data.common.data.SyncStateOptions;
import com.onyx.android.sdk.data.common.path.CommonPaths;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.attribute.BasicFileAttributes;
import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002J\b\u0010\r\u001a\u00020\u0000H\u0002¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/ClearImportCacheAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "", GoogleApiAvailabilityLight.f29016b, "m", "l", "Ljava/io/File;", "file", "", C4921e.f26528e, "p", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ClearImportCacheAction extends RxBaseNoteAppAction<ClearImportCacheAction> {

    /* renamed from: com.onyx.galaxy.note.category.action.ClearImportCacheAction$a */
    /* loaded from: classes9.dex */
    public static final class C10765a<T, R> implements Function {
        public C10765a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<String> apply(@NotNull ClearImportCacheAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ClearImportCacheAction.this.m42126n();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.ClearImportCacheAction$b */
    /* loaded from: classes9.dex */
    public static final class C10766b<T, R> implements Function {

        /* renamed from: e */
        public static final C10766b<T, R> f53633e = new C10766b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new DeleteFileAction(it2).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.ClearImportCacheAction$c */
    /* loaded from: classes9.dex */
    public static final class C10767c<T> implements Consumer {
        public C10767c() {
        }

        /* renamed from: a */
        public final void m42131a(boolean z) {
            ClearImportCacheAction.this.m42128p();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m42131a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.ClearImportCacheAction$d */
    /* loaded from: classes9.dex */
    public static final class C10768d<T, R> implements Function {
        public C10768d() {
        }

        @NotNull
        /* renamed from: a */
        public final ClearImportCacheAction m42132a(boolean z) {
            return ClearImportCacheAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42132a(((Boolean) obj).booleanValue());
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ClearImportCacheAction> create() {
        SyncStateOptions syncStateOptions = SyncStateOptions.INSTANCE;
        if (syncStateOptions.hasSynced(SyncStateOptions.getComposedKey$default(syncStateOptions, FunctionKey.CLEAR_IMPORT_CACHE_FILE, null, 2, null))) {
            Observable<ClearImportCacheAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<ClearImportCacheAction> map = Observable.just(this).observeOn(Schedulers.m61350io()).map(new C10765a()).flatMap(C10766b.f53633e).doOnNext(new C10767c()).map(new C10768d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final List<String> m42124l() {
        List<String> emptyList;
        List<String> emptyList2;
        File file = CommonPaths.INSTANCE.importCacheDir().toFile();
        if (!FileUtils.INSTANCE.fileExist(file)) {
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            return emptyList2;
        }
        ArrayList arrayList = new ArrayList();
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        for (File file2 : listFiles) {
            Intrinsics.checkNotNull(file2);
            if (!m42127o(file2)) {
                String absolutePath = file2.getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
                arrayList.add(absolutePath);
            }
        }
        return arrayList;
    }

    /* renamed from: m */
    public final List<String> m42125m() {
        Object orNull;
        List<String> emptyList;
        List<String> emptyList2;
        File file = CommonPaths.INSTANCE.appDocDir().toFile();
        if (!FileUtils.INSTANCE.fileExist(file)) {
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            return emptyList2;
        }
        ArrayList arrayList = new ArrayList();
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        for (File file2 : listFiles) {
            File[] listFiles2 = file2.listFiles();
            if (listFiles2 != null && listFiles2.length <= 1) {
                orNull = ArraysKt___ArraysKt.getOrNull(listFiles2, 0);
                File file3 = (File) orNull;
                if (file3 != null && Intrinsics.areEqual(file3.getName(), "resource")) {
                    Intrinsics.checkNotNull(file2);
                    if (!m42127o(file2)) {
                        String absolutePath = file2.getAbsolutePath();
                        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
                        arrayList.add(absolutePath);
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: n */
    public final List<String> m42126n() {
        ArrayList arrayList = new ArrayList();
        CollectionKt.safeAddAll(arrayList, m42125m());
        CollectionKt.safeAddAll(arrayList, m42124l());
        return arrayList;
    }

    /* renamed from: o */
    public final boolean m42127o(File file) {
        Instant instant;
        if (!FileUtils.INSTANCE.fileExist(file)) {
            return false;
        }
        try {
            BasicFileAttributes readAttributes = Files.readAttributes(file.toPath(), (Class<BasicFileAttributes>) BasicFileAttributes.class, new LinkOption[0]);
            if (readAttributes.creationTime() != null) {
                instant = readAttributes.creationTime().toInstant();
                Intrinsics.checkNotNullExpressionValue(instant, "toInstant(...)");
            } else {
                instant = readAttributes.lastModifiedTime().toInstant();
                Intrinsics.checkNotNullExpressionValue(instant, "toInstant(...)");
            }
            return Intrinsics.areEqual(instant.atZone(ZoneId.systemDefault()).toLocalDate(), LocalDate.now());
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: p */
    public final ClearImportCacheAction m42128p() {
        SyncStateOptions syncStateOptions = SyncStateOptions.INSTANCE;
        syncStateOptions.markAsSynced(SyncStateOptions.getComposedKey$default(syncStateOptions, FunctionKey.CLEAR_IMPORT_CACHE_FILE, null, 2, null));
        return this;
    }
}
