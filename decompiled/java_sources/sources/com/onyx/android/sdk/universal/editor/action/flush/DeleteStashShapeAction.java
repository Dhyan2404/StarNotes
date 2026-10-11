package com.onyx.android.sdk.universal.editor.action.flush;

import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.LogFileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.path.StashPaths;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.flush.DeleteStashShapeAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.io.FileFilter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.internal.Util;
import onyx.org.apache.commons.io.FileUtils;
import onyx.org.apache.commons.io.filefilter.IOFileFilter;
import onyx.org.apache.commons.io.filefilter.TrueFileFilter;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\t\u0018\u0000 \u001e2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001eB)\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\u0006\u0010\u0015\u001a\u00020\u0010\u0012\u0010\b\u0002\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\b\u0010\t\u001a\u00020\bH\u0002R\u0017\u0010\u000f\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u0015\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001f\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u00168\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "m", "q", GoogleApiAvailabilityLight.f29016b, "Ljava/io/FileFilter;", C4921e.f26528e, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "e", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", C6997f.f39671c, Constants.STRING_SIG, "getDocumentId", "()Ljava/lang/String;", "documentId", "", C6998g.f39679a, "Ljava/util/List;", "getPageIdList", "()Ljava/util/List;", "pageIdList", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/List;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDeleteStashShapeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteStashShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,102:1\n766#2:103\n857#2,2:104\n1855#2,2:107\n1855#2,2:112\n1747#2,3:114\n1#3:106\n3792#4:109\n4307#4,2:110\n*S KotlinDebug\n*F\n+ 1 DeleteStashShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction\n*L\n65#1:103\n65#1:104,2\n78#1:107,2\n92#1:112,2\n100#1:114,3\n88#1:109\n88#1:110,2\n*E\n"})
/* loaded from: classes8.dex */
public final class DeleteStashShapeAction extends RxBaseAction<DeleteStashShapeAction> {

