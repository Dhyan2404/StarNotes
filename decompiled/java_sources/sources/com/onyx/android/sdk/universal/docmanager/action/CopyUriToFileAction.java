package com.onyx.android.sdk.universal.docmanager.action;

import android.net.Uri;
import android.util.Log;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.UriUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.path.CommonPaths;
import com.onyx.android.sdk.data.serverconvert.action.RxBaseCovertAction;
import com.onyx.android.sdk.universal.editor.data.DocumentFileEntry;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
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
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0006\u0018\u00002\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00020\u0001B\u0015\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00030\u000f¢\u0006\u0004\b\u0017\u0010\u0018J\u001c\u0010\u0006\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00020\u0005H\u0016J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00052\u0006\u0010\u0007\u001a\u00020\u0003H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0002J\u001c\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\fH\u0002R\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00030\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\"\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction;", "Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;", "", "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;", "Ljava/io/File;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "entry", "", "l", "file", C4921e.f26528e, "", "path", "m", "", "e", "Ljava/util/List;", "fileList", "", C6997f.f39671c, "Ljava/util/Map;", "entryToFileMap", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCopyUriToFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyUriToFileAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction\n+ 2 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 3 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,66:1\n79#2,5:67\n113#2,7:72\n92#3,4:79\n526#4:83\n511#4,6:84\n*S KotlinDebug\n*F\n+ 1 CopyUriToFileAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction\n*L\n29#1:67,5\n29#1:72,7\n34#1:79,4\n41#1:83\n41#1:84,6\n*E\n"})
/* loaded from: classes8.dex */
public final class CopyUriToFileAction extends RxBaseCovertAction<Map<DocumentFileEntry, ? extends File>> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<DocumentFileEntry> fileList;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Map<DocumentFileEntry, File> entryToFileMap;

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.CopyUriToFileAction$a */
    /* loaded from: classes8.dex */
    public static final class C8047a<T, R> implements Function {
        public C8047a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Unit> apply(@NotNull DocumentFileEntry it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CopyUriToFileAction.this.m36481l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.CopyUriToFileAction$b */
    /* loaded from: classes8.dex */
    public static final class C8048b<T, R> implements Function {
        public C8048b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map<DocumentFileEntry, File> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CopyUriToFileAction.this.entryToFileMap;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CopyUriToFileAction(@NotNull List<DocumentFileEntry> fileList) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(fileList, "fileList");
        this.fileList = fileList;
        this.entryToFileMap = new LinkedHashMap();
    }

    /* renamed from: n */
    public static /* synthetic */ void m36480n(CopyUriToFileAction copyUriToFileAction, DocumentFileEntry documentFileEntry, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        copyUriToFileAction.m36482m(documentFileEntry, str);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Map<DocumentFileEntry, File>> create() {
        Observable<Map<DocumentFileEntry, File>> map = Observable.fromIterable(this.fileList).observeOn(getObserveOnMultiThread()).concatMap(new C8047a()).takeLast(1).map(new C8048b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<Unit> m36481l(DocumentFileEntry entry) {
        Uri fileUri = entry.getFileUri();
        long m74114markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m74114markNowz9LOYto();
        File file = entry.getFile();
        if (file == null) {
            file = UriUtils.INSTANCE.copyToFileWithCheck(fileUri, Paths.INSTANCE.asFile(CommonPaths.INSTANCE.importCacheDir()), entry.getExtensionName(), new Function1<File, File>() { // from class: com.onyx.android.sdk.universal.docmanager.action.CopyUriToFileAction$copyUriToFile$1$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final File invoke(@NotNull File it2) {
                    File m36483o;
                    Intrinsics.checkNotNullParameter(it2, "it");
                    m36483o = CopyUriToFileAction.this.m36483o(it2);
                    return m36483o;
                }
            });
        }
        TimedValue timedValue = new TimedValue(file, TimeSource.Monotonic.ValueTimeMark.m74119elapsedNowUwyO8pc(m74114markNowz9LOYto), null);
        Debug debug = Debug.INSTANCE;
        String simpleNameString = AnyKt.toSimpleNameString(this);
        if (debug.getDebug()) {
            Log.d(simpleNameString, fileUri + " copyUriToFile " + timedValue.getValue() + ' ' + ((Object) Duration.m74024toStringimpl(timedValue.m74136getDurationUwyO8pc())));
        }
        File file2 = (File) timedValue.getValue();
        m36482m(entry, file2 != null ? file2.getPath() : null);
        Observable<Unit> just = Observable.just(Unit.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: m */
    public final void m36482m(DocumentFileEntry entry, String path) {
        this.entryToFileMap.put(entry, path != null ? new File(path) : null);
    }

    /* renamed from: o */
    public final File m36483o(File file) {
        int lastIndexOf$default;
        String nameWithoutExtension;
        String nameWithoutExtension2;
        Map<DocumentFileEntry, File> map = this.entryToFileMap;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Map.Entry<DocumentFileEntry, File>> it2 = map.entrySet().iterator();
        while (true) {
            boolean z = false;
            if (!it2.hasNext()) {
                break;
            }
            Map.Entry<DocumentFileEntry, File> next = it2.next();
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
        return m36483o(paths.asFile(paths.append(paths.toPath(absolutePath), str)));
    }
}
