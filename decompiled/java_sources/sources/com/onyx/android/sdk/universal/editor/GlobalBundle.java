package com.onyx.android.sdk.universal.editor;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.ClipboardUtils;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.base.scheduler.SchedulerManager;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTagBean;
import com.onyx.android.sdk.universal.editor.action.common.UpdateClipboardDataAction;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.onyx.android.sdk.universal.editor.data.ClonePageInfo;
import com.onyx.android.sdk.universal.editor.data.GlobalCopyData;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001GB\t\b\u0002¢\u0006\u0004\bE\u0010FJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0002J\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0001J\u000e\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0001J\u000e\u0010\f\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0001J\u000e\u0010\r\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0001J\u0006\u0010\u000e\u001a\u00020\u0006J\u0006\u0010\u000f\u001a\u00020\u0006J\u0014\u0010\u0013\u001a\u00020\u00062\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010J\u0014\u0010\u0014\u001a\u00020\u00062\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010J\u000e\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0015J\u000e\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0018J\u0006\u0010\u001b\u001a\u00020\u0006J\u0006\u0010\u001c\u001a\u00020\u0006J\u000e\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001dR\u001b\u0010%\u001a\u00020 8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u001b\u0010*\u001a\u00020&8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b'\u0010\"\u001a\u0004\b(\u0010)R\"\u00102\u001a\u00020+8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\"\u0010:\u001a\u0002038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u0017\u0010@\u001a\u00020;8\u0006¢\u0006\f\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?R\u001b\u0010D\u001a\u00020A8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bB\u0010\"\u001a\u0004\b!\u0010C¨\u0006H"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/GlobalBundle;", "", "", "hasCopyData", "hasClipData", "hasPasteData", "", "clearClipData", NotificationCompat.CATEGORY_EVENT, "postEvent", "subscriber", "isRegistered", "register", "unregister", "registerClipChangedListener", "unregisterClipChangedListener", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "copyShapes", "copyShapesDirectly", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", "linkBean", "copyShapeLink", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;", "data", "copyShapeTag", "updateClipDataIfChanges", "updateClipData", "", EditorConstants.ARGS_DOC_ID, "isCanPastePage", "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "a", "Lkotlin/Lazy;", "getSingleIO", "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "singleIO", "Lorg/greenrobot/eventbus/EventBus;", "b", "getEventBus", "()Lorg/greenrobot/eventbus/EventBus;", "eventBus", "Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;", "c", "Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;", "getCopyData", "()Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;", "setCopyData", "(Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;)V", "copyData", "Lcom/onyx/android/sdk/universal/editor/data/ClonePageInfo;", "d", "Lcom/onyx/android/sdk/universal/editor/data/ClonePageInfo;", "getClonePageInfo", "()Lcom/onyx/android/sdk/universal/editor/data/ClonePageInfo;", "setClonePageInfo", "(Lcom/onyx/android/sdk/universal/editor/data/ClonePageInfo;)V", "clonePageInfo", "Lcom/onyx/android/sdk/universal/editor/GlobalBundle$GlobalStates;", "e", "Lcom/onyx/android/sdk/universal/editor/GlobalBundle$GlobalStates;", "getUiStates", "()Lcom/onyx/android/sdk/universal/editor/GlobalBundle$GlobalStates;", "uiStates", "Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;", C6997f.f39671c, "()Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;", "clipChangedListener", Constants.CONSTRUCTOR_NAME, "()V", "GlobalStates", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nGlobalBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalBundle.kt\ncom/onyx/android/sdk/universal/editor/GlobalBundle\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,138:1\n1549#2:139\n1620#2,3:140\n*S KotlinDebug\n*F\n+ 1 GlobalBundle.kt\ncom/onyx/android/sdk/universal/editor/GlobalBundle\n*L\n103#1:139\n103#1:140,3\n*E\n"})
/* loaded from: classes8.dex */
public final class GlobalBundle {

    @NotNull
    public static final GlobalBundle INSTANCE = new GlobalBundle();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Lazy singleIO;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final Lazy eventBus;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static GlobalCopyData copyData;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static ClonePageInfo clonePageInfo;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static final GlobalStates uiStates;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public static final Lazy clipChangedListener;

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nR\"\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/GlobalBundle$GlobalStates;", "", "", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "isScreenCapturing", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setScreenCapturing", "(Z)V", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class GlobalStates {

        /* renamed from: a, reason: from kotlin metadata */
        public boolean isScreenCapturing;

        /* renamed from: isScreenCapturing, reason: from getter */
        public final boolean getIsScreenCapturing() {
            return this.isScreenCapturing;
        }

