package com.onyx.android.sdk.universal.editor.request.audio;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.shape.ShapeBean;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.onyx.android.sdk.replicator.note.p035db.model.ResourceModel;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.onyx.android.sdk.replicator.utils.ResourceModels;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0017\u001a\u00020\u0015\u0012\u0006\u0010\u001a\u001a\u00020\u0018\u0012\u0006\u0010\u001d\u001a\u00020\u0012\u0012\b\b\u0002\u0010 \u001a\u00020\u0002¢\u0006\u0004\b#\u0010$J\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\f\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J \u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002R\u0014\u0010\u0017\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0016R\u0014\u0010\u001a\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010 \u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010\"\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\u001f¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioNameRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "", "isDuplicatedName", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;", "providerHolder", "Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;", "resourceModel", C6998g.f39679a, "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;", "shapeBean", C6999h.f39688c, "", "title", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "audioInfoBean", "i", Constants.STRING_SIG, "newName", "j", Constants.HASIDCALL_INDEX_SIG, "checkDuplicated", C4921e.f26537n, "duplicatedName", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Ljava/lang/String;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RenameAudioNameRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final AudioInfoBean audioInfoBean;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final String newName;

    /* renamed from: j, reason: from kotlin metadata */
    public final boolean checkDuplicated;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean duplicatedName;

    public /* synthetic */ RenameAudioNameRequest(EditorBundle editorBundle, AudioInfoBean audioInfoBean, String str, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, audioInfoBean, str, (i & 8) != 0 ? true : z);
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        NoteProviderHolder providerHolder = noteBundle.getNoteDoc().getProviderHolder();
        ShapeBean findShapeBean = noteBundle.findShapeBean(this.audioInfoBean);
        if (findShapeBean == null) {
            return;
        }
        NotePage ensureGlobalNotePage = this.editorBundle.getWorkBundle().getVirtualPolicy().ensureGlobalNotePage();
        ResourceModel resourceModel = findShapeBean.getResourceModel();
        if (resourceModel == null) {
            return;
        }
        if (this.checkDuplicated && m41433f(this.newName)) {
            this.duplicatedName = true;
        } else if (m41434g(providerHolder, resourceModel)) {
            this.audioInfoBean.setAudioPath(resourceModel.getPath());
            this.audioInfoBean.setTitle(resourceModel.getTitle());
            m41435h(ensureGlobalNotePage, findShapeBean, resourceModel);
        }
    }

    /* renamed from: f */
    public final boolean m41433f(String title) {
        CheckAudioDuplicatedNameRequest checkAudioDuplicatedNameRequest = new CheckAudioDuplicatedNameRequest(this.editorBundle, this.audioInfoBean, title);
        checkAudioDuplicatedNameRequest.execute2();
        return checkAudioDuplicatedNameRequest.getDuplicatedName();
    }

    /* renamed from: g */
    public final boolean m41434g(NoteProviderHolder providerHolder, ResourceModel resourceModel) {
        resourceModel.setTitle(this.newName);
        resourceModel.setRevisionId((String) null);
        providerHolder.getNoteResourceProvider().saveResourceModel(resourceModel);
        return true;
    }

    /* renamed from: h */
    public final void m41435h(NotePage notePage, ShapeBean shapeBean, ResourceModel resourceModel) {
        NotePageShape notePageShape = NotePageShape.INSTANCE;
        ShapeModel shapeModel = shapeBean.getShapeModel();
        Shape shapeById = notePageShape.getShapeById(notePage, StringKt.safelyGetStr(shapeModel != null ? shapeModel.getUniqueId() : null));
        if (shapeById == null) {
            return;
        }
        ShapeOptions shapeOptions = ShapeOptions.INSTANCE;
        ShapeResource createShapeResourceByModel = ResourceModels.INSTANCE.createShapeResourceByModel(resourceModel);
        Intrinsics.checkNotNull(createShapeResourceByModel);
        shapeOptions.setResource(shapeById, createShapeResourceByModel);
        shapeBean.m72308setShape(shapeById);
    }

    /* renamed from: isDuplicatedName, reason: from getter */
    public final boolean getDuplicatedName() {
        return this.duplicatedName;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RenameAudioNameRequest(@NotNull EditorBundle editorBundle, @NotNull AudioInfoBean audioInfoBean, @NotNull String newName, boolean z) {
        super(EditorBundleKt.noteBundle(editorBundle));
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(audioInfoBean, "audioInfoBean");
        Intrinsics.checkNotNullParameter(newName, "newName");
        this.editorBundle = editorBundle;
        this.audioInfoBean = audioInfoBean;
        this.newName = newName;
        this.checkDuplicated = z;
    }
}
