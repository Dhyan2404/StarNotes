package com.onyx.galaxy.note.editor.action.font;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.p035db.ShapeQueryArgsExtKt;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.onyx.android.sdk.replicator.note.utils.TextShapes;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\b\u001a\u00020\u0006H\u0002R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "m", "l", "", C6999h.f39688c, "Ljava/util/Set;", "names", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCheckDocumentFontAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckDocumentFontAction.kt\ncom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,48:1\n1360#2:49\n1446#2,5:50\n1655#2,8:55\n1360#2:63\n1446#2,5:64\n1549#2:69\n1620#2,3:70\n1655#2,8:73\n*S KotlinDebug\n*F\n+ 1 CheckDocumentFontAction.kt\ncom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction\n*L\n33#1:49\n33#1:50,5\n34#1:55,8\n43#1:63\n43#1:64,5\n44#1:69\n44#1:70,3\n45#1:73,8\n*E\n"})
/* loaded from: classes9.dex */
public final class CheckDocumentFontAction extends RxBaseAppAction<Set<? extends String>> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Set<String> names;

    /* renamed from: com.onyx.galaxy.note.editor.action.font.CheckDocumentFontAction$a */
    /* loaded from: classes9.dex */
    public static final class C11927a<T> implements Consumer {
        public C11927a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CheckDocumentFontAction.this.m45860m();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.font.CheckDocumentFontAction$b */
    /* loaded from: classes9.dex */
    public static final class C11928b<T> implements Consumer {
        public C11928b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CheckDocumentFontAction.this.m45859l();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.font.CheckDocumentFontAction$c */
    /* loaded from: classes9.dex */
    public static final class C11929c<T, R> implements Function {
        public C11929c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Set<String> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CheckDocumentFontAction.this.names;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckDocumentFontAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.names = new LinkedHashSet();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Set<String>> create() {
        Observable<Set<String>> map = Observable.just(Unit.INSTANCE).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C11927a()).doOnNext(new C11928b()).map(new C11929c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m45859l() {
        int collectionSizeOrDefault;
        List<ShapeModel> loadShapeList = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc().getProviderHolder().getNoteShapeProvider().loadShapeList(ShapeQueryArgsExtKt.loadShapeFontQuery(48));
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = loadShapeList.iterator();
        while (it2.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, TextShapes.INSTANCE.parseHwrTextShapeFontList((ShapeModel) it2.next()));
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            arrayList2.add(FilenameUtils.getBaseName((String) it3.next()));
        }
        HashSet hashSet = new HashSet();
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : arrayList2) {
            if (hashSet.add((String) obj)) {
                arrayList3.add(obj);
            }
        }
        this.names.addAll(arrayList3);
    }

    /* renamed from: m */
    public final void m45860m() {
        List<ShapeModel> loadShapeList = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc().getProviderHolder().getNoteShapeProvider().loadShapeList(ShapeQueryArgsExtKt.loadShapeFontQuery(16));
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = loadShapeList.iterator();
        while (it2.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, TextShapes.INSTANCE.parseTextShapeFontList((ShapeModel) it2.next()));
        }
        HashSet hashSet = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (hashSet.add(FilenameUtils.getBaseName((String) obj))) {
                arrayList2.add(obj);
            }
        }
        this.names.addAll(arrayList2);
    }
}
