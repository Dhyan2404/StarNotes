package com.onyx.android.sdk.universal.editor.request.audio;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.shape.ShapeBean;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.ShapeCopyUtils;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.replicator.note.p035db.ShapeQueryArgsExtKt;
import com.onyx.android.sdk.replicator.note.p035db.model.ResourceModel;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\n¢\u0006\u0004\b\u0013\u0010\u0014J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\t\u001a\u00020\u0007H\u0002R\u0017\u0010\u000f\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/audio/LoadAudioListRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;", "getAudioShapeBeanList", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", C6999h.f39688c, "Ljava/util/List;", "audioShapeBeanList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadAudioListRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<ShapeBean> audioShapeBeanList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadAudioListRequest(@NotNull EditorBundle editorBundle) {
        super(EditorBundleKt.noteBundle(editorBundle));
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        this.audioShapeBeanList = new ArrayList();
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        m41431f();
        noteBundle.setAudioShapeBeanList(this.audioShapeBeanList);
    }

    /* renamed from: f */
    public final void m41431f() throws CloneNotSupportedException {
        String documentUniqueId = getNoteBundle().getNoteDoc().getDocumentUniqueId();
        NotePage ensureGlobalNotePage = this.editorBundle.getWorkBundle().getVirtualPolicy().ensureGlobalNotePage();
        CBQueryArgs varargOrdering = ShapeQueryArgsExtKt.loadShapeListByTypeQuery(documentUniqueId, 23).setVarargOrdering(CouchUtils.INSTANCE.getOrdering(CouchFieldKey.KEY_CREATE_AT, true));
        NoteProviderHolder providerHolder = getNoteBundle().getNoteDoc().getProviderHolder();
        List<ShapeModel> loadShapeList = providerHolder.getNoteShapeProvider().loadShapeList(varargOrdering);
        if (loadShapeList.isEmpty()) {
            return;
        }
        for (ShapeModel shapeModel : loadShapeList) {
            ResourceModel loadResourceModel = providerHolder.getNoteResourceProvider().loadResourceModel(shapeModel.getResourceId());
            if (loadResourceModel != null && !FileUtils.INSTANCE.isEmpty(loadResourceModel.getPath()) && !loadResourceModel.isRemoved() && !ensureGlobalNotePage.getRemoveResourceIdList().contains(loadResourceModel.getUniqueId())) {
                Debug.INSTANCE.m32035d(LoadAudioListRequest.class, "resourceModel:" + JSONUtils.INSTANCE.toJson(loadResourceModel), new Object[0]);
                Shape shapeById = NotePageShape.INSTANCE.getShapeById(ensureGlobalNotePage, shapeModel.getUniqueId());
                ShapeBean shapeBean = new ShapeBean();
                shapeBean.setShapeModel(shapeModel);
                shapeBean.setResourceModel(loadResourceModel);
                shapeBean.setFileLastModified(new File(String.valueOf(loadResourceModel.getPath())).lastModified());
                shapeBean.setAudioInfoBean(new AudioInfoBean(loadResourceModel.getTitle(), loadResourceModel.getPath(), loadResourceModel.getAudioDuration(), loadResourceModel.getCreatedAt()));
                if (shapeById != null) {
                    shapeBean.setLayerId(shapeById.getLayerId());
                    Shape shapeClone = ShapeCopyUtils.INSTANCE.shapeClone(shapeById, shapeById.getType());
                    shapeClone.setShapeUniqueId(shapeById.getShapeUniqueId());
                    shapeBean.setShape(shapeClone);
                }
                this.audioShapeBeanList.add(shapeBean);
            }
        }
    }

    @NotNull
    public final List<ShapeBean> getAudioShapeBeanList() {
        return this.audioShapeBeanList;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }
}
