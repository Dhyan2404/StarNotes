package com.onyx.android.sdk.universal.editor.view;

import android.graphics.RectF;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.replicator.note.p035db.model.NoteTabData;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.config.SplitScreenPosition;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.events.app.BeforeExitSplitScreenEvent;
import com.onyx.android.sdk.universal.editor.events.app.BeforeStartSplitScreenEvent;
import com.onyx.android.sdk.universal.editor.events.app.SaveDocumentEvent;
import com.onyx.android.sdk.universal.editor.events.app.StartActivateDocumentEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.view.EditorBundleManager;
import com.onyx.android.sdk.universal.editor.view.EditorViewHandler;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010%\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0007\u0018\u0000 i2\u00020\u0001:\u0001iB\u001f\u0012\u0006\u0010J\u001a\u00020F\u0012\u0006\u0010P\u001a\u00020K\u0012\u0006\u0010U\u001a\u00020\u0001¢\u0006\u0004\bg\u0010hJ\u001a\u0010\u0006\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J\u001a\u0010\u0007\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\n2\u0006\u0010\t\u001a\u00020\bH\u0002J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\n2\u0006\u0010\t\u001a\u00020\bH\u0002J\u000e\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\bJ\u000e\u0010\u000f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\bJ\u0015\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\b0\nH\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\b0\nJ\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0016\u001a\u00020\u0014J\u0006\u0010\u0017\u001a\u00020\u0014J\u0006\u0010\u0018\u001a\u00020\u0014J\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00140\nJ\u000e\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001aJ\u0006\u0010\u001d\u001a\u00020\bJ\u0006\u0010\u001e\u001a\u00020\bJ\u0006\u0010 \u001a\u00020\u001fJ\u0006\u0010!\u001a\u00020\u001fJ\u000e\u0010#\u001a\u00020\"2\u0006\u0010\r\u001a\u00020\bJ\u0006\u0010$\u001a\u00020\u0005J\u0006\u0010%\u001a\u00020\u0005J\u0010\u0010&\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001aH\u0016J\u0018\u0010(\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001a2\b\b\u0002\u0010'\u001a\u00020\"J\u000e\u0010)\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001aJ\u0018\u0010.\u001a\u00020-2\u0006\u0010*\u001a\u00020\u00142\b\b\u0002\u0010,\u001a\u00020+J\u0006\u0010/\u001a\u00020\"J\u000e\u00101\u001a\u00020\u00052\u0006\u00100\u001a\u00020\"J\u000e\u00103\u001a\u00020\u00052\u0006\u00102\u001a\u00020\"J\u0006\u00104\u001a\u00020\u0005J\u000e\u00106\u001a\u00020\u00052\u0006\u00105\u001a\u00020\u001fJ\u0018\u00107\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u00108\u001a\u00020\"J\u0006\u00109\u001a\u00020\u0005J\u000e\u0010<\u001a\u00020\u00052\u0006\u0010;\u001a\u00020:J\u0016\u0010>\u001a\u00020\u00052\u0006\u0010=\u001a\u00020\b2\u0006\u0010;\u001a\u00020:J7\u0010D\u001a\u00020\u00052\u0006\u0010=\u001a\u00020\b2'\u0010C\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\b0\n¢\u0006\f\b@\u0012\b\bA\u0012\u0004\b\b(B\u0012\u0004\u0012\u00020\u00050?J\f\u0010E\u001a\b\u0012\u0004\u0012\u00020\u001a0\nR\u0017\u0010J\u001a\u00020F8\u0006¢\u0006\f\n\u0004\b\u000b\u0010G\u001a\u0004\bH\u0010IR\u0017\u0010P\u001a\u00020K8\u0006¢\u0006\f\n\u0004\bL\u0010M\u001a\u0004\bN\u0010OR\u0017\u0010U\u001a\u00020\u00018\u0006¢\u0006\f\n\u0004\bQ\u0010R\u001a\u0004\bS\u0010TR\"\u0010\\\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bV\u0010W\u001a\u0004\bX\u0010Y\"\u0004\bZ\u0010[R#\u0010b\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00140]8\u0006¢\u0006\f\n\u0004\b^\u0010_\u001a\u0004\b`\u0010aR!\u0010f\u001a\b\u0012\u0004\u0012\u00020\b0c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bd\u0010e\u001a\u0004\bL\u0010\u0011¨\u0006j"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", "Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;", "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", "closedTab", "prepareOpenTab", "", "b", "c", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "excludeEditorBundle", "", "e", "d", "editorBundle", "registerEditorBundle", "unregisterEditorBundle", "getImmutableEditorBundleList", "()Ljava/util/List;", "getEditorBundleList", "getPrimaryEditorBundleList", "Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;", "focusEditorViewHandler", "unfocusedEditorViewHandler", "getFirstEditorViewHandler", "getSecondEditorViewHandler", "getEditorViewHandlers", "", "id", "getEditorViewHandler", "focusEditorBundle", "unfocusedEditorBundle", "Landroid/view/View;", "focusEditorView", "unfocusedEditorView", "", "isFocusEditorBundle", "destroy", "saveDocument", "onDown", "activate", "updateFocusId", "getAnotherEditorViewHandler", "anotherEditorViewHandler", "Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;", "position", "Landroid/graphics/RectF;", "ensureEnableSpiltScreen", "isEnabledSplitScreen", "enabled", "setEnabledAnimationUpdateEditorView", "animating", "setAnimatingStartSplitScreen", "resizeCache", "goneView", "onExitSpitScreen", "onCloseTab", "isSameDocIdSplitScreen", "onCloseOtherTab", "", NotificationCompat.CATEGORY_EVENT, "postEvent", "currentEditorBundle", "postEventToAllAssociatedBundle", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "otherEditorBundles", "run", "postToAssociatedBundle", "getOpenDocIds", "Lcom/onyx/android/sdk/universal/editor/view/EditorViewFocusChangeListener;", "Lcom/onyx/android/sdk/universal/editor/view/EditorViewFocusChangeListener;", "getFocusChangeListener", "()Lcom/onyx/android/sdk/universal/editor/view/EditorViewFocusChangeListener;", "focusChangeListener", "Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;", "getSplitScreenListener", "()Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;", "splitScreenListener", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;", "getEditorViewDownListener", "()Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;", "editorViewDownListener", C6999h.f39688c, Constants.STRING_SIG, "getFocusId", "()Ljava/lang/String;", "setFocusId", "(Ljava/lang/String;)V", "focusId", "", "i", "Ljava/util/Map;", "getEditorViewHandlerMap", "()Ljava/util/Map;", "editorViewHandlerMap", "", "j", "Lkotlin/Lazy;", "editorBundleList", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/view/EditorViewFocusChangeListener;Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEditorBundleManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorBundleManager.kt\ncom/onyx/android/sdk/universal/editor/view/EditorBundleManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,298:1\n1549#2:299\n1620#2,3:300\n2634#2:303\n1549#2:305\n1620#2,3:306\n1855#2,2:309\n1855#2,2:311\n1855#2,2:313\n1855#2,2:315\n1855#2,2:317\n288#2,2:319\n288#2,2:321\n766#2:323\n857#2,2:324\n1855#2,2:326\n766#2:328\n857#2,2:329\n1855#2,2:331\n766#2:333\n857#2,2:334\n766#2:336\n857#2,2:337\n1#3:304\n*S KotlinDebug\n*F\n+ 1 EditorBundleManager.kt\ncom/onyx/android/sdk/universal/editor/view/EditorBundleManager\n*L\n96#1:299\n96#1:300,3\n97#1:303\n99#1:305\n99#1:306,3\n100#1:309,2\n106#1:311,2\n163#1:313,2\n169#1:315,2\n175#1:317,2\n183#1:319,2\n207#1:321,2\n236#1:323\n236#1:324,2\n237#1:326,2\n242#1:328\n242#1:329,2\n243#1:331,2\n255#1:333\n255#1:334,2\n260#1:336\n260#1:337,2\n97#1:304\n*E\n"})
/* loaded from: classes8.dex */
public final class EditorBundleManager implements EditorViewDownListener {

