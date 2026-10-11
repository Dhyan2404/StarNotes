package com.onyx.android.sdk.universal.editor.action.page;

import android.net.Uri;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.path.ResourcePaths;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.common.SaveImageUriToFileAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.p042ui.data.Templates;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B%\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0006\u0010\u0016\u001a\u00020\b¢\u0006\u0004\b\u0019\u0010\u001aJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0004H\u0002J\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0002H\u0002R\u001d\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0016\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/page/ImportImagesAsTemplateModelsAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/universal/editor/action/common/SaveImageUriToFileAction;", "m", "", "pathList", "l", "", "Landroid/net/Uri;", C6999h.f39688c, "Ljava/util/List;", "getUriList", "()Ljava/util/List;", "uriList", "i", Constants.STRING_SIG, "getDocumentId", "()Ljava/lang/String;", "documentId", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nImportImagesAsTemplateModelsAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportImagesAsTemplateModelsAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/ImportImagesAsTemplateModelsAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,54:1\n1855#2,2:55\n*S KotlinDebug\n*F\n+ 1 ImportImagesAsTemplateModelsAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/ImportImagesAsTemplateModelsAction\n*L\n47#1:55,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ImportImagesAsTemplateModelsAction extends RxBaseAppAction<List<TemplateModel>> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<Uri> uriList;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final String documentId;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.ImportImagesAsTemplateModelsAction$a */
    /* loaded from: classes8.dex */
    public static final class C9678a<T, R> implements Function {
        public C9678a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<TemplateModel> apply(@NotNull SaveImageUriToFileAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportImagesAsTemplateModelsAction.this.m39478l(it2.getFilePathList());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ImportImagesAsTemplateModelsAction(@NotNull EditorBundle editorBundle, @NotNull List<? extends Uri> uriList, @NotNull String documentId) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(uriList, "uriList");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        this.uriList = uriList;
        this.documentId = documentId;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<TemplateModel>> create() {
        Observable<List<TemplateModel>> observeOn = m39479m().observeOn(EditorBundleKt.ioSequenceScheduler(getEditorBundle())).map(new C9678a()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public final String getDocumentId() {
        return this.documentId;
    }

    @NotNull
    public final List<Uri> getUriList() {
        return this.uriList;
    }

    /* renamed from: l */
    public final List<TemplateModel> m39478l(List<String> pathList) {
        ArrayList arrayList = new ArrayList();
        if (pathList.isEmpty()) {
            return arrayList;
        }
        Iterator<T> it2 = pathList.iterator();
        while (it2.hasNext()) {
            arrayList.add(Templates.INSTANCE.createTemplateModeByDecodeImage((String) it2.next()));
        }
        return arrayList;
    }

    /* renamed from: m */
    public final Observable<SaveImageUriToFileAction> m39479m() {
        List<Uri> mutableList;
        SaveImageUriToFileAction saveImageUriToFileAction = new SaveImageUriToFileAction(getEditorBundle());
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.uriList);
        saveImageUriToFileAction.setUriList(mutableList);
        saveImageUriToFileAction.setDir(ResourcePaths.INSTANCE.appDocResourceContentDir(this.documentId).toAbsolutePath().toString());
        return saveImageUriToFileAction.build();
    }
}
