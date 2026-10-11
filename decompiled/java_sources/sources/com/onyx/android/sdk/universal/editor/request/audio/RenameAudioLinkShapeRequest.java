package com.onyx.android.sdk.universal.editor.request.audio;

import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.document.doc.TransformShapeContext;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeLinkUtils;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\u000e¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R$\u0010\u0019\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "audioInfoBean", "", "i", Constants.STRING_SIG, "newName", "Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;", "j", "Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;", "getTransformShapeContext", "()Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;", "setTransformShapeContext", "(Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;)V", "transformShapeContext", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRenameAudioLinkShapeRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenameAudioLinkShapeRequest.kt\ncom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,55:1\n766#2:56\n857#2,2:57\n*S KotlinDebug\n*F\n+ 1 RenameAudioLinkShapeRequest.kt\ncom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest\n*L\n30#1:56\n30#1:57,2\n*E\n"})
/* loaded from: classes8.dex */
public final class RenameAudioLinkShapeRequest extends BaseRxNoteRequest {

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
    @Nullable
    public TransformShapeContext transformShapeContext;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RenameAudioLinkShapeRequest(@NotNull EditorBundle editorBundle, @NotNull AudioInfoBean audioInfoBean, @NotNull String newName) {
        super(EditorBundleKt.noteBundle(editorBundle));
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(audioInfoBean, "audioInfoBean");
        Intrinsics.checkNotNullParameter(newName, "newName");
        this.editorBundle = editorBundle;
        this.audioInfoBean = audioInfoBean;
        this.newName = newName;
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        AudioInfoBean audioInfoBean;
        List listOf;
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        VirtualDocPolicy virtualPolicy = this.editorBundle.getWorkBundle().getVirtualPolicy();
        for (VirtualPage virtualPage : virtualPolicy.getVirtualPageList()) {
            NotePage notePage = virtualPolicy.getNotePage(virtualPage);
            if (notePage != null) {
                List<Shape> shapeList = notePage.getShapeList();
                ArrayList<Shape> arrayList = new ArrayList();
                for (Object obj : shapeList) {
                    if (ShapeTypes.INSTANCE.isLinkShape((Shape) obj)) {
                        arrayList.add(obj);
                    }
                }
                if (!arrayList.isEmpty()) {
                    RenderContext createByViewPort = RenderContext.INSTANCE.createByViewPort(virtualPage.getBox().getOriginRectFWithMargin());
                    for (Shape shape : arrayList) {
                        JSONUtils jSONUtils = JSONUtils.INSTANCE;
                        ShapeLinkBean shapeLinkBean = (ShapeLinkBean) jSONUtils.parseObject(shape.getText(), ShapeLinkBean.class);
                        if (shapeLinkBean != null && shapeLinkBean.isLinkAudioType() && (audioInfoBean = (AudioInfoBean) jSONUtils.parseObject(shapeLinkBean.getValue(), AudioInfoBean.class)) != null && Intrinsics.areEqual(audioInfoBean.getAudioPath(), this.audioInfoBean.getAudioPath())) {
                            audioInfoBean.setTitle(this.newName);
                            shapeLinkBean.setValue(jSONUtils.toJson(audioInfoBean));
                            shapeLinkBean.setRemark(this.newName);
                            shape.setText(jSONUtils.toJson(shapeLinkBean));
                            ShapeLinkUtils.INSTANCE.resetSize(createByViewPort, shape, shapeLinkBean);
                            NotePageShape.INSTANCE.saveShape(notePage, shape);
                            noteBundle.postAddShapeEvent(shape);
                            BoxInfo box = virtualPage.getBox();
                            listOf = CollectionsKt__CollectionsJVMKt.listOf(shape);
                            this.transformShapeContext = new TransformShapeContext(box, listOf, null, false, 12, null);
                        }
                    }
                }
            }
        }
    }

    @Nullable
    public final TransformShapeContext getTransformShapeContext() {
        return this.transformShapeContext;
    }

    public final void setTransformShapeContext(@Nullable TransformShapeContext transformShapeContext) {
        this.transformShapeContext = transformShapeContext;
    }
}
