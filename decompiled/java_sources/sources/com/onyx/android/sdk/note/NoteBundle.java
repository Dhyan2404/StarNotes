package com.onyx.android.sdk.note;

import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.bundle.DBProviderBundle;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.genericshape.GeoLayoutShaderWrapper;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.command.CommandManager;
import com.onyx.android.sdk.note.common.data.NoteDrawingArgs;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.data.shape.ShapeBean;
import com.onyx.android.sdk.note.common.data.shape.ShapeShaderManager;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.common.event.StashEditTextShapeEvent;
import com.onyx.android.sdk.note.common.event.StashShapeEvent;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.ShapeConvertUtils;
import com.onyx.android.sdk.note.common.utils.ShapeCopyUtils;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.replicator.note.p035db.model.ResourceModel;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010Y\u001a\u00020X¢\u0006\u0004\bZ\u0010[J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0016\u0010\b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0006\u0010\t\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u0007J\u000e\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0001J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\u0002J\u000e\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0005J\u0014\u0010\u0013\u001a\u00020\u00072\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0014\u0010\u0015\u001a\u00020\u00072\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0014\u0010\u0016\u001a\u00020\u00072\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0014\u0010\u0017\u001a\u00020\u00072\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u000e\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u0018J\u0010\u0010\u001b\u001a\u00020\u00072\b\u0010\u0012\u001a\u0004\u0018\u00010\u0005J\u0016\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u0005J&\u0010#\u001a\u0004\u0018\u00010\u000f2\b\u0010 \u001a\u0004\u0018\u00010\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\"\u001a\u0004\u0018\u00010!R$\u0010*\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\"\u00101\u001a\u00020+8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R(\u00109\u001a\b\u0012\u0004\u0012\u00020\u000f028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u0017\u0010?\u001a\u00020:8\u0006¢\u0006\f\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>R\u0017\u0010E\u001a\u00020@8\u0006¢\u0006\f\n\u0004\bA\u0010B\u001a\u0004\bC\u0010DR\"\u0010M\u001a\u00020F8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bG\u0010H\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR$\u0010T\u001a\u00020N2\u0006\u0010O\u001a\u00020N8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bP\u0010Q\"\u0004\bR\u0010SR\u0011\u0010W\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\bU\u0010V¨\u0006\\"}, m61528d2 = {"Lcom/onyx/android/sdk/note/NoteBundle;", "", "", "a", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "list", "", "b", "init", "destroy", NotificationCompat.CATEGORY_EVENT, "postEvent", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "audioInfoBean", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;", "findShapeBean", "shapeUniqueId", "shape", "postAddShapeEvent", "shapes", "postRemoveShapeEvent", "postShapeAddChangedEvent", "postShapeRemoveChangedEvent", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "changedShapeBean", "postShapeChangedEvent", "postStashChangeShapeEvent", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "textShape", "postStashEditTextShapeEvent", "audioShape", "Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;", "resourceModel", "addAudioShapeBean", "Lorg/greenrobot/eventbus/EventBus;", "Lorg/greenrobot/eventbus/EventBus;", "getEventBus", "()Lorg/greenrobot/eventbus/EventBus;", "setEventBus", "(Lorg/greenrobot/eventbus/EventBus;)V", "eventBus", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;", "getNoteDoc", "()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;", "setNoteDoc", "(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)V", "noteDoc", "", "c", "Ljava/util/List;", "getAudioShapeBeanList", "()Ljava/util/List;", "setAudioShapeBeanList", "(Ljava/util/List;)V", "audioShapeBeanList", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;", "d", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;", "getShapeShaderManager", "()Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;", "shapeShaderManager", "Lcom/onyx/android/sdk/note/common/command/CommandManager;", "e", "Lcom/onyx/android/sdk/note/common/command/CommandManager;", "getCommandManager", "()Lcom/onyx/android/sdk/note/common/command/CommandManager;", "commandManager", "Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;", C6997f.f39671c, "Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;", "getGeoLayoutShaderWrapper", "()Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;", "setGeoLayoutShaderWrapper", "(Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;)V", "geoLayoutShaderWrapper", "Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;", "value", "getNoteDrawingArgs", "()Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;", "setNoteDrawingArgs", "(Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;)V", "noteDrawingArgs", "getDocumentId", "()Ljava/lang/String;", "documentId", "Lcom/onyx/android/sdk/bundle/DBProviderBundle;", "dbProviderBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/bundle/DBProviderBundle;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteBundle.kt\ncom/onyx/android/sdk/note/NoteBundle\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,181:1\n1#2:182\n1#2:184\n2634#3:183\n*S KotlinDebug\n*F\n+ 1 NoteBundle.kt\ncom/onyx/android/sdk/note/NoteBundle\n*L\n138#1:184\n138#1:183\n*E\n"})
/* loaded from: classes8.dex */
public final class NoteBundle {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public EventBus eventBus;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public NoteDocument noteDoc;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public List<ShapeBean> audioShapeBeanList;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final ShapeShaderManager shapeShaderManager;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final CommandManager commandManager;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public GeoLayoutShaderWrapper geoLayoutShaderWrapper;

    public NoteBundle(@NotNull DBProviderBundle dbProviderBundle) {
        Intrinsics.checkNotNullParameter(dbProviderBundle, "dbProviderBundle");
        this.noteDoc = new NoteDocument(dbProviderBundle);
        this.audioShapeBeanList = new ArrayList();
        this.shapeShaderManager = new ShapeShaderManager();
        this.commandManager = new CommandManager();
        this.geoLayoutShaderWrapper = new GeoLayoutShaderWrapper(null);
    }

    /* renamed from: a */
    public final String m33592a() {
        String userId = this.noteDoc.getNoteDocBean().getUserId();
        return userId.length() == 0 ? AccountDataBundle.INSTANCE.getSyncUserId() : userId;
    }

    @Nullable
    public final ShapeBean addAudioShapeBean(@Nullable final Shape audioShape, @Nullable AudioInfoBean audioInfoBean, @Nullable ResourceModel resourceModel) {
        Object obj = null;
        if (audioShape == null || resourceModel == null) {
            return null;
        }
        Iterator<T> it2 = this.audioShapeBeanList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            AudioInfoBean audioInfoBean2 = ((ShapeBean) next).getAudioInfoBean();
            if (Intrinsics.areEqual(audioInfoBean2 != null ? audioInfoBean2.getAudioPath() : null, audioInfoBean != null ? audioInfoBean.getAudioPath() : null)) {
                obj = next;
                break;
            }
        }
        ShapeBean shapeBean = (ShapeBean) AnyKt.getOrElse(obj, (Function0<? extends Object>) new Function0<ShapeBean>() { // from class: com.onyx.android.sdk.note.NoteBundle$addAudioShapeBean$shapeBean$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ShapeBean invoke() {
                ShapeBean shapeBean2 = new ShapeBean();
                Shape shape = Shape.this;
                shapeBean2.m72308setShape(shape);
                shapeBean2.m72309setShapeModel(ShapeConvertUtils.INSTANCE.modelFromShape(shape));
                shapeBean2.m72306setLayerId(shape.getLayerId());
                return shapeBean2;
            }
        });
        shapeBean.setAudioInfoBean(audioInfoBean);
        shapeBean.m72307setResourceModel(resourceModel);
        CollectionKt.addIfNotContains(this.audioShapeBeanList, shapeBean);
        return shapeBean;
    }

    /* renamed from: b */
    public final void m33593b(List<? extends Shape> list) {
        if (list.isEmpty()) {
            return;
        }
        postStashChangeShapeEvent(ChangedShapeBean.INSTANCE.addShapesToChangedShapeBean(list));
    }

    public final void destroy() {
        this.audioShapeBeanList.clear();
        this.shapeShaderManager.clear();
        this.commandManager.reset();
        this.geoLayoutShaderWrapper.clearCache();
    }

    @Nullable
    public final ShapeBean findShapeBean(@Nullable AudioInfoBean audioInfoBean) {
        Object obj;
        boolean z;
        Iterator<T> it2 = this.audioShapeBeanList.iterator();
        while (true) {
            obj = null;
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            AudioInfoBean audioInfoBean2 = ((ShapeBean) next).getAudioInfoBean();
            if (audioInfoBean2 != null) {
                z = audioInfoBean2.isFileNameEqual(audioInfoBean != null ? audioInfoBean.getAudioPath() : null);
            } else {
                z = false;
            }
            if (z) {
                obj = next;
                break;
            }
        }
        return (ShapeBean) obj;
    }

    @NotNull
    public final List<ShapeBean> getAudioShapeBeanList() {
        return this.audioShapeBeanList;
    }

    @NotNull
    public final CommandManager getCommandManager() {
        return this.commandManager;
    }

    @NotNull
    public final String getDocumentId() {
        return this.noteDoc.getDocumentUniqueId();
    }

    @Nullable
    public final EventBus getEventBus() {
        return this.eventBus;
    }

    @NotNull
    public final GeoLayoutShaderWrapper getGeoLayoutShaderWrapper() {
        return this.geoLayoutShaderWrapper;
    }

    @NotNull
    public final NoteDocument getNoteDoc() {
        return this.noteDoc;
    }

    @NotNull
    public final NoteDrawingArgs getNoteDrawingArgs() {
        return this.noteDoc.getNoteDrawingArgs();
    }

    @NotNull
    public final ShapeShaderManager getShapeShaderManager() {
        return this.shapeShaderManager;
    }

    public final void init() {
        this.commandManager.setEventBus(this.eventBus);
        this.noteDoc.setEventBus(this.eventBus);
    }

    public final void postAddShapeEvent(@NotNull Shape shape) {
        List<? extends Shape> mutableListOf;
        Intrinsics.checkNotNullParameter(shape, "shape");
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(shape);
        postAddShapeEvent(mutableListOf);
    }

    public final void postEvent(@NotNull Object event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EventBus eventBus = this.eventBus;
        if (eventBus != null) {
            EventBusHolderKt.safelyPostEvent(eventBus, event);
        }
    }

    public final void postRemoveShapeEvent(@NotNull List<? extends Shape> shapes) {
        List<Shape> mutableList;
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        if (shapes.isEmpty()) {
            return;
        }
        ChangedShapeBean changedShapeBean = new ChangedShapeBean();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) shapes);
        ChangedShapeBean removeShapeList = changedShapeBean.setRemoveShapeList(mutableList);
        postShapeChangedEvent(removeShapeList);
        postStashChangeShapeEvent(removeShapeList);
    }

    public final void postShapeAddChangedEvent(@NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        if (shapes.isEmpty()) {
            return;
        }
        postShapeChangedEvent(ChangedShapeBean.INSTANCE.addShapesToChangedShapeBean(shapes));
    }

    public final void postShapeChangedEvent(@NotNull ChangedShapeBean changedShapeBean) {
        Intrinsics.checkNotNullParameter(changedShapeBean, "changedShapeBean");
        if (changedShapeBean.isEmpty()) {
            return;
        }
        postEvent(changedShapeBean);
    }

    public final void postShapeRemoveChangedEvent(@NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        if (shapes.isEmpty()) {
            return;
        }
        postShapeChangedEvent(ChangedShapeBean.INSTANCE.addRemovedShapesToChangedShapeBean(shapes));
    }

    public final void postStashChangeShapeEvent(@NotNull ChangedShapeBean changedShapeBean) {
        Intrinsics.checkNotNullParameter(changedShapeBean, "changedShapeBean");
        if (changedShapeBean.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ShapeCopyUtils shapeCopyUtils = ShapeCopyUtils.INSTANCE;
        arrayList.addAll(shapeCopyUtils.deepCopyList(changedShapeBean.getAddShapeList()));
        List<Shape> deepCopyListWithoutPoints = shapeCopyUtils.deepCopyListWithoutPoints(changedShapeBean.getRemoveShapeList());
        Iterator<T> it2 = deepCopyListWithoutPoints.iterator();
        while (it2.hasNext()) {
            ((Shape) it2.next()).setStatus(1);
        }
        arrayList.addAll(deepCopyListWithoutPoints);
        EventBus eventBus = this.eventBus;
        if (eventBus != null) {
            EventBusHolderKt.safelyPostEvent(eventBus, new StashShapeEvent(arrayList));
        }
    }

    public final void postStashEditTextShapeEvent(@NotNull BoxInfo virtualBoxInfo, @NotNull Shape textShape) {
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(textShape, "textShape");
        EventBus eventBus = this.eventBus;
        if (eventBus != null) {
            EventBusHolderKt.safelyPostEvent(eventBus, new StashEditTextShapeEvent(virtualBoxInfo.copy(), ShapeCopyUtils.INSTANCE.deepCopy(textShape)));
        }
    }

    public final void setAudioShapeBeanList(@NotNull List<ShapeBean> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.audioShapeBeanList = list;
    }

    public final void setEventBus(@Nullable EventBus eventBus) {
        this.eventBus = eventBus;
    }

    public final void setGeoLayoutShaderWrapper(@NotNull GeoLayoutShaderWrapper geoLayoutShaderWrapper) {
        Intrinsics.checkNotNullParameter(geoLayoutShaderWrapper, "<set-?>");
        this.geoLayoutShaderWrapper = geoLayoutShaderWrapper;
    }

    public final void setNoteDoc(@NotNull NoteDocument noteDocument) {
        Intrinsics.checkNotNullParameter(noteDocument, "<set-?>");
        this.noteDoc = noteDocument;
    }

    public final void setNoteDrawingArgs(@NotNull NoteDrawingArgs value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.noteDoc.setNoteDrawingArgs(value);
    }

    public final void postAddShapeEvent(@NotNull List<? extends Shape> shapes) {
        List<Shape> mutableList;
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        if (shapes.isEmpty()) {
            return;
        }
        ChangedShapeBean changedShapeBean = new ChangedShapeBean();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) shapes);
        postShapeChangedEvent(changedShapeBean.setAddShapeList(mutableList));
        m33593b(shapes);
    }

    @Nullable
    public final ShapeBean findShapeBean(@NotNull String shapeUniqueId) {
        Object obj;
        Intrinsics.checkNotNullParameter(shapeUniqueId, "shapeUniqueId");
        Iterator<T> it2 = this.audioShapeBeanList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            ShapeModel shapeModel = ((ShapeBean) next).getShapeModel();
            if (Intrinsics.areEqual(shapeModel != null ? shapeModel.getUniqueId() : null, shapeUniqueId)) {
                obj = next;
                break;
            }
        }
        return (ShapeBean) obj;
    }

    public final void postStashChangeShapeEvent(@Nullable Shape shape) {
        List<? extends Shape> listOf;
        if (shape == null) {
            return;
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(shape);
        m33593b(listOf);
    }
}
