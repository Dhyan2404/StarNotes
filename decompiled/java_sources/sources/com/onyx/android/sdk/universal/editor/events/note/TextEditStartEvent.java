package com.onyx.android.sdk.universal.editor.events.note;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\u0006\u0010\u0019\u001a\u00020\u0014\u0012\u0006\u0010\u001f\u001a\u00020\u001a\u0012\u0006\u0010\"\u001a\u00020\u001a¢\u0006\u0004\b#\u0010$R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0019\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u001f\u001a\u00020\u001a8\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0017\u0010\"\u001a\u00020\u001a8\u0006¢\u0006\f\n\u0004\b \u0010\u001c\u001a\u0004\b!\u0010\u001e¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/TextEditStartEvent;", "", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "a", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "getRenderContext", "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "b", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "getNotePage", "()Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "c", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "d", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "", "e", Constants.HASIDCALL_INDEX_SIG, "getEditForAll", Constants.BOOLEAN_VALUE_SIG, "editForAll", C6997f.f39671c, "getCreateNewShape", "createNewShape", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;ZZ)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TextEditStartEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final NotePage notePage;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualBoxInfo;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final Shape shape;

    /* renamed from: e, reason: from kotlin metadata */
    public final boolean editForAll;

    /* renamed from: f, reason: from kotlin metadata */
    public final boolean createNewShape;

    public TextEditStartEvent(@NotNull RenderContext renderContext, @NotNull NotePage notePage, @NotNull BoxInfo virtualBoxInfo, @NotNull Shape shape, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(notePage, "notePage");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.renderContext = renderContext;
        this.notePage = notePage;
        this.virtualBoxInfo = virtualBoxInfo;
        this.shape = shape;
        this.editForAll = z;
        this.createNewShape = z2;
    }

    public final boolean getCreateNewShape() {
        return this.createNewShape;
    }

    public final boolean getEditForAll() {
        return this.editForAll;
    }

    @NotNull
    public final NotePage getNotePage() {
        return this.notePage;
    }

    @NotNull
    public final RenderContext getRenderContext() {
        return this.renderContext;
    }

    @NotNull
    public final Shape getShape() {
        return this.shape;
    }

    @NotNull
    public final BoxInfo getVirtualBoxInfo() {
        return this.virtualBoxInfo;
    }
}