    @NotNull
    public static final String ID1 = "id1";

    @NotNull
    public static final String ID2 = "id2";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final EditorViewFocusChangeListener focusChangeListener;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final SplitScreenListener splitScreenListener;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final EditorViewDownListener editorViewDownListener;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public String focusId;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Map<String, EditorViewHandler> editorViewHandlerMap;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Lazy editorBundleList;

    public EditorBundleManager(@NotNull EditorViewFocusChangeListener focusChangeListener, @NotNull SplitScreenListener splitScreenListener, @NotNull EditorViewDownListener editorViewDownListener) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(focusChangeListener, "focusChangeListener");
        Intrinsics.checkNotNullParameter(splitScreenListener, "splitScreenListener");
        Intrinsics.checkNotNullParameter(editorViewDownListener, "editorViewDownListener");
        this.focusChangeListener = focusChangeListener;
        this.splitScreenListener = splitScreenListener;
        this.editorViewDownListener = editorViewDownListener;
        this.focusId = ID1;
        this.editorViewHandlerMap = new LinkedHashMap();
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<List<EditorBundle>>() { // from class: com.onyx.android.sdk.universal.editor.view.EditorBundleManager$editorBundleList$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final List<EditorBundle> invoke() {
                List<EditorBundle> mutableList;
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) EditorBundleManager.this.getPrimaryEditorBundleList());
                return mutableList;
            }
        });
        this.editorBundleList = lazy;
    }

    public static /* synthetic */ RectF ensureEnableSpiltScreen$default(EditorBundleManager editorBundleManager, EditorViewHandler editorViewHandler, SplitScreenPosition splitScreenPosition, int i, Object obj) {
        if ((i & 2) != 0) {
            splitScreenPosition = SplitScreenPosition.AUTO;
        }
        return editorBundleManager.ensureEnableSpiltScreen(editorViewHandler, splitScreenPosition);
    }

    /* renamed from: g */
    public static final EditorViewHandler m41495g(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (EditorViewHandler) tmp0.invoke(obj);
    }

    public static /* synthetic */ void updateFocusId$default(EditorBundleManager editorBundleManager, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        editorBundleManager.updateFocusId(str, z);
    }

    /* renamed from: b */
    public final void m41496b(NoteTabData closedTab, NoteTabData prepareOpenTab) {
        EditorBundle focusEditorBundle = focusEditorBundle();
        if (Intrinsics.areEqual(closedTab != null ? closedTab.getUniqueId() : null, EditorBundleKt.docId(focusEditorBundle))) {
            EditorBundleKt.postEvent(focusEditorBundle, new StartActivateDocumentEvent(prepareOpenTab.getUniqueId(), null, false, null, false, 30, null));
        }
    }

    /* renamed from: c */
    public final void m41497c(NoteTabData closedTab, NoteTabData prepareOpenTab) {
        String uniqueId;
        Object obj;
        if (closedTab == null || (uniqueId = closedTab.getUniqueId()) == null) {
            return;
        }
        Iterator<T> it2 = this.editorViewHandlerMap.values().iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it2.next();
                if (Intrinsics.areEqual(EditorBundleKt.docId(((EditorViewHandler) obj).getEditorBundle()), uniqueId)) {
                    break;
                }
            }
        }
        EditorViewHandler editorViewHandler = (EditorViewHandler) obj;
        if (editorViewHandler == null) {
            return;
        }
        boolean isSameDocIdSplitScreen = isSameDocIdSplitScreen();
        this.splitScreenListener.exitSplitScreen(editorViewHandler.getEditorView());
        if (isSameDocIdSplitScreen) {
            EditorBundleKt.postEvent(getAnotherEditorViewHandler(editorViewHandler.getId()).getEditorBundle(), new StartActivateDocumentEvent(prepareOpenTab.getUniqueId(), null, false, null, false, 30, null));
        }
    }

    /* renamed from: d */
    public final List<EditorBundle> m41498d(EditorBundle excludeEditorBundle) {
        List<EditorBundle> m41500f = m41500f();
        ArrayList arrayList = new ArrayList();
        for (Object obj : m41500f) {
            if (excludeEditorBundle != ((EditorBundle) obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final void destroy() {
        int collectionSizeOrDefault;
        List mutableList;
        int collectionSizeOrDefault2;
        Set<Map.Entry<String, EditorViewHandler>> entrySet = this.editorViewHandlerMap.entrySet();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(entrySet, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = entrySet.iterator();
        while (it2.hasNext()) {
            arrayList.add((EditorViewHandler) ((Map.Entry) it2.next()).getValue());
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            ((EditorViewHandler) it3.next()).destroy();
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getImmutableEditorBundleList());
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator it4 = arrayList.iterator();
        while (it4.hasNext()) {
            arrayList2.add(((EditorViewHandler) it4.next()).getEditorBundle());
        }
        mutableList.removeAll(arrayList2);
        Iterator it5 = mutableList.iterator();
        while (it5.hasNext()) {
            EditorBundleKt.postEvent((EditorBundle) it5.next(), new SaveDocumentEvent(true));
        }
    }

    /* renamed from: e */
    public final List<EditorBundle> m41499e(EditorBundle excludeEditorBundle) {
        List<EditorBundle> m41498d = m41498d(excludeEditorBundle);
        ArrayList arrayList = new ArrayList();
        for (Object obj : m41498d) {
            if (Intrinsics.areEqual(EditorBundleKt.docId((EditorBundle) obj), EditorBundleKt.docId(excludeEditorBundle))) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @NotNull
    public final RectF ensureEnableSpiltScreen(@NotNull EditorViewHandler anotherEditorViewHandler, @NotNull SplitScreenPosition position) {
        Intrinsics.checkNotNullParameter(anotherEditorViewHandler, "anotherEditorViewHandler");
        Intrinsics.checkNotNullParameter(position, "position");
        if (isEnabledSplitScreen()) {
            return this.splitScreenListener.getSplitScreenSize(position);
        }
        AppConfig.INSTANCE.setEnabledPageColumn(false);
        resizeCache();
        EditorViewHandler anotherEditorViewHandler2 = getAnotherEditorViewHandler(anotherEditorViewHandler.getId());
        EditorBundleKt.setAnimatingStartSplitScreen(anotherEditorViewHandler.getEditorBundle(), true);
        EditorBundleKt.postEvent(anotherEditorViewHandler2.getEditorBundle(), new BeforeStartSplitScreenEvent());
        this.splitScreenListener.splitScreen(anotherEditorViewHandler.getEditorView(), position);
        return this.splitScreenListener.getSplitScreenSize(position);
    }

    /* renamed from: f */
    public final List<EditorBundle> m41500f() {
        return (List) this.editorBundleList.getValue();
    }

    @NotNull
    public final EditorBundle focusEditorBundle() {
        return focusEditorViewHandler().getEditorBundle();
    }

    @NotNull
    public final View focusEditorView() {
        return focusEditorViewHandler().getEditorView();
    }

    @NotNull
    public final EditorViewHandler focusEditorViewHandler() {
        return getEditorViewHandler(this.focusId);
    }

    @NotNull
    public final EditorViewHandler getAnotherEditorViewHandler(@NotNull String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return Intrinsics.areEqual(id, ID1) ? getSecondEditorViewHandler() : getFirstEditorViewHandler();
    }

    @NotNull
    public final EditorViewDownListener getEditorViewDownListener() {
        return this.editorViewDownListener;
    }

    @NotNull
    public final EditorViewHandler getEditorViewHandler(@NotNull final String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        Map<String, EditorViewHandler> map = this.editorViewHandlerMap;
        final Function1<String, EditorViewHandler> function1 = new Function1<String, EditorViewHandler>() { // from class: com.onyx.android.sdk.universal.editor.view.EditorBundleManager$getEditorViewHandler$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final EditorViewHandler invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new EditorViewHandler(id, this, EditorBundle.INSTANCE.createInstance(), this);
            }
        };
        EditorViewHandler computeIfAbsent = map.computeIfAbsent(id, new Function() { // from class: com.sunia.HTREnginev2.gmf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                EditorViewHandler m41495g;
                m41495g = EditorBundleManager.m41495g(Function1.this, obj);
                return m41495g;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final Map<String, EditorViewHandler> getEditorViewHandlerMap() {
        return this.editorViewHandlerMap;
    }

    @NotNull
    public final List<EditorViewHandler> getEditorViewHandlers() {
        List<EditorViewHandler> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new EditorViewHandler[]{getFirstEditorViewHandler(), getSecondEditorViewHandler()});
        return listOf;
    }

    @NotNull
    public final EditorViewHandler getFirstEditorViewHandler() {
        return getEditorViewHandler(ID1);
    }

    @NotNull
    public final EditorViewFocusChangeListener getFocusChangeListener() {
        return this.focusChangeListener;
    }

    @NotNull
    public final String getFocusId() {
        return this.focusId;
    }

    @JvmName(name = "getImmutableEditorBundleList")
    @NotNull
    public final List<EditorBundle> getImmutableEditorBundleList() {
        return m41500f();
    }

    @NotNull
    public final List<String> getOpenDocIds() {
        ArrayList arrayList = new ArrayList();
        CollectionKt.safeAdd(arrayList, EditorBundleKt.docId(focusEditorBundle()));
        EditorBundle unfocusedEditorBundle = unfocusedEditorBundle();
        if (EditorBundleKt.isDocumentOpen(unfocusedEditorBundle)) {
            CollectionKt.safeAdd(arrayList, EditorBundleKt.docId(unfocusedEditorBundle));
        }
        return arrayList;
    }

    @NotNull
    public final List<EditorBundle> getPrimaryEditorBundleList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(getFirstEditorViewHandler().getEditorBundle());
        arrayList.add(getSecondEditorViewHandler().getEditorBundle());
        return arrayList;
    }

    @NotNull
    public final EditorViewHandler getSecondEditorViewHandler() {
        return getEditorViewHandler(ID2);
    }

    @NotNull
    public final SplitScreenListener getSplitScreenListener() {
        return this.splitScreenListener;
    }

    public final boolean isEnabledSplitScreen() {
        return this.splitScreenListener.isEnabledSplitScreen();
    }

    public final boolean isFocusEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        return Intrinsics.areEqual(focusEditorBundle(), editorBundle);
    }

    public final boolean isSameDocIdSplitScreen() {
        if (isEnabledSplitScreen()) {
            return Intrinsics.areEqual(EditorBundleKt.docId(getFirstEditorViewHandler().getEditorBundle()), EditorBundleKt.docId(getSecondEditorViewHandler().getEditorBundle()));
        }
        return false;
    }

    public final void onCloseOtherTab() {
        if (isEnabledSplitScreen() && !isSameDocIdSplitScreen()) {
            this.splitScreenListener.exitSplitScreen(getAnotherEditorViewHandler(this.focusId).getEditorView());
        }
    }

    public final void onCloseTab(@Nullable NoteTabData closedTab, @NotNull NoteTabData prepareOpenTab) {
        Intrinsics.checkNotNullParameter(prepareOpenTab, "prepareOpenTab");
        if (isEnabledSplitScreen()) {
            m41497c(closedTab, prepareOpenTab);
        } else {
            m41496b(closedTab, prepareOpenTab);
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.view.EditorViewDownListener
    public void onDown(@NotNull String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        updateFocusId$default(this, id, false, 2, null);
        this.editorViewDownListener.onDown(EditorBundleKt.docId(focusEditorBundle()));
    }

    public final void onExitSpitScreen(@NotNull View goneView) {
        Object obj;
        Intrinsics.checkNotNullParameter(goneView, "goneView");
        AppConfig.INSTANCE.setEnabledPageColumn(true);
        resizeCache();
        Iterator<T> it2 = this.editorViewHandlerMap.values().iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it2.next();
                if (Intrinsics.areEqual(((EditorViewHandler) obj).getEditorView(), goneView)) {
                    break;
                }
            }
        }
        EditorViewHandler editorViewHandler = (EditorViewHandler) obj;
        if (editorViewHandler == null) {
            return;
        }
        editorViewHandler.closeDocumentAfterExitSplitScreen();
        EditorViewHandler anotherEditorViewHandler = getAnotherEditorViewHandler(editorViewHandler.getId());
        updateFocusId(anotherEditorViewHandler.getId(), false);
        EditorBundleKt.postEvent(anotherEditorViewHandler.getEditorBundle(), new BeforeExitSplitScreenEvent());
    }

    public final void postEvent(@NotNull Object event) {
        Intrinsics.checkNotNullParameter(event, "event");
        List<EditorBundle> immutableEditorBundleList = getImmutableEditorBundleList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : immutableEditorBundleList) {
            if (isEnabledSplitScreen() || ((EditorBundle) obj) != unfocusedEditorBundle()) {
                arrayList.add(obj);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            EditorBundleKt.postEvent((EditorBundle) it2.next(), event);
        }
    }

    public final void postEventToAllAssociatedBundle(@NotNull EditorBundle currentEditorBundle, @NotNull Object event) {
        Intrinsics.checkNotNullParameter(currentEditorBundle, "currentEditorBundle");
        Intrinsics.checkNotNullParameter(event, "event");
        List<EditorBundle> m41500f = m41500f();
        ArrayList arrayList = new ArrayList();
        for (Object obj : m41500f) {
            if (Intrinsics.areEqual(EditorBundleKt.docId((EditorBundle) obj), EditorBundleKt.docId(currentEditorBundle))) {
                arrayList.add(obj);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            EditorBundleKt.postEvent((EditorBundle) it2.next(), event);
        }
    }

    public final void postToAssociatedBundle(@NotNull EditorBundle currentEditorBundle, @NotNull Function1<? super List<EditorBundle>, Unit> run) {
        Intrinsics.checkNotNullParameter(currentEditorBundle, "currentEditorBundle");
        Intrinsics.checkNotNullParameter(run, "run");
        run.invoke(m41499e(currentEditorBundle));
    }

    public final void registerEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        CollectionKt.addIfNotContains(m41500f(), editorBundle);
    }

    public final void resizeCache() {
        Iterator<T> it2 = this.editorViewHandlerMap.entrySet().iterator();
        while (it2.hasNext()) {
            RenderManager.resizeCache$default(EditorBundleKt.renderManager(((EditorViewHandler) ((Map.Entry) it2.next()).getValue()).getEditorBundle()), null, 1, null);
        }
    }

    public final void saveDocument() {
        Iterator<T> it2 = this.editorViewHandlerMap.entrySet().iterator();
        while (it2.hasNext()) {
            ((EditorViewHandler) ((Map.Entry) it2.next()).getValue()).saveDocument(false);
        }
    }

    public final void setAnimatingStartSplitScreen(boolean animating) {
        Iterator<T> it2 = this.editorViewHandlerMap.entrySet().iterator();
        while (it2.hasNext()) {
            EditorBundleKt.setAnimatingStartSplitScreen(((EditorViewHandler) ((Map.Entry) it2.next()).getValue()).getEditorBundle(), animating);
        }
    }

    public final void setEnabledAnimationUpdateEditorView(boolean enabled) {
        Iterator<T> it2 = this.editorViewHandlerMap.entrySet().iterator();
        while (it2.hasNext()) {
            EditorBundleKt.setEnabledAnimationUpdateEditorView(((EditorViewHandler) ((Map.Entry) it2.next()).getValue()).getEditorBundle(), enabled);
        }
    }

    public final void setFocusId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.focusId = str;
    }

    @NotNull
    public final EditorBundle unfocusedEditorBundle() {
        return unfocusedEditorViewHandler().getEditorBundle();
    }

    @NotNull
    public final View unfocusedEditorView() {
        return unfocusedEditorViewHandler().getEditorView();
    }

    @NotNull
    public final EditorViewHandler unfocusedEditorViewHandler() {
        String str = this.focusId;
        String str2 = ID1;
        if (Intrinsics.areEqual(str, ID1)) {
            str2 = ID2;
        }
        return getEditorViewHandler(str2);
    }

    public final void unregisterEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        m41500f().remove(editorBundle);
    }

    public final void updateFocusId(@NotNull String id, boolean activate) {
        Intrinsics.checkNotNullParameter(id, "id");
        if (Intrinsics.areEqual(this.focusId, id)) {
            if (activate) {
                return;
            }
            focusEditorView().setActivated(false);
            return;
        }
        EditorBundle focusEditorBundle = focusEditorBundle();
        focusEditorView().setActivated(false);
        this.focusId = id;
        Debug.INSTANCE.m32035d(EditorBundleManager.class, "focus bundle changed, id = " + id, new Object[0]);
        this.focusChangeListener.onEditorFocusChanged(focusEditorBundle, focusEditorBundle());
        if (activate) {
            focusEditorView().setActivated(true);
        }
    }
}
