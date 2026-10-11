package com.onyx.galaxy.note.category.action.p127import;

import android.graphics.Bitmap;
import com.blankj.utilcode.util.ImageUtils;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.extension.UriKt;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.path.CommonPaths;
import com.onyx.android.sdk.data.common.path.TemplatePaths;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.reader.api.ReaderExportArgs;
import com.onyx.android.sdk.reader.data.ExportPagesArgs;
import com.onyx.android.sdk.reader.data.LoadReaderPageThumbnailArgs;
import com.onyx.android.sdk.reader.request.ExportPagesRequest;
import com.onyx.android.sdk.reader.request.LoadReaderPageInfoRequest;
import com.onyx.android.sdk.reader.request.LoadReaderPageThumbnailRequest;
import com.onyx.android.sdk.replicator.note.p035db.model.TitleModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.common.SaveUriToFileRequest;
import com.onyx.galaxy.note.category.action.p127import.SaveFilesAsCustomTemplateAction;
import com.onyx.galaxy.note.category.data.TemplateFileBean;
import com.onyx.galaxy.note.category.data.TemplateImportBean;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.BooleanSupplier;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.path.PathsKt__PathUtilsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B%\u0012\u0006\u0010(\u001a\u00020'\u0012\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00040\u0010\u0012\u0006\u0010!\u001a\u00020\b¢\u0006\u0004\b)\u0010*J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\"\u0010\t\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u00070\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\bH\u0002J(\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u00100\u00022\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\"\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00110\u00022\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0013H\u0002J\u001c\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0016\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0018\u001a\u00020\u0011H\u0002J\b\u0010\u001b\u001a\u00020\u001aH\u0002R\u001a\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00040\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u001d\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00110\"8\u0006¢\u0006\f\n\u0004\b#\u0010\u001d\u001a\u0004\b$\u0010%¨\u0006+"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;", "fileBean", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "", "", "u", "", "pageIndex", "filePassword", "Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;", "s", Constant.MAP_TAG, "", "Lcom/onyx/galaxy/note/category/data/TemplateImportBean;", "x", "Lkotlin/Pair;", "data", "w", "templateImportBeanList", "A", "templateImportBean", "z", "", "t", C6999h.f39688c, "Ljava/util/List;", "list", "i", Constants.STRING_SIG, "importDirPath", "", "j", "getBeanList", "()Ljava/util/List;", "beanList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSaveFilesAsCustomTemplateAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveFilesAsCustomTemplateAction.kt\ncom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,199:1\n1#2:200\n1855#3,2:201\n*S KotlinDebug\n*F\n+ 1 SaveFilesAsCustomTemplateAction.kt\ncom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction\n*L\n197#1:201,2\n*E\n"})
/* loaded from: classes9.dex */
public final class SaveFilesAsCustomTemplateAction extends RxBaseAppAction<SaveFilesAsCustomTemplateAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<TemplateFileBean> list;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final String importDirPath;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final List<TemplateImportBean> beanList;

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$a */
    /* loaded from: classes9.dex */
    public static final class C11137a<T, R> implements Function {

        /* renamed from: e */
        public static final C11137a<T, R> f54270e = new C11137a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TemplateFileBean apply(@NotNull Iterator<TemplateFileBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.next();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$a0 */
    /* loaded from: classes9.dex */
    public static final class C11138a0<T> implements Predicate {

        /* renamed from: e */
        public final /* synthetic */ Iterator<TemplateImportBean> f54271e;

        public C11138a0(Iterator<TemplateImportBean> it2) {
            this.f54271e = it2;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull SaveFilesAsCustomTemplateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !this.f54271e.hasNext();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$b */
    /* loaded from: classes9.dex */
    public static final class C11139b<T, R> implements Function {
        public C11139b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends TemplateFileBean> apply(@NotNull TemplateFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveFilesAsCustomTemplateAction.this.m42867C(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$b0 */
    /* loaded from: classes9.dex */
    public static final class C11140b0<T, R> implements Function {
        public C11140b0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveFilesAsCustomTemplateAction apply(@NotNull SaveFilesAsCustomTemplateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveFilesAsCustomTemplateAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$c */
    /* loaded from: classes9.dex */
    public static final class C11141c<T, R> implements Function {
        public C11141c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Map<String, String>> apply(@NotNull TemplateFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveFilesAsCustomTemplateAction.this.m42870u(it2);
        }
    }

    @SourceDebugExtension({"SMAP\nSaveFilesAsCustomTemplateAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveFilesAsCustomTemplateAction.kt\ncom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$saveUriToFile$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,199:1\n1#2:200\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$c0 */
    /* loaded from: classes9.dex */
    public static final class C11142c0<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ TemplateFileBean f54275e;

        /* renamed from: f */
        public final /* synthetic */ SaveUriToFileRequest f54276f;

        public C11142c0(TemplateFileBean templateFileBean, SaveUriToFileRequest saveUriToFileRequest) {
            this.f54275e = templateFileBean;
            this.f54276f = saveUriToFileRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TemplateFileBean apply(@NotNull SaveUriToFileRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TemplateFileBean templateFileBean = this.f54275e;
            templateFileBean.setSaveFilePath(this.f54276f.getFilePath());
            return templateFileBean;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$d */
    /* loaded from: classes9.dex */
    public static final class C11143d<T, R> implements Function {
        public C11143d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<TemplateImportBean>> apply(@NotNull Map<String, String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveFilesAsCustomTemplateAction.this.m42872x(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$e */
    /* loaded from: classes9.dex */
    public static final class C11144e<T, R> implements Function {
        public C11144e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveFilesAsCustomTemplateAction> apply(@NotNull List<TemplateImportBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveFilesAsCustomTemplateAction.this.m42866A(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$f */
    /* loaded from: classes9.dex */
    public static final class C11145f<T> implements Predicate {

        /* renamed from: e */
        public final /* synthetic */ Iterator<TemplateFileBean> f54279e;

        public C11145f(Iterator<TemplateFileBean> it2) {
            this.f54279e = it2;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull SaveFilesAsCustomTemplateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !this.f54279e.hasNext();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$g */
    /* loaded from: classes9.dex */
    public static final class C11146g<T, R> implements Function {
        public C11146g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveFilesAsCustomTemplateAction apply(@NotNull SaveFilesAsCustomTemplateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveFilesAsCustomTemplateAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$h */
    /* loaded from: classes9.dex */
    public static final class C11147h<T, R> implements Function {

        /* renamed from: e */
        public static final C11147h<T, R> f54281e = new C11147h<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer apply(@NotNull Iterator<Integer> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.next();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$i */
    /* loaded from: classes9.dex */
    public static final class C11148i<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ TemplateFileBean f54283f;

        public C11148i(TemplateFileBean templateFileBean) {
            this.f54283f = templateFileBean;
        }

        @NotNull
        /* renamed from: a */
        public final ReaderExportArgs m42885a(int i) {
            return SaveFilesAsCustomTemplateAction.this.m42868s(i, this.f54283f.getPassword());
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42885a(((Number) obj).intValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$j */
    /* loaded from: classes9.dex */
    public static final class C11149j<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ TemplateFileBean f54284e;

        /* renamed from: f */
        public final /* synthetic */ SaveFilesAsCustomTemplateAction f54285f;

        /* renamed from: g */
        public final /* synthetic */ Map<String, String> f54286g;

        /* renamed from: h */
        public final /* synthetic */ String f54287h;

        /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$j$a */
        /* loaded from: classes9.dex */
        public static final class a<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ Map<String, String> f54288e;

            /* renamed from: f */
            public final /* synthetic */ ReaderExportArgs f54289f;

            /* renamed from: g */
            public final /* synthetic */ String f54290g;

            public a(Map<String, String> map, ReaderExportArgs readerExportArgs, String str) {
                this.f54288e = map;
                this.f54289f = readerExportArgs;
                this.f54290g = str;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull ExportPagesRequest it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                this.f54288e.put(this.f54289f.getOutputPath(), this.f54290g + NameUtil.USCORE + (this.f54289f.getPages()[0] + 1));
            }
        }

        public C11149j(TemplateFileBean templateFileBean, SaveFilesAsCustomTemplateAction saveFilesAsCustomTemplateAction, Map<String, String> map, String str) {
            this.f54284e = templateFileBean;
            this.f54285f = saveFilesAsCustomTemplateAction;
            this.f54286g = map;
            this.f54287h = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ExportPagesRequest> apply(@NotNull ReaderExportArgs readerExportArgs) {
            Intrinsics.checkNotNullParameter(readerExportArgs, "readerExportArgs");
            String saveFilePath = this.f54284e.getSaveFilePath();
            if (saveFilePath == null) {
                saveFilePath = "";
            }
            return RxBaseAppActionKt.submitRequestToReader(this.f54285f, new ExportPagesRequest(EditorBundleKt.readerBundle(this.f54285f.getEditorBundle()), new ExportPagesArgs(saveFilePath, this.f54284e.getPassword(), readerExportArgs))).doOnNext(new a(this.f54286g, readerExportArgs, this.f54287h));
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$k */
    /* loaded from: classes9.dex */
    public static final class C11150k<T> implements Predicate {

        /* renamed from: e */
        public final /* synthetic */ Iterator<Integer> f54291e;

        public C11150k(Iterator<Integer> it2) {
            this.f54291e = it2;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull ExportPagesRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !this.f54291e.hasNext();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$l */
    /* loaded from: classes9.dex */
    public static final class C11151l<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Map<String, String> f54292e;

        public C11151l(Map<String, String> map) {
            this.f54292e = map;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map<String, String> apply(@NotNull ExportPagesRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f54292e;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$m */
    /* loaded from: classes9.dex */
    public static final class C11152m<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ TemplateImportBean f54293e;

        public C11152m(TemplateImportBean templateImportBean) {
            this.f54293e = templateImportBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TemplateImportBean apply(@NotNull LoadImagePageInfoRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f54293e;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$n */
    /* loaded from: classes9.dex */
    public static final class C11153n<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ LoadReaderPageInfoRequest f54295f;

        public C11153n(LoadReaderPageInfoRequest loadReaderPageInfoRequest) {
            this.f54295f = loadReaderPageInfoRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Unit> apply(@NotNull LoadReaderPageInfoRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.closeReaderDocument(SaveFilesAsCustomTemplateAction.this, this.f54295f.getPath());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$o */
    /* loaded from: classes9.dex */
    public static final class C11154o<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ TemplateImportBean f54296e;

        public C11154o(TemplateImportBean templateImportBean) {
            this.f54296e = templateImportBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TemplateImportBean apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f54296e;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$p */
    /* loaded from: classes9.dex */
    public static final class C11155p<T, R> implements Function {

        /* renamed from: e */
        public static final C11155p<T, R> f54297e = new C11155p<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map.Entry<String, String> apply(@NotNull Iterator<? extends Map.Entry<String, String>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.next();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$q */
    /* loaded from: classes9.dex */
    public static final class C11156q<T, R> implements Function {
        public C11156q() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends TemplateImportBean> apply(@NotNull Map.Entry<String, String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveFilesAsCustomTemplateAction.this.m42871w(new Pair(it2.getKey(), it2.getValue()));
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$r */
    /* loaded from: classes9.dex */
    public static final class C11157r<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<TemplateImportBean> f54299e;

        public C11157r(List<TemplateImportBean> list) {
            this.f54299e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TemplateImportBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CollectionKt.safeAdd(this.f54299e, it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$s */
    /* loaded from: classes9.dex */
    public static final class C11158s<T> implements Predicate {

        /* renamed from: e */
        public final /* synthetic */ Iterator<Map.Entry<String, String>> f54300e;

        /* JADX WARN: Multi-variable type inference failed */
        public C11158s(Iterator<? extends Map.Entry<String, String>> it2) {
            this.f54300e = it2;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull TemplateImportBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !this.f54300e.hasNext();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$t */
    /* loaded from: classes9.dex */
    public static final class C11159t<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<TemplateImportBean> f54301e;

        public C11159t(List<TemplateImportBean> list) {
            this.f54301e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<TemplateImportBean> apply(@NotNull TemplateImportBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f54301e;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$u */
    /* loaded from: classes9.dex */
    public static final class C11160u<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Path f54302e;

        public C11160u(Path path) {
            this.f54302e = path;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull LoadCustomThumbByImgRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Bitmap bitmap = it2.getBitmap();
            return Boolean.valueOf(bitmap != null ? BitmapKt.save$default(bitmap, this.f54302e.toAbsolutePath().toString(), 0, 2, null) : false);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$v */
    /* loaded from: classes9.dex */
    public static final class C11161v<T, R> implements Function {
        public C11161v() {
        }

        @NotNull
        /* renamed from: a */
        public final SaveFilesAsCustomTemplateAction m42899a(boolean z) {
            return SaveFilesAsCustomTemplateAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42899a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$w */
    /* loaded from: classes9.dex */
    public static final class C11162w<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Path f54304e;

        public C11162w(Path path) {
            this.f54304e = path;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull LoadReaderPageThumbnailRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Bitmap bitmap = it2.getBitmap();
            return Boolean.valueOf(bitmap != null ? BitmapKt.save$default(bitmap, this.f54304e.toAbsolutePath().toString(), 0, 2, null) : false);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$x */
    /* loaded from: classes9.dex */
    public static final class C11163x<T, R> implements Function {
        public C11163x() {
        }

        @NotNull
        /* renamed from: a */
        public final SaveFilesAsCustomTemplateAction m42901a(boolean z) {
            return SaveFilesAsCustomTemplateAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42901a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$y */
    /* loaded from: classes9.dex */
    public static final class C11164y<T, R> implements Function {

        /* renamed from: e */
        public static final C11164y<T, R> f54306e = new C11164y<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TemplateImportBean apply(@NotNull Iterator<TemplateImportBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.next();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.SaveFilesAsCustomTemplateAction$z */
    /* loaded from: classes9.dex */
    public static final class C11165z<T, R> implements Function {
        public C11165z() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveFilesAsCustomTemplateAction> apply(@NotNull TemplateImportBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveFilesAsCustomTemplateAction.this.m42873z(it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveFilesAsCustomTemplateAction(@NotNull EditorBundle editorBundle, @NotNull List<TemplateFileBean> list, @NotNull String importDirPath) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(importDirPath, "importDirPath");
        this.list = list;
        this.importDirPath = importDirPath;
        this.beanList = new ArrayList();
    }

    /* renamed from: B */
    public static final boolean m42856B(Iterator iterator) {
        Intrinsics.checkNotNullParameter(iterator, "$iterator");
        return !iterator.hasNext();
    }

    /* renamed from: q */
    public static final boolean m42862q(Iterator iterator) {
        Intrinsics.checkNotNullParameter(iterator, "$iterator");
        return !iterator.hasNext();
    }

    /* renamed from: r */
    public static final void m42863r(SaveFilesAsCustomTemplateAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m42869t();
    }

    /* renamed from: v */
    public static final boolean m42864v(Iterator iterator) {
        Intrinsics.checkNotNullParameter(iterator, "$iterator");
        return !iterator.hasNext();
    }

    /* renamed from: y */
    public static final boolean m42865y(Iterator iterator) {
        Intrinsics.checkNotNullParameter(iterator, "$iterator");
        return !iterator.hasNext();
    }

    /* renamed from: A */
    public final Observable<SaveFilesAsCustomTemplateAction> m42866A(List<TemplateImportBean> templateImportBeanList) {
        if (CollectionKt.isNullOrEmpty(templateImportBeanList)) {
            Observable<SaveFilesAsCustomTemplateAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final Iterator<TemplateImportBean> it2 = templateImportBeanList.iterator();
        Observable<SaveFilesAsCustomTemplateAction> map = Observable.just(it2).map(C11164y.f54306e).flatMap(new C11165z()).repeatUntil(new BooleanSupplier() { // from class: com.sunia.HTREnginev2.q0m
            @Override // io.reactivex.rxjava3.functions.BooleanSupplier
            public final boolean getAsBoolean() {
                boolean m42856B;
                m42856B = SaveFilesAsCustomTemplateAction.m42856B(it2);
                return m42856B;
            }
        }).filter(new C11138a0(it2)).map(new C11140b0());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: C */
    public final Observable<TemplateFileBean> m42867C(TemplateFileBean fileBean) {
        SaveUriToFileRequest saveUriToFileRequest = new SaveUriToFileRequest(fileBean.getUri(), this.importDirPath);
        FileUtils fileUtils = FileUtils.INSTANCE;
        saveUriToFileRequest.setFileName(fileUtils.combine(UUIDUtils.INSTANCE.shortUUID(), fileUtils.getFileExtension(UriKt.getFileName(fileBean.getUri(), ResManager.INSTANCE.getAppContext()))));
        Observable<TemplateFileBean> map = RxBaseAppActionKt.submitRequestToIOSequence(this, saveUriToFileRequest).map(new C11142c0(fileBean, saveUriToFileRequest));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SaveFilesAsCustomTemplateAction> create() {
        if (CollectionKt.isNullOrEmpty(this.list)) {
            Observable<SaveFilesAsCustomTemplateAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final Iterator<TemplateFileBean> it2 = this.list.iterator();
        Observable<SaveFilesAsCustomTemplateAction> map = Observable.just(it2).map(C11137a.f54270e).flatMap(new C11139b()).flatMap(new C11141c()).flatMap(new C11143d()).flatMap(new C11144e()).repeatUntil(new BooleanSupplier() { // from class: com.sunia.HTREnginev2.s0m
            @Override // io.reactivex.rxjava3.functions.BooleanSupplier
            public final boolean getAsBoolean() {
                boolean m42862q;
                m42862q = SaveFilesAsCustomTemplateAction.m42862q(it2);
                return m42862q;
            }
        }).filter(new C11145f(it2)).observeOn(EditorBundleKt.ioSequenceScheduler(getEditorBundle())).doFinally(new Action() { // from class: com.sunia.HTREnginev2.t0m
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                SaveFilesAsCustomTemplateAction.m42863r(SaveFilesAsCustomTemplateAction.this);
            }
        }).map(new C11146g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final List<TemplateImportBean> getBeanList() {
        return this.beanList;
    }

    /* renamed from: s */
    public final ReaderExportArgs m42868s(int pageIndex, String filePassword) {
        List listOf;
        int[] intArray;
        ReaderExportArgs readerExportArgs = new ReaderExportArgs();
        readerExportArgs.setOutputPath(TemplatePaths.INSTANCE.appCurUserNoteTemplateResPath(UUIDUtils.INSTANCE.rawUUID() + CloudStorageConstants.PDF_FILE_SUFFIX).toAbsolutePath().toString());
        listOf = CollectionsKt__CollectionsJVMKt.listOf(Integer.valueOf(pageIndex));
        intArray = CollectionsKt___CollectionsKt.toIntArray(listOf);
        readerExportArgs.setPages(intArray);
        readerExportArgs.setSourceFilePassword(filePassword);
        return readerExportArgs;
    }

    /* renamed from: t */
    public final void m42869t() {
        for (TemplateFileBean templateFileBean : this.list) {
            if (templateFileBean.getExportFilePages()) {
                FileUtils.INSTANCE.deleteFileExt(templateFileBean.getSaveFilePath());
            }
        }
    }

    /* renamed from: u */
    public final Observable<Map<String, String>> m42870u(TemplateFileBean fileBean) {
        String fileBaseName = FileUtils.INSTANCE.getFileBaseName(UriKt.getFileName(fileBean.getUri(), ResManager.INSTANCE.getAppContext()));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (fileBean.getExportFilePages()) {
            final Iterator<Integer> it2 = fileBean.getPageIndexList().iterator();
            Observable<Map<String, String>> map = Observable.just(it2).map(C11147h.f54281e).map(new C11148i(fileBean)).concatMap(new C11149j(fileBean, this, linkedHashMap, fileBaseName)).repeatUntil(new BooleanSupplier() { // from class: com.sunia.HTREnginev2.u0m
                @Override // io.reactivex.rxjava3.functions.BooleanSupplier
                public final boolean getAsBoolean() {
                    boolean m42864v;
                    m42864v = SaveFilesAsCustomTemplateAction.m42864v(it2);
                    return m42864v;
                }
            }).filter(new C11150k(it2)).map(new C11151l(linkedHashMap));
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return map;
        }
        String saveFilePath = fileBean.getSaveFilePath();
        if (saveFilePath == null) {
            saveFilePath = "";
        }
        linkedHashMap.put(saveFilePath, fileBaseName);
        Observable<Map<String, String>> just = Observable.just(linkedHashMap);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: w */
    public final Observable<TemplateImportBean> m42871w(Pair<String, String> data) {
        Object obj;
        String str;
        List<TitleModel> emptyList;
        String id;
        String str2;
        List<TitleModel> emptyList2;
        String id2;
        Iterator<T> it2 = this.list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(((TemplateFileBean) obj).getSaveFilePath(), data.getFirst())) {
                break;
            }
        }
        TemplateFileBean templateFileBean = (TemplateFileBean) obj;
        TemplateImportBean templateImportBean = new TemplateImportBean();
        templateImportBean.setTitle(data.getSecond());
        String str3 = "";
        if (ImageUtils.isImage(data.getFirst())) {
            LoadImagePageInfoRequest loadImagePageInfoRequest = new LoadImagePageInfoRequest(data.getFirst(), AppConfig.INSTANCE.getMAX_CUSTOM_PAGE_SIZE());
            templateImportBean.setReaderPageInfo(loadImagePageInfoRequest.getReaderPageInfo());
            if (templateFileBean == null || (str2 = templateFileBean.getTitle()) == null) {
                str2 = "";
            }
            templateImportBean.setTitle(str2);
            if (templateFileBean == null || (emptyList2 = templateFileBean.getTitleList()) == null) {
                emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            }
            templateImportBean.setTitleList(emptyList2);
            if (templateFileBean != null && (id2 = templateFileBean.getId()) != null) {
                str3 = id2;
            }
            templateImportBean.setId(str3);
            this.beanList.add(templateImportBean);
            Observable<TemplateImportBean> map = RxBaseAppActionKt.submitRequestToIOSequence(this, loadImagePageInfoRequest).map(new C11152m(templateImportBean));
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return map;
        }
        LoadReaderPageInfoRequest loadReaderPageInfoRequest = new LoadReaderPageInfoRequest(EditorBundleKt.readerBundle(getEditorBundle()));
        loadReaderPageInfoRequest.setPath(data.getFirst());
        templateImportBean.setReaderPageInfo(loadReaderPageInfoRequest.getReaderPageInfo());
        if (templateFileBean == null || (str = templateFileBean.getTitle()) == null) {
            str = "";
        }
        templateImportBean.setTitle(str);
        if (templateFileBean == null || (emptyList = templateFileBean.getTitleList()) == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        templateImportBean.setTitleList(emptyList);
        if (templateFileBean != null && (id = templateFileBean.getId()) != null) {
            str3 = id;
        }
        templateImportBean.setId(str3);
        this.beanList.add(templateImportBean);
        Observable<TemplateImportBean> map2 = RxBaseAppActionKt.submitRequestToReader(this, loadReaderPageInfoRequest).flatMap(new C11153n(loadReaderPageInfoRequest)).map(new C11154o(templateImportBean));
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }

    /* renamed from: x */
    public final Observable<List<TemplateImportBean>> m42872x(Map<String, String> map) {
        List emptyList;
        if (CollectionKt.isNullOrEmpty(map)) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            Observable<List<TemplateImportBean>> just = Observable.just(emptyList);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        ArrayList arrayList = new ArrayList();
        final Iterator<Map.Entry<String, String>> it2 = map.entrySet().iterator();
        Observable<List<TemplateImportBean>> map2 = Observable.just(it2).map(C11155p.f54297e).flatMap(new C11156q()).doOnNext(new C11157r(arrayList)).repeatUntil(new BooleanSupplier() { // from class: com.sunia.HTREnginev2.r0m
            @Override // io.reactivex.rxjava3.functions.BooleanSupplier
            public final boolean getAsBoolean() {
                boolean m42865y;
                m42865y = SaveFilesAsCustomTemplateAction.m42865y(it2);
                return m42865y;
            }
        }).filter(new C11158s(it2)).map(new C11159t(arrayList));
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }

    /* renamed from: z */
    public final Observable<SaveFilesAsCustomTemplateAction> m42873z(TemplateImportBean templateImportBean) {
        Path createParentDirectories;
        LoadReaderPageThumbnailArgs loadReaderPageThumbnailArgs = new LoadReaderPageThumbnailArgs(templateImportBean.getReaderPageInfo().getPath(), 0, BitmapUtils.INSTANCE.getThumbnailSize(new Size((int) templateImportBean.getReaderPageInfo().getPageOriginSize().width(), (int) templateImportBean.getReaderPageInfo().getPageOriginSize().height()), AppConfig.INSTANCE.getDEFAULT_PAGE_THUMBNAIL_SIZE()), null, false, 24, null);
        Paths paths = Paths.INSTANCE;
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        Path path = java.nio.file.Paths.get(this.importDirPath, new String[0]);
        Intrinsics.checkNotNullExpressionValue(path, "get(...)");
        createParentDirectories = PathsKt__PathUtilsKt.createParentDirectories(paths.append(commonPaths.thumbnail(path), UUIDUtils.INSTANCE.rawUUID()), new FileAttribute[0]);
        templateImportBean.setThumbnailRelativePath(TemplatePaths.INSTANCE.templateResRelativePath(createParentDirectories.toAbsolutePath().toString()));
        if (ImageUtils.isImage(loadReaderPageThumbnailArgs.getPath())) {
            Observable<SaveFilesAsCustomTemplateAction> map = RxBaseAppActionKt.submitRequestToIOSequence(this, new LoadCustomThumbByImgRequest(loadReaderPageThumbnailArgs)).map(new C11160u(createParentDirectories)).map(new C11161v());
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return map;
        }
        Observable<SaveFilesAsCustomTemplateAction> map2 = RxBaseAppActionKt.submitRequestToReader(this, new LoadReaderPageThumbnailRequest(EditorBundleKt.readerBundle(getEditorBundle()), loadReaderPageThumbnailArgs)).map(new C11162w(createParentDirectories)).map(new C11163x());
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }
}
