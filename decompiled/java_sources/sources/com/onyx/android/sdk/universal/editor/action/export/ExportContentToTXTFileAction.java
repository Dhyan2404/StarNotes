package com.onyx.android.sdk.universal.editor.action.export;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.NoteExporter;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import java.io.FileNotFoundException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B;\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002R\u0016\u0010\u0005\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\fR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\fR\"\u0010\u0018\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/export/ExportContentToTXTFileAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "content", GoogleApiAvailabilityLight.f29016b, "l", "", FirebaseAnalytics.Param.INDEX, "m", C6999h.f39688c, Constants.STRING_SIG, "i", Constants.INTEGER_SIG, "pageIndex", "j", "exportDirPath", C4921e.f26537n, "exportFileName", "getDesc", "()Ljava/lang/String;", "setDesc", "(Ljava/lang/String;)V", "desc", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ExportContentToTXTFileAction extends RxBaseAppAction<String> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public String content;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public Integer pageIndex;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public String exportDirPath;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public String exportFileName;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public String desc;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportContentToTXTFileAction$a */
    /* loaded from: classes8.dex */
    public static final class C8958a<T, R> implements Function {
        public C8958a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ExportContentToTXTFileAction.this.m38096n(it2);
        }
    }

    public /* synthetic */ ExportContentToTXTFileAction(EditorBundle editorBundle, String str, Integer num, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, str, (i & 4) != 0 ? null : num, (i & 8) != 0 ? null : str2, (i & 16) != 0 ? null : str3);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<String> create() {
        Observable<String> map = Observable.just(this.content).observeOn(Schedulers.m61350io()).map(new C8958a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final String getDesc() {
        return this.desc;
    }

    /* renamed from: l */
    public final String m38094l() {
        String str = this.exportDirPath;
        if (str == null || str.length() == 0) {
            File externalCacheDir = getAppContext().getExternalCacheDir();
            Intrinsics.checkNotNull(externalCacheDir);
            this.exportDirPath = externalCacheDir.getAbsolutePath();
        }
        String str2 = this.exportDirPath;
        Intrinsics.checkNotNull(str2);
        return str2;
    }

    /* renamed from: m */
    public final String m38095m(int index) {
        String str = this.exportFileName;
        if (str == null || str.length() == 0) {
            String title = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc().getNoteModel().getTitle();
            if (this.desc.length() == 0) {
                this.desc = String.valueOf(index + 1);
            }
            this.exportFileName = NoteExporter.INSTANCE.getExportName(String.valueOf(title), this.desc, "txt");
        }
        String str2 = this.exportFileName;
        Intrinsics.checkNotNull(str2);
        return str2;
    }

    /* renamed from: n */
    public final String m38096n(String content) {
        Integer num = this.pageIndex;
        File file = new File(m38094l(), m38095m(num != null ? num.intValue() : EditorBundleKt.currentPageIndex(getEditorBundle())));
        FileUtils.INSTANCE.appendContentToFile(content, file);
        if (file.length() <= 0) {
            throw new FileNotFoundException(file.getAbsolutePath());
        }
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    public final void setDesc(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.desc = str;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExportContentToTXTFileAction(@NotNull EditorBundle editorBundle, @NotNull String content, @Nullable Integer num, @Nullable String str, @Nullable String str2) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(content, "content");
        this.content = content;
        this.pageIndex = num;
        this.exportDirPath = str;
        this.exportFileName = str2;
        this.desc = "";
    }
}