        public final void setScreenCapturing(boolean z) {
            this.isScreenCapturing = z;
        }
    }

    static {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<RxScheduler>() { // from class: com.onyx.android.sdk.universal.editor.GlobalBundle$singleIO$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RxScheduler invoke() {
                return RxScheduler.Companion.newSingleThreadManager$default(RxScheduler.INSTANCE, SchedulerManager.f40832IO, 0L, 2, null);
            }
        });
        singleIO = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<EventBus>() { // from class: com.onyx.android.sdk.universal.editor.GlobalBundle$eventBus$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final EventBus invoke() {
                return new EventBus();
            }
        });
        eventBus = lazy2;
        copyData = new GlobalCopyData();
        clonePageInfo = new ClonePageInfo();
        uiStates = new GlobalStates();
        lazy3 = LazyKt__LazyJVMKt.lazy(GlobalBundle$clipChangedListener$2.INSTANCE);
        clipChangedListener = lazy3;
    }

    /* renamed from: a */
    public final ClipboardManager.OnPrimaryClipChangedListener m36688a() {
        return (ClipboardManager.OnPrimaryClipChangedListener) clipChangedListener.getValue();
    }

    public final void clearClipData() {
        if (hasCopyData()) {
            copyData.clearClipData();
        }
        ContextKt.clearClipboard(ResManager.INSTANCE.getAppContext());
    }

    public final void copyShapeLink(@NotNull ShapeLinkBean linkBean) {
        Intrinsics.checkNotNullParameter(linkBean, "linkBean");
        updateClipDataIfChanges();
        copyData.updateCopyData(GlobalCopyData.INSTANCE.copyShapeLink(linkBean));
    }

    public final void copyShapeTag(@NotNull ShapeTagBean data) {
        Intrinsics.checkNotNullParameter(data, "data");
        updateClipDataIfChanges();
        copyData.updateCopyData(GlobalCopyData.INSTANCE.copyShapeTag(data));
    }

    public final void copyShapes(@NotNull List<? extends Shape> shapes) {
        int collectionSizeOrDefault;
        List<? extends Shape> distinct;
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        updateClipDataIfChanges();
        List<? extends Shape> list = shapes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(ShapeTypes.INSTANCE.getTargetShape((Shape) it2.next()));
        }
        distinct = CollectionsKt___CollectionsKt.distinct(arrayList);
        copyData.updateCopyData(GlobalCopyData.INSTANCE.copyShapes(distinct));
    }

    public final void copyShapesDirectly(@NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        updateClipDataIfChanges();
        copyData.updateCopyData(GlobalCopyData.INSTANCE.copy(GlobalCopyData.Type.Shapes, shapes));
    }

    @NotNull
    public final ClonePageInfo getClonePageInfo() {
        return clonePageInfo;
    }

    @NotNull
    public final GlobalCopyData getCopyData() {
        return copyData;
    }

    @NotNull
    public final EventBus getEventBus() {
        return (EventBus) eventBus.getValue();
    }

    @NotNull
    public final RxScheduler getSingleIO() {
        return (RxScheduler) singleIO.getValue();
    }

    @NotNull
    public final GlobalStates getUiStates() {
        return uiStates;
    }

    public final boolean hasClipData() {
        if (copyData.getClipData() == null) {
            return false;
        }
        Context appContext = ResManager.INSTANCE.getAppContext();
        return (ContextKt.getClipLinkData(appContext) == null && ContextKt.getClipImageData(appContext) == null && !StringKt.isNotBlank(ContextKt.getClipTextData(appContext))) ? false : true;
    }

    public final boolean hasCopyData() {
        return copyData.getData() != null;
    }

    public final boolean hasPasteData() {
        updateClipDataIfChanges();
        return hasCopyData() || hasClipData();
    }

    public final boolean isCanPastePage(@NotNull String docId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        return Intrinsics.areEqual(clonePageInfo.getDocId(), docId);
    }

    public final boolean isRegistered(@NotNull Object subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        return getEventBus().isRegistered(subscriber);
    }

    public final void postEvent(@NotNull Object event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getEventBus().post(event);
    }

    public final void register(@NotNull Object subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        EventBusHolderKt.ensureRegister(getEventBus(), subscriber);
    }

    public final void registerClipChangedListener() {
        ClipboardUtils.addChangedListener(m36688a());
    }

    public final void setClonePageInfo(@NotNull ClonePageInfo clonePageInfo2) {
        Intrinsics.checkNotNullParameter(clonePageInfo2, "<set-?>");
        clonePageInfo = clonePageInfo2;
    }

    public final void setCopyData(@NotNull GlobalCopyData globalCopyData) {
        Intrinsics.checkNotNullParameter(globalCopyData, "<set-?>");
        copyData = globalCopyData;
    }

    public final void unregister(@NotNull Object subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        EventBusHolderKt.ensureUnRegister(getEventBus(), subscriber);
    }

    public final void unregisterClipChangedListener() {
        ClipboardUtils.removeChangedListener(m36688a());
    }

    public final void updateClipData() {
        RxBaseAction.execute$default(new UpdateClipboardDataAction(), null, null, null, 7, null);
    }

    public final void updateClipDataIfChanges() {
        ClipData primaryClip = ContextKt.getClipboardManager(ResManager.INSTANCE.getAppContext()).getPrimaryClip();
        if (Intrinsics.areEqual(String.valueOf(copyData.getClipData()), String.valueOf(primaryClip))) {
            return;
        }
        copyData.updateClipData(primaryClip);
    }
}
