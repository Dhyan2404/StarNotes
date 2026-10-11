package com.onyx.android.sdk.universal.editor.action.common;

import android.net.Uri;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.common.SaveImageUriToFileAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.common.SaveUriToFileRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.BooleanSupplier;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001eJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R(\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR*\u0010\u0017\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001d\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00078\u0006¢\u0006\f\n\u0004\b\u0018\u0010\t\u001a\u0004\b\u0019\u0010\u000b¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/common/SaveImageUriToFileAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Landroid/net/Uri;", "uri", GoogleApiAvailabilityLight.f29016b, "", C6999h.f39688c, "Ljava/util/List;", "getUriList", "()Ljava/util/List;", "setUriList", "(Ljava/util/List;)V", "uriList", "", "kotlin.jvm.PlatformType", "i", Constants.STRING_SIG, "getDir", "()Ljava/lang/String;", "setDir", "(Ljava/lang/String;)V", CouchFieldKey.KEY_DIR, "j", "getFilePathList", "filePathList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SaveImageUriToFileAction extends RxBaseAppAction<SaveImageUriToFileAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<Uri> uriList;

    /* renamed from: i, reason: from kotlin metadata */
    public String dir;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final List<String> filePathList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.common.SaveImageUriToFileAction$c */
    /* loaded from: classes8.dex */
    public static final class C8608c<T> implements Predicate {

        /* renamed from: e */
        public final /* synthetic */ Iterator<Uri> f48204e;

        /* JADX WARN: Multi-variable type inference failed */
        public C8608c(Iterator<? extends Uri> it2) {
            this.f48204e = it2;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull SaveImageUriToFileAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !this.f48204e.hasNext();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.common.SaveImageUriToFileAction$d */
    /* loaded from: classes8.dex */
    public static final class C8609d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Uri f48205e;

        public C8609d(Uri uri) {
            this.f48205e = uri;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull SaveImageUriToFileAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FileExtensionUtils.INSTANCE.getImageExtension(this.f48205e);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.common.SaveImageUriToFileAction$e */
    /* loaded from: classes8.dex */
    public static final class C8610e<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Uri f48206e;

        /* renamed from: f */
        public final /* synthetic */ SaveImageUriToFileAction f48207f;

        public C8610e(Uri uri, SaveImageUriToFileAction saveImageUriToFileAction) {
            this.f48206e = uri;
            this.f48207f = saveImageUriToFileAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveUriToFileRequest apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Uri uri = this.f48206e;
            String dir = this.f48207f.getDir();
            Intrinsics.checkNotNullExpressionValue(dir, "<get-dir>(...)");
            SaveUriToFileRequest saveUriToFileRequest = new SaveUriToFileRequest(uri, dir);
            saveUriToFileRequest.setFileName(FileUtils.INSTANCE.combine(UUIDUtils.INSTANCE.shortUUID(), it2));
            return saveUriToFileRequest;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.common.SaveImageUriToFileAction$f */
    /* loaded from: classes8.dex */
    public static final class C8611f<T, R> implements Function {
        public C8611f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveUriToFileRequest> apply(@NotNull SaveUriToFileRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RxBaseAppActionKt.submitRequestToIOSequence(SaveImageUriToFileAction.this, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.common.SaveImageUriToFileAction$g */
    /* loaded from: classes8.dex */
    public static final class C8612g<T, R> implements Function {
        public C8612g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveImageUriToFileAction apply(@NotNull SaveUriToFileRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            String filePath = it2.getFilePath();
            if (StringKt.isNotBlank(filePath)) {
                SaveImageUriToFileAction.this.getFilePathList().add(filePath);
            }
            return SaveImageUriToFileAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveImageUriToFileAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.uriList = new ArrayList();
        this.dir = ResManager.INSTANCE.getAppContext().getCacheDir().getAbsolutePath();
        this.filePathList = new ArrayList();
    }

    /* renamed from: m */
    public static final boolean m37501m(Iterator iterator) {
        Intrinsics.checkNotNullParameter(iterator, "$iterator");
        return !iterator.hasNext();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SaveImageUriToFileAction> create() {
        final Iterator<Uri> it2 = this.uriList.iterator();
        if (it2.hasNext()) {
            Observable<SaveImageUriToFileAction> filter = Observable.just(it2).map(new Function() { // from class: com.onyx.android.sdk.universal.editor.action.common.SaveImageUriToFileAction.a
                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final Uri apply(@NotNull Iterator<? extends Uri> p0) {
                    Intrinsics.checkNotNullParameter(p0, "p0");
                    return p0.next();
                }
            }).flatMap(new Function() { // from class: com.onyx.android.sdk.universal.editor.action.common.SaveImageUriToFileAction.b
                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final Observable<SaveImageUriToFileAction> apply(@NotNull Uri p0) {
                    Intrinsics.checkNotNullParameter(p0, "p0");
                    return SaveImageUriToFileAction.this.m37502n(p0);
                }
            }).repeatUntil(new BooleanSupplier() { // from class: com.sunia.HTREnginev2.v0m
                @Override // io.reactivex.rxjava3.functions.BooleanSupplier
                public final boolean getAsBoolean() {
                    boolean m37501m;
                    m37501m = SaveImageUriToFileAction.m37501m(it2);
                    return m37501m;
                }
            }).filter(new C8608c(it2));
            Intrinsics.checkNotNullExpressionValue(filter, "filter(...)");
            return filter;
        }
        Observable<SaveImageUriToFileAction> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    public final String getDir() {
        return this.dir;
    }

    @NotNull
    public final List<String> getFilePathList() {
        return this.filePathList;
    }

    @NotNull
    public final List<Uri> getUriList() {
        return this.uriList;
    }

    /* renamed from: n */
    public final Observable<SaveImageUriToFileAction> m37502n(Uri uri) {
        Observable<SaveImageUriToFileAction> map = Observable.just(this).observeOn(EditorBundleKt.ioSequenceScheduler(getEditorBundle())).map(new C8609d(uri)).map(new C8610e(uri, this)).flatMap(new C8611f()).map(new C8612g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setDir(String str) {
        this.dir = str;
    }

    public final void setUriList(@NotNull List<Uri> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.uriList = list;
    }
}
