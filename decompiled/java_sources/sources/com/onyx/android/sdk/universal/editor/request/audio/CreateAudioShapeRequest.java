package com.onyx.android.sdk.universal.editor.request.audio;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.command.CommandManager;
import com.onyx.android.sdk.note.common.command.UndoRedoCommand;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.ShapeBean;
import com.onyx.android.sdk.note.common.document.doc.NoteDocSave;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.event.CommandEvent;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeFactory;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.utils.NoteAudioUtils;
import com.onyx.android.sdk.note.common.utils.ShapeMatrixUtils;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeExtraBean;
import com.onyx.android.sdk.replicator.note.p035db.ResourceProvider;
import com.onyx.android.sdk.replicator.note.p035db.ResourceQueryArgsExtKt;
import com.onyx.android.sdk.replicator.note.p035db.model.ResourceModel;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.onyx.android.sdk.replicator.utils.ResourceModels;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.events.note.AudioShapeBeanCreatedEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u001a\u001a\u00020\u0018\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b4\u00105J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0014\u001a\u00020\fH\u0002J\b\u0010\u0015\u001a\u00020\fH\u0002J\b\u0010\u0017\u001a\u00020\u0016H\u0002R\u0014\u0010\u001a\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0019R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u001bR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u001cR\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u001dR\"\u0010$\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R$\u0010+\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R$\u00103\u001a\u0004\u0018\u00010,8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102¨\u00066"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6997f.f39671c, "", "documentId", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "audioInfoBean", "Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;", C4921e.f26537n, "", "i", C6998g.f39679a, C6999h.f39688c, "", "j", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "", Constants.HASIDCALL_INDEX_SIG, "getAddToCmdStack", Constants.BOOLEAN_VALUE_SIG, "setAddToCmdStack", "(Z)V", "addToCmdStack", "l", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getAudioShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "setAudioShape", "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "audioShape", "Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;", "m", "Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;", "getResourceModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;", "setResourceModel", "(Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;)V", "resourceModel", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCreateAudioShapeRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateAudioShapeRequest.kt\ncom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,187:1\n1#2:188\n766#3:189\n857#3,2:190\n*S KotlinDebug\n*F\n+ 1 CreateAudioShapeRequest.kt\ncom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest\n*L\n171#1:189\n171#1:190,2\n*E\n"})
/* loaded from: classes8.dex */
public final class CreateAudioShapeRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final NotePage notePage;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final AudioInfoBean audioInfoBean;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean addToCmdStack;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public Shape audioShape;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public ResourceModel resourceModel;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateAudioShapeRequest(@NotNull EditorBundle editorBundle, @NotNull RenderContext renderContext, @NotNull NotePage notePage, @NotNull AudioInfoBean audioInfoBean) {
        super(EditorBundleKt.noteBundle(editorBundle));
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(notePage, "notePage");
        Intrinsics.checkNotNullParameter(audioInfoBean, "audioInfoBean");
        this.editorBundle = editorBundle;
        this.renderContext = renderContext;
        this.notePage = notePage;
        this.audioInfoBean = audioInfoBean;
        this.addToCmdStack = true;
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        ResourceModel resourceModel;
        Object obj;
        List<? extends Shape> listOfNotNull;
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Iterator<T> it2 = this.notePage.getShapeList().iterator();
        while (true) {
            resourceModel = null;
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            ShapeResource resource = ShapeOptions.INSTANCE.getResource((Shape) obj);
            if (Intrinsics.areEqual(resource != null ? resource.getLocalPath() : null, this.audioInfoBean.getAudioPath())) {
                break;
            }
        }
        Shape shape = (Shape) obj;
        if (shape != null) {
            this.audioShape = shape;
            ShapeResource resource2 = ShapeOptions.INSTANCE.getResource(shape);
            if (resource2 != null) {
                resource2.setAudioDuration(m41428i(this.audioInfoBean));
                this.audioInfoBean.setTitle(resource2.getTitle());
                resourceModel = ResourceModels.INSTANCE.fromShapeResource(resource2);
            }
            this.resourceModel = resourceModel;
            ResourceProvider noteResourceProvider = noteBundle.getNoteDoc().getProviderHolder().getNoteResourceProvider();
            ResourceModel resourceModel2 = this.resourceModel;
            Intrinsics.checkNotNull(resourceModel2);
            noteResourceProvider.saveResourceModel(resourceModel2);
        } else {
            Shape m41425f = m41425f(this.notePage, this.renderContext);
            this.audioShape = m41425f;
            NotePageShape notePageShape = NotePageShape.INSTANCE;
            NotePage notePage = this.notePage;
            Intrinsics.checkNotNull(m41425f);
            notePageShape.saveShape(notePage, m41425f);
        }
        ShapeBean addAudioShapeBean = noteBundle.addAudioShapeBean(this.audioShape, this.audioInfoBean, this.resourceModel);
        Shape shape2 = this.audioShape;
        Intrinsics.checkNotNull(shape2);
        noteBundle.postAddShapeEvent(shape2);
        if (this.addToCmdStack) {
            CommandManager commandManager = noteBundle.getCommandManager();
            listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(this.audioShape);
            UndoRedoCommand addShapesUndoRedoCommand = commandManager.addShapesUndoRedoCommand(listOfNotNull);
            if (addShapesUndoRedoCommand != null) {
                noteBundle.postEvent(new CommandEvent(addShapesUndoRedoCommand));
            }
            if (addAudioShapeBean != null) {
                noteBundle.postEvent(new AudioShapeBeanCreatedEvent(addAudioShapeBean));
            }
        }
        NoteDocSave.INSTANCE.savePage(noteBundle.getNoteDoc());
    }

    /* renamed from: f */
    public final Shape m41425f(NotePage notePage, RenderContext renderContext) throws Exception {
        Size size = new Size(0, 0);
        RectF viewportCenterRect = renderContext.getRenderMeasure().getViewportCenterRect();
        TouchPoint touchPoint = new TouchPoint((viewportCenterRect.width() / 2.0f) - (size.getWidth() / 2.0f), (viewportCenterRect.height() / 2.0f) - (size.getHeight() / 2.0f));
        Matrix matrix = new Matrix();
        renderContext.getMatrix().invert(matrix);
        ShapeMatrixUtils shapeMatrixUtils = ShapeMatrixUtils.INSTANCE;
        TouchPoint matrixTouchPoint = shapeMatrixUtils.matrixTouchPoint(touchPoint, matrix);
        Shape create = ShapeFactory.INSTANCE.create(23);
        create.onDown(matrixTouchPoint, matrixTouchPoint);
        TouchPoint touchPoint2 = new TouchPoint(touchPoint);
        touchPoint2.setX(touchPoint.getX() + (size.getWidth() * m41429j()));
        touchPoint2.setY(touchPoint.getY() + (size.getHeight() * m41429j()));
        TouchPoint matrixTouchPoint2 = shapeMatrixUtils.matrixTouchPoint(touchPoint2, matrix);
        create.onUp(matrixTouchPoint2, matrixTouchPoint2);
        create.ensureShapeUniqueId();
        ShapeUtils.INSTANCE.setShapeZOrder(create, notePage);
        ShapeOptions.INSTANCE.setResource(create, m41430k(notePage.getDocumentUniqueId(), this.audioInfoBean));
        create.setExtraBean(new ShapeExtraBean());
        create.updateShapeRect();
        create.updateShapeTime();
        return create;
    }

    /* renamed from: g */
    public final String m41426g() {
        String title = this.audioInfoBean.getTitle();
        if (!(title == null || title.length() == 0)) {
            return title;
        }
        String m41427h = m41427h();
        this.audioInfoBean.setTitle(m41427h);
        return m41427h;
    }

    public final boolean getAddToCmdStack() {
        return this.addToCmdStack;
    }

    @Nullable
    public final Shape getAudioShape() {
        return this.audioShape;
    }

    @Nullable
    public final ResourceModel getResourceModel() {
        return this.resourceModel;
    }

    /* renamed from: h */
    public final String m41427h() {
        int i;
        List<ResourceModel> list;
        List<ResourceModel> loadResourceList = EditorBundleKt.noteBundle(this.editorBundle).getNoteDoc().getProviderHolder().getNoteResourceProvider().loadResourceList(ResourceQueryArgsExtKt.loadDocResourceListQuery(getNoteBundle().getNoteDoc().getDocumentUniqueId()));
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = loadResourceList.iterator();
        while (true) {
            i = 1;
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            if (true ^ this.notePage.getRemoveResourceIdList().contains(((ResourceModel) next).getUniqueId())) {
                arrayList.add(next);
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        String string = ResManager.INSTANCE.getString(C8045R.string.record_title_prefix);
        if (CollectionKt.isNonBlank(list)) {
            while (true) {
                if (!ResourceModels.INSTANCE.containsTitle(list, string + i)) {
                    break;
                }
                i++;
            }
        }
        return string + i;
    }

    /* renamed from: i */
    public final long m41428i(AudioInfoBean audioInfoBean) throws Exception {
        if (audioInfoBean.getDuration() <= 0) {
            return 0L;
        }
        try {
            NoteAudioUtils noteAudioUtils = NoteAudioUtils.INSTANCE;
            String audioPath = audioInfoBean.getAudioPath();
            if (audioPath == null) {
                audioPath = "";
            }
            return noteAudioUtils.getAudioDuration(audioPath);
        } catch (Exception e) {
            e.printStackTrace();
            long duration = audioInfoBean.getDuration();
            Debug.INSTANCE.m32052i(CreateAudioShapeRequest.class, "parsing audio duration: " + duration + ", record duration: " + audioInfoBean.getDuration(), new Object[0]);
            return duration > 0 ? duration : audioInfoBean.getDuration();
        }
    }

    /* renamed from: j */
    public final float m41429j() {
        return this.renderContext.getRenderMeasure().getScale();
    }

    /* renamed from: k */
    public final ShapeResource m41430k(String documentId, AudioInfoBean audioInfoBean) throws Exception {
        String safelyGetStr = StringKt.safelyGetStr(audioInfoBean.getAudioPath());
        NoteProviderHolder providerHolder = getNoteBundle().getNoteDoc().getProviderHolder();
        if (FileUtils.INSTANCE.fileExist(safelyGetStr)) {
            this.resourceModel = providerHolder.getNoteResourceProvider().loadFromPath(documentId, safelyGetStr);
        }
        if (this.resourceModel == null) {
            ResourceModel resourceModel = new ResourceModel();
            resourceModel.setLocalPath(safelyGetStr);
            resourceModel.setType(2);
            resourceModel.setDocumentId(documentId);
            resourceModel.setTitle(m41426g());
            resourceModel.setAudioDuration(m41428i(audioInfoBean));
            resourceModel.setCreatedAt(audioInfoBean.getCreationTime());
            this.resourceModel = resourceModel;
            ResourceProvider noteResourceProvider = providerHolder.getNoteResourceProvider();
            ResourceModel resourceModel2 = this.resourceModel;
            Intrinsics.checkNotNull(resourceModel2);
            noteResourceProvider.saveResourceModel(resourceModel2);
        }
        ShapeResource createShapeResourceByModel = ResourceModels.INSTANCE.createShapeResourceByModel(this.resourceModel);
        Intrinsics.checkNotNull(createShapeResourceByModel);
        return createShapeResourceByModel;
    }

    public final void setAddToCmdStack(boolean z) {
        this.addToCmdStack = z;
    }

    public final void setAudioShape(@Nullable Shape shape) {
        this.audioShape = shape;
    }

    public final void setResourceModel(@Nullable ResourceModel resourceModel) {
        this.resourceModel = resourceModel;
    }
}
