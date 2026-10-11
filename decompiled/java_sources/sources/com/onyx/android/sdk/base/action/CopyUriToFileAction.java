package com.onyx.android.sdk.base.action;

import android.net.Uri;
import android.util.Log;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.UriKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.UriUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import kotlin.time.Duration;
import kotlin.time.TimeSource;
import kotlin.time.TimedValue;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0006\u0018\u00002\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00020\u0001B\u001d\u0012\u0006\u0010\u0012\u001a\u00020\u0004\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00030\u0013¢\u0006\u0004\b\u001b\u0010\u001cJ\u001c\u0010\u0006\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00020\u0005H\u0016J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0003J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u00052\u0006\u0010\u0007\u001a\u00020\u0003H\u0002J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0004H\u0002J\u001c\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\bH\u0002R\u0014\u0010\u0012\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00030\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\"\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/base/action/CopyUriToFileAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Landroid/net/Uri;", "Ljava/io/File;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "uri", "", "getExtension", "", "l", "file", C4921e.f26528e, "path", "m", "e", "Ljava/io/File;", "cacheDir", "", C6997f.f39671c, "Ljava/util/List;", "uriList", "", C6998g.f39679a, "Ljava/util/Map;", "uriToFileMap", Constants.CONSTRUCTOR_NAME, "(Ljava/io/File;Ljava/util/List;)V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCopyUriToFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyUriToFileAction.kt\ncom/onyx/android/sdk/base/action/CopyUriToFileAction\n+ 2 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 3 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,87:1\n79#2,5:88\n113#2,7:93\n92#3,4:100\n526#4:104\n511#4,6:105\n*S KotlinDebug\n*F\n+ 1 CopyUriToFileAction.kt\ncom/onyx/android/sdk/base/action/CopyUriToFileAction\n*L\n39#1:88,5\n39#1:93,7\n44#1:100,4\n51#1:104\n51#1:105,6\n*E\n"})
/* loaded from: classes7.dex */
public final class CopyUriToFileAction extends RxBaseAction<Map<Uri, ? extends File>> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final File cacheDir;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<Uri> uriList;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Map<Uri, File> uriToFileMap;

    /* renamed from: com.onyx.android.sdk.base.action.CopyUriToFileAction$a */
    /* loaded from: classes7.dex */
    public static final class C7109a<T, R> implements Function {
        public C7109a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Unit> apply(@NotNull Uri it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CopyUriToFileAction.this.m31875l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.base.action.CopyUriToFileAction$b */
    /* loaded from: classes7.dex */
    public static final class C7110b<T, R> implements Function {
        public C7110b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map<Uri, File> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CopyUriToFileAction.this.uriToFileMap;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CopyUriToFileAction(@NotNull File cacheDir, @NotNull List<? extends Uri> uriList) {
        Intrinsics.checkNotNullParameter(cacheDir, "cacheDir");
        Intrinsics.checkNotNullParameter(uriList, "uriList");
        this.cacheDir = cacheDir;
        this.uriList = uriList;
        this.uriToFileMap = new LinkedHashMap();
    }

    /* renamed from: n */
    public static /* synthetic */ void m31874n(CopyUriToFileAction copyUriToFileAction, Uri uri, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        copyUriToFileAction.m31876m(uri, str);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Map<Uri, ? extends File>> create() {
        if (this.uriList.isEmpty()) {
            Observable<Map<Uri, ? extends File>> just = Observable.just(this.uriToFileMap);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable concatMap = Observable.fromIterable(this.uriList).observeOn(Schedulers.m61350io()).concatMap(new C7109a());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<Map<Uri, ? extends File>> map = RxjavaKt.takeLastOne(concatMap).map(new C7110b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final String getExtension(@NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        ResManager resManager = ResManager.INSTANCE;
        String extension = FilenameUtils.getExtension(UriKt.getFileName(uri, resManager.getAppContext()));
        if (extension == null || extension.length() == 0) {
            String fileExtension = UriKt.getFileExtension(uri, resManager.getAppContext());
            return fileExtension == null ? "" : fileExtension;
        }
        Intrinsics.checkNotNull(extension);
        return extension;
    }

    /* renamed from: l */
    public final Observable<Unit> m31875l(Uri uri) {
        TimedValue timedValue = new TimedValue(UriUtils.INSTANCE.copyToFileWithCheck(uri, this.cacheDir, getExtension(uri), new Function1<File, File>() { // from class: com.onyx.android.sdk.base.action.CopyUriToFileAction$copyUriToFile$1$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final File invoke(@NotNull File it2) {
                File m31877o;
                Intrinsics.checkNotNullParameter(it2, "it");
                m31877o = CopyUriToFileAction.this.m31877o(it2);
                return m31877o;
            }
        }), TimeSource.Monotonic.ValueTimeMark.m74119elapsedNowUwyO8pc(TimeSource.Monotonic.INSTANCE.m74114markNowz9LOYto()), null);
        Debug debug = Debug.INSTANCE;
        String simpleNameString = AnyKt.toSimpleNameString(this);
        if (debug.getDebug()) {
            Log.d(simpleNameString, uri + " copyUriToFile " + timedValue.getValue() + ' ' + ((Object) Duration.m74024toStringimpl(timedValue.m74136getDurationUwyO8pc())));
        }
        File file = (File) timedValue.getValue();
        m31876m(uri, file != null ? file.getPath() : null);
        Observable<Unit> just = Observable.just(Unit.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: m */
    public final void m31876m(Uri uri, String path) {
        this.uriToFileMap.put(uri, path != null ? new File(path) : null);
    }

    /* renamed from: o */
    public final File m31877o(File file) {
        int lastIndexOf$default;
        String nameWithoutExtension;
        String nameWithoutExtension2;
        Map<Uri, File> map = this.uriToFileMap;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Map.Entry<Uri, File>> it2 = map.entrySet().iterator();
        while (true) {
            boolean z = false;
            if (!it2.hasNext()) {
                break;
            }
            Map.Entry<Uri, File> next = it2.next();
            if (next.getValue() != null) {
                File value = next.getValue();
                Intrinsics.checkNotNull(value);
                nameWithoutExtension = FilesKt__UtilsKt.getNameWithoutExtension(value);
                nameWithoutExtension2 = FilesKt__UtilsKt.getNameWithoutExtension(file);
                z = Intrinsics.areEqual(nameWithoutExtension, nameWithoutExtension2);
            }
            if (z) {
                linkedHashMap.put(next.getKey(), next.getValue());
            }
        }
        if (!(!linkedHashMap.isEmpty())) {
            return file;
        }
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) name, ".", 0, false, 6, (Object) null);
        String name2 = file.getName();
        Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
        String substring = name2.substring(0, lastIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        String name3 = file.getName();
        Intrinsics.checkNotNullExpressionValue(name3, "getName(...)");
        String substring2 = name3.substring(lastIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
        String str = substring + "_1" + substring2;
        Paths paths = Paths.INSTANCE;
        String absolutePath = getAppContext().getFilesDir().getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return m31877o(paths.asFile(paths.append(paths.toPath(absolutePath), str)));
    }
}
