package com.onyx.android.sdk.universal.editor.action.command;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.command.AttributesCommand;
import com.onyx.android.sdk.note.common.command.Command;
import com.onyx.android.sdk.note.common.command.CompositeCommand;
import com.onyx.android.sdk.note.common.data.shape.ShapeAttributesBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u001d2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001dB+\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u001b\u0010\u001cJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\f\u001a\u0004\u0018\u00010\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/command/AddTextShapeRichTextCommandAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lcom/onyx/android/sdk/note/common/command/Command;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "", "i", Constants.STRING_SIG, "richText", "", "j", Constants.HASIDCALL_INDEX_SIG, "addToCmdStack", "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", C4921e.f26537n, "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "getCompositeCommand", "()Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "setCompositeCommand", "(Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V", "compositeCommand", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/lang/String;Z)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class AddTextShapeRichTextCommandAction extends RxBaseAppAction<Command> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Shape shape;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public final String richText;

    /* renamed from: j, reason: from kotlin metadata */
    public final boolean addToCmdStack;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public CompositeCommand compositeCommand;

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/command/AddTextShapeRichTextCommandAction$Companion;", "", "()V", "buildRichTextCommand", "Lcom/onyx/android/sdk/note/common/command/AttributesCommand;", "shape", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "richText", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final AttributesCommand buildRichTextCommand(@NotNull Shape shape, @Nullable String richText) {
            Intrinsics.checkNotNullParameter(shape, "shape");
            ShapeAttributesBean richText2 = ShapeAttributesBean.INSTANCE.buildAttributes(shape).setRichText(richText);
            ShapeAttributesBean richText3 = richText2.m72300clone().resetChanged().setRichText(shape.getRichText());
            HashMap hashMap = new HashMap();
            hashMap.put(shape, richText3);
            AttributesCommand attributesCommand = new AttributesCommand(hashMap);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put(shape.getShapeUniqueId(), richText2);
            attributesCommand.setShapeOriginAttrMap(linkedHashMap);
            return attributesCommand;
        }

        public Companion() {
        }
    }

    public /* synthetic */ AddTextShapeRichTextCommandAction(EditorBundle editorBundle, Shape shape, String str, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, shape, str, (i & 8) != 0 ? true : z);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Command> create() {
        Debug.INSTANCE.m32035d(AddTextShapeRichTextCommandAction.class, "add text shape rich text attribute command:" + this.richText, new Object[0]);
        this.compositeCommand.addCommand(INSTANCE.buildRichTextCommand(this.shape, this.richText));
        if (this.addToCmdStack) {
            return new AddUndoRedoCommandAction(getEditorBundle(), this.compositeCommand).build();
        }
        Observable<Command> just = Observable.just(this.compositeCommand);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @NotNull
    public final CompositeCommand getCompositeCommand() {
        return this.compositeCommand;
    }

    public final void setCompositeCommand(@NotNull CompositeCommand compositeCommand) {
        Intrinsics.checkNotNullParameter(compositeCommand, "<set-?>");
        this.compositeCommand = compositeCommand;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddTextShapeRichTextCommandAction(@NotNull EditorBundle editorBundle, @NotNull Shape shape, @Nullable String str, boolean z) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.shape = shape;
        this.richText = str;
        this.addToCmdStack = z;
        this.compositeCommand = new CompositeCommand(new ArrayList());
    }
}
