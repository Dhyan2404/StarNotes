package com.onyx.android.sdk.universal.editor.action.audio;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeConvertUtils;
import com.onyx.android.sdk.replicator.note.p035db.NoteShapeProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001d\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\f\u0010\n\u001a\u00020\u0003*\u00020\tH\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/audio/FindAudioShapesAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, "m", "l", "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;", C4921e.f26528e, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "e", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", C6997f.f39671c, "Ljava/util/List;", "audioPaths", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFindAudioShapesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FindAudioShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/audio/FindAudioShapesAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,79:1\n1655#2,8:80\n1549#2:88\n1620#2,3:89\n766#2:92\n857#2,2:93\n766#2:95\n857#2,2:96\n1549#2:98\n1620#2,3:99\n766#2:102\n857#2,2:103\n1549#2:105\n1620#2,3:106\n*S KotlinDebug\n*F\n+ 1 FindAudioShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/audio/FindAudioShapesAction\n*L\n38#1:80,8\n45#1:88\n45#1:89,3\n51#1:92\n51#1:93,2\n52#1:95\n52#1:96,2\n62#1:98\n62#1:99,3\n70#1:102\n70#1:103,2\n72#1:105\n72#1:106,3\n*E\n"})
/* loaded from: classes8.dex */
public final class FindAudioShapesAction extends RxBaseAction<List<? extends Shape>> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<String> audioPaths;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.audio.FindAudioShapesAction$a */
    /* loaded from: classes8.dex */
    public static final class C8431a<T, R> implements Function {
        public C8431a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FindAudioShapesAction.this.m37166n();
        }
    }

    public FindAudioShapesAction(@NotNull EditorBundle editorBundle, @NotNull List<String> audioPaths) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(audioPaths, "audioPaths");
        this.editorBundle = editorBundle;
        this.audioPaths = audioPaths;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<? extends Shape>> create() {
        Observable<List<? extends Shape>> map = Observable.just(Unit.INSTANCE).observeOn(EditorBundleKt.noteScheduler(this.editorBundle)).map(new C8431a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final List<Shape> m37164l() {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        NoteDocument noteDoc = EditorBundleKt.noteBundle(this.editorBundle).getNoteDoc();
        List<NotePage> loadedNotePages = noteDoc.getLoadedNotePages();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadedNotePages, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadedNotePages.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NotePage) it2.next()).getPageUniqueId());
        }
        NoteShapeProvider noteShapeProvider = noteDoc.getProviderHolder().getNoteShapeProvider();
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        List<ShapeModel> loadShapeList = noteShapeProvider.loadShapeList(cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_DOCUMENT_ID, EditorBundleKt.docId(this.editorBundle))).andWith(couchUtils.equalExpression("status", 0)).andWith(couchUtils.equalExpression("shapeType", 33)).andWith(CouchUtils.likeExpression$default(couchUtils, "text", "%AUDIO%", false, 4, null)).andWith(couchUtils.notInExpression(CouchFieldKey.KEY_PAGE_ID, arrayList)));
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : loadShapeList) {
            ShapeConvertUtils shapeConvertUtils = ShapeConvertUtils.INSTANCE;
            String text = ((ShapeModel) obj).getText();
            if (text == null) {
                text = "";
            }
            if (shapeConvertUtils.isAudioLinkShape(text, this.audioPaths)) {
                arrayList2.add(obj);
            }
        }
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault2);
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            arrayList3.add(m37167o((ShapeModel) it3.next()));
        }
        return arrayList3;
    }

    /* renamed from: m */
    public final List<Shape> m37165m() {
        int collectionSizeOrDefault;
        NotePage notePage;
        ArrayList arrayList = new ArrayList();
        VirtualDocPolicy virtualPolicy = this.editorBundle.getWorkBundle().getVirtualPolicy();
        List<NotePage> loadedNotePages = EditorBundleKt.noteBundle(this.editorBundle).getNoteDoc().getLoadedNotePages();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadedNotePages, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadedNotePages.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((NotePage) it2.next()).getPageUniqueId());
        }
        for (VirtualPage virtualPage : virtualPolicy.getVirtualPageList()) {
            if (arrayList2.contains(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId()) && (notePage = virtualPolicy.getNotePage(virtualPage)) != null) {
                List<Shape> shapeList = notePage.getShapeList();
                ArrayList arrayList3 = new ArrayList();
                for (Object obj : shapeList) {
                    if (ShapeTypes.INSTANCE.isLinkShape((Shape) obj)) {
                        arrayList3.add(obj);
                    }
                }
                ArrayList arrayList4 = new ArrayList();
                for (Object obj2 : arrayList3) {
                    ShapeConvertUtils shapeConvertUtils = ShapeConvertUtils.INSTANCE;
                    String text = ((Shape) obj2).getText();
                    if (text == null) {
                        text = "";
                    }
                    if (shapeConvertUtils.isAudioLinkShape(text, this.audioPaths)) {
                        arrayList4.add(obj2);
                    }
                }
                arrayList.addAll(arrayList4);
            }
        }
        return arrayList;
    }

    /* renamed from: n */
    public final List<Shape> m37166n() {
        ArrayList arrayList = new ArrayList();
        List<Shape> m37165m = m37165m();
        List<Shape> m37164l = m37164l();
        arrayList.addAll(m37165m);
        arrayList.addAll(m37164l);
        HashSet hashSet = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (hashSet.add(((Shape) obj).getShapeUniqueId())) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    /* renamed from: o */
    public final Shape m37167o(ShapeModel shapeModel) {
        return ShapeConvertUtils.INSTANCE.shapeFromModel(EditorBundleKt.noteBundle(this.editorBundle).getNoteDoc().getProviderHolder(), shapeModel);
    }
}