    /* renamed from: h */
    public static final long f49023h = 604800000;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String documentId;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public final List<String> pageIdList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.flush.DeleteStashShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C9087a<T> implements Consumer {
        public C9087a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DeleteStashShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteStashShapeAction.this.m38309m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.flush.DeleteStashShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C9088b<T> implements Consumer {
        public C9088b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            String stackTraceToString;
            Intrinsics.checkNotNullParameter(it2, "it");
            String simpleNameString = AnyKt.toSimpleNameString(DeleteStashShapeAction.this);
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(it2);
            LogUtils.wTag(simpleNameString, stackTraceToString);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.flush.DeleteStashShapeAction$c */
    /* loaded from: classes8.dex */
    public static final class C9089c<T, R> implements Function {
        public C9089c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DeleteStashShapeAction apply(@NotNull DeleteStashShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteStashShapeAction.this;
        }
    }

    public /* synthetic */ DeleteStashShapeAction(EditorBundle editorBundle, String str, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, str, (i & 4) != 0 ? null : list);
    }

    /* renamed from: p */
    public static final boolean m38308p(DeleteStashShapeAction this$0, File file) {
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        List<String> list = this$0.pageIdList;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        for (String str : list) {
            String name = file.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(name, str, false, 2, null);
            if (startsWith$default) {
                return true;
            }
        }
        return false;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<DeleteStashShapeAction> create() {
        Observable<DeleteStashShapeAction> map = Observable.just(this).observeOn(EditorBundleKt.stashScheduler(this.editorBundle)).doOnNext(new C9087a()).doOnError(new C9088b()).map(new C9089c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final String getDocumentId() {
        return this.documentId;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @Nullable
    public final List<String> getPageIdList() {
        return this.pageIdList;
    }

    /* renamed from: m */
    public final void m38309m() {
        if (!StashPaths.INSTANCE.isStashShapeLockFileExist(this.documentId)) {
            m38312q();
            m38310n();
            return;
        }
        LogFileUtils.INSTANCE.m32102e(DeleteStashShapeAction.class, this.documentId + " stash shape lock file exist, ignore this deletion");
    }

    /* renamed from: n */
    public final void m38310n() {
        ArrayList arrayList;
        Benchmark benchmark = new Benchmark();
        long currentTimeMillis = System.currentTimeMillis();
        File[] listFiles = StashPaths.INSTANCE.stashShapePBArchivedDir(this.documentId).toFile().listFiles();
        if (listFiles != null) {
            arrayList = new ArrayList();
            for (File file : listFiles) {
                String name = file.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                if (Util.toLongOrDefault(name, 0L) < currentTimeMillis - 604800000) {
                    arrayList.add(file);
                }
            }
        } else {
            arrayList = null;
        }
        if (CollectionKt.isNullOrEmpty(arrayList)) {
            return;
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            FileUtils.deleteDirectory((File) it2.next());
        }
        benchmark.report(AnyKt.toSimpleNameString(this) + " delete expired stash shape archives");
    }

    /* renamed from: o */
    public final FileFilter m38311o() {
        if (!CollectionKt.isNullOrEmpty(this.pageIdList)) {
            return new FileFilter() { // from class: com.sunia.HTREnginev2.m3f
                @Override // java.io.FileFilter
                public final boolean accept(File file) {
                    boolean m38308p;
                    m38308p = DeleteStashShapeAction.m38308p(DeleteStashShapeAction.this, file);
                    return m38308p;
                }
            };
        }
        IOFileFilter TRUE = TrueFileFilter.TRUE;
        Intrinsics.checkNotNullExpressionValue(TRUE, "TRUE");
        return TRUE;
    }

    /* renamed from: q */
    public final void m38312q() {
        List sortedWith;
        Object first;
        String obj = StashPaths.INSTANCE.stashShapePBFileDir(this.documentId).toAbsolutePath().toString();
        com.onyx.android.sdk.base.utils.FileUtils fileUtils = com.onyx.android.sdk.base.utils.FileUtils.INSTANCE;
        if (fileUtils.isDirectory(obj)) {
            FileFilter m38311o = m38311o();
            List<File> listAllFiles = fileUtils.listAllFiles(obj);
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : listAllFiles) {
                if (m38311o.accept((File) obj2)) {
                    arrayList.add(obj2);
                }
            }
            sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, com.onyx.android.sdk.base.utils.FileUtils.INSTANCE.getFILE_MODIFIED_ASC_COMPARATOR());
            if (sortedWith.isEmpty()) {
                return;
            }
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) sortedWith);
            Long valueOf = Long.valueOf(((File) first).lastModified());
            if (!(valueOf.longValue() > 0)) {
                valueOf = null;
            }
            long longValue = ((Number) AnyKt.getOrElse(valueOf, new Function0<Long>() { // from class: com.onyx.android.sdk.universal.editor.action.flush.DeleteStashShapeAction$markAsArchive$markTime$2
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Long invoke() {
                    return Long.valueOf(System.currentTimeMillis());
                }
            })).longValue();
            Benchmark benchmark = new Benchmark();
            Path createDirectories = Files.createDirectories(Paths.INSTANCE.append(StashPaths.INSTANCE.stashShapePBArchivedDir(this.documentId), String.valueOf(longValue)), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
            Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
            File file = createDirectories.toFile();
            Iterator it2 = sortedWith.iterator();
            while (it2.hasNext()) {
                FileUtils.moveFileToDirectory((File) it2.next(), file, true);
            }
            benchmark.report(AnyKt.toSimpleNameString(this) + " mark stash shape as archives result:" + CollectionKt.getSize(new File(obj).listFiles()));
        }
    }

    public DeleteStashShapeAction(@NotNull EditorBundle editorBundle, @NotNull String documentId, @Nullable List<String> list) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        this.editorBundle = editorBundle;
        this.documentId = documentId;
        this.pageIdList = list;
    }
}
