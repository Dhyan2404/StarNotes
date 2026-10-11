package com.onyx.android.sdk.universal.editor.action.fonts;

import android.graphics.Typeface;
import com.miui.penengine.p015e.C6997f;
import com.onegravity.rteditor.fonts.FontManager;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.FontProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModel;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModelExt;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000e0\r¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0004\u001a\u00020\u0000H\u0002R\"\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001d\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/fonts/ImportFontsAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "e", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "editorBundle", "", "", C6997f.f39671c, "Ljava/util/List;", "getList", "()Ljava/util/List;", "list", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nImportFontsAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportFontsAction.kt\ncom/onyx/android/sdk/universal/editor/action/fonts/ImportFontsAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,50:1\n1549#2:51\n1620#2,3:52\n1855#2,2:55\n*S KotlinDebug\n*F\n+ 1 ImportFontsAction.kt\ncom/onyx/android/sdk/universal/editor/action/fonts/ImportFontsAction\n*L\n29#1:51\n29#1:52,3\n31#1:55,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ImportFontsAction extends RxBaseAction<ImportFontsAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public EditorBundle editorBundle;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<String> list;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.fonts.ImportFontsAction$a */
    /* loaded from: classes8.dex */
    public static final class C9115a<T, R> implements Function {
        public C9115a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ImportFontsAction apply(@NotNull ImportFontsAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportFontsAction.this.m38358l();
        }
    }

    public ImportFontsAction(@NotNull EditorBundle editorBundle, @NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(list, "list");
        this.editorBundle = editorBundle;
        this.list = list;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ImportFontsAction> create() {
        Observable<ImportFontsAction> map = Observable.just(this).observeOn(EditorBundleKt.ioSequenceScheduler(this.editorBundle)).map(new C9115a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final List<String> getList() {
        return this.list;
    }

    /* renamed from: l */
    public final ImportFontsAction m38358l() {
        int collectionSizeOrDefault;
        FontProvider appFontProvider = KSyncBundle.INSTANCE.getAppFontProvider();
        List<FontModel> loadList = appFontProvider.loadList();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((FontModel) it2.next()).getMd5());
        }
        ArrayList arrayList2 = new ArrayList();
        for (String str : this.list) {
            String computeFullMD5Safely = FileUtils.INSTANCE.computeFullMD5Safely(str);
            if (computeFullMD5Safely == null) {
                computeFullMD5Safely = "";
            }
            if (!arrayList.contains(computeFullMD5Safely)) {
                FontModel fontModel = new FontModel();
                fontModel.ensureUniqueIdExist();
                String replaceAllBlank$default = StringKt.replaceAllBlank$default(FilenameUtils.getBaseName(str), null, 1, null);
                fontModel.setName(replaceAllBlank$default != null ? replaceAllBlank$default : "");
                String extension = FilenameUtils.getExtension(str);
                Intrinsics.checkNotNullExpressionValue(extension, "getExtension(...)");
                fontModel.setFormat(extension);
                fontModel.setMd5(computeFullMD5Safely);
                File file = new File(str);
                FontModelExt fontModelExt = FontModelExt.INSTANCE;
                onyx.org.apache.commons.io.FileUtils.copyFile(file, new File(FontModelExt.getSavePath$default(fontModelExt, fontModel, null, 1, null)));
                arrayList2.add(fontModel);
                FontManager.addFontFace(FontModelExt.getSavePath$default(fontModelExt, fontModel, null, 1, null), Typeface.createFromFile(FontModelExt.getSavePath$default(fontModelExt, fontModel, null, 1, null)));
            }
        }
        appFontProvider.saveList(arrayList2);
        return this;
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<set-?>");
        this.editorBundle = editorBundle;
    }
}
