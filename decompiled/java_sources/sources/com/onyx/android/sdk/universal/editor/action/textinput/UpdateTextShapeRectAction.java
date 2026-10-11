package com.onyx.android.sdk.universal.editor.action.textinput;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.utils.HtmlUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.command.CompositeCommand;
import com.onyx.android.sdk.note.common.command.TransformDirectlyCommand;
import com.onyx.android.sdk.note.common.command.UndoRedoCommand;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.TextRenderUtil;
import com.onyx.android.sdk.note.extension.ShapeKt;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.onyx.android.sdk.textbox.action.RenderTextShapeByEditorAction;
import com.onyx.android.sdk.textbox.data.TransformType;
import com.onyx.android.sdk.textbox.widget.TextBoxView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.command.AddTextShapeRichTextCommandAction;
import com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.textinput.UpdateTextShapeRectRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B/\u0012\u0006\u0010b\u001a\u00020a\u0012\u0006\u00107\u001a\u000204\u0012\u0006\u0010;\u001a\u000208\u0012\u0006\u0010?\u001a\u00020<\u0012\u0006\u00101\u001a\u00020\u0005¢\u0006\u0004\bc\u0010dJ\b\u0010\u0002\u001a\u00020\u0000H\u0002J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0003H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\t\u001a\u00020\u0007H\u0002J\b\u0010\n\u001a\u00020\u0007H\u0002J\b\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\r\u001a\u00020\u000bH\u0002J\b\u0010\u000e\u001a\u00020\u000bH\u0002J\n\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\n\u0010\u0014\u001a\u0004\u0018\u00010\u000fH\u0002J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002J\u0010\u0010\u0018\u001a\u00020\u00002\b\u0010\u0017\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u001a\u001a\u00020\u00002\b\u0010\u0019\u001a\u0004\u0018\u00010\u0015J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001bJ\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001bJ\u000e\u0010!\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u000bJ\u0010\u0010$\u001a\u00020\u00002\b\u0010#\u001a\u0004\u0018\u00010\"J\u000e\u0010&\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u000bJ\u0010\u0010(\u001a\u00020\u00002\b\u0010'\u001a\u0004\u0018\u00010\u000fJ\u000e\u0010+\u001a\u00020\u00002\u0006\u0010*\u001a\u00020)J\u0010\u0010-\u001a\u00020\u00002\b\u0010,\u001a\u0004\u0018\u00010\u0011J\u000e\u00100\u001a\u00020\u00002\u0006\u0010/\u001a\u00020.J\u0010\u00102\u001a\u00020\u00002\b\u00101\u001a\u0004\u0018\u00010\u0005J\u000e\u00103\u001a\b\u0012\u0004\u0012\u00020\u00000\u0003H\u0014R\u0016\u00107\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0014\u0010;\u001a\u0002088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010:R\u0014\u0010?\u001a\u00020<8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>R\u0014\u00101\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010AR\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010BR\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010BR\u0016\u0010\u001c\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010CR\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010CR\u0018\u0010#\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010DR\u0016\u0010 \u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010ER\u0016\u0010F\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010ER\u0018\u0010H\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010GR\u0018\u0010*\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0004\u0010IR\u0018\u0010K\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010JR\u0018\u0010M\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010LR\u0016\u0010N\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0002\u0010BR\u0018\u0010R\u001a\u0004\u0018\u00010O8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010QR\"\u0010X\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bS\u0010A\u001a\u0004\bT\u0010U\"\u0004\bV\u0010WR\"\u0010`\u001a\u00020Y8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bZ\u0010[\u001a\u0004\b\\\u0010]\"\u0004\b^\u0010_¨\u0006e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "w", "Lio/reactivex/rxjava3/core/Observable;", "t", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "v", "", "u", "l", "m", "", "p", "q", "r", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualBoxInfo", "", CouchFieldKey.KEY_TOC_PAGE_ID, C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, "Landroid/graphics/RectF;", "s", "renderRect", "setRenderRect", "editorRect", "setEditorRect", "", "textWidth", "setTextWidth", "textHeight", "setTextHeight", "saveShape", "setSaveShape", "Lcom/onyx/android/sdk/textbox/data/TransformType;", "transformType", "setTransformType", "value", "setUpdateRectOnly", "boxInfo", "setVirtualBoxInfo", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", "shapeTransformBean", "setShapeTransformBean", "richText", "setLastRichText", "Landroid/graphics/Matrix;", "mtx", "setLastShapeMatrix", "shape", "setOriginShape", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", C6999h.f39688c, "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "textBoxView", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "i", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "j", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", C4921e.f26537n, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Landroid/graphics/RectF;", "F", "Lcom/onyx/android/sdk/textbox/data/TransformType;", Constants.HASIDCALL_INDEX_SIG, "updateRectOnly", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", Constants.STRING_SIG, "lastRichText", "Landroid/graphics/Matrix;", "lastShapeMatrix", "lastShapeRect", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "x", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "lastShapeStyle", "y", "getSavedShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "setSavedShape", "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "savedShape", "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "z", "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "getCompositeCommand", "()Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "setCompositeCommand", "(Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V", "compositeCommand", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUpdateTextShapeRectAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateTextShapeRectAction.kt\ncom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,263:1\n766#2:264\n857#2,2:265\n1#3:267\n*S KotlinDebug\n*F\n+ 1 UpdateTextShapeRectAction.kt\ncom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction\n*L\n179#1:264\n179#1:265,2\n*E\n"})
/* loaded from: classes8.dex */
public final class UpdateTextShapeRectAction extends RxBaseAppAction<UpdateTextShapeRectAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public TextBoxView textBoxView;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final NotePage notePage;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Shape shape;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public RectF renderRect;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public RectF editorRect;

    /* renamed from: n, reason: from kotlin metadata */
    public float textWidth;

    /* renamed from: o, reason: from kotlin metadata */
    public float textHeight;

    /* renamed from: p, reason: from kotlin metadata */
    @Nullable
    public TransformType transformType;

    /* renamed from: q, reason: from kotlin metadata */
    public boolean saveShape;

    /* renamed from: r, reason: from kotlin metadata */
    public boolean updateRectOnly;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public BoxInfo virtualBoxInfo;

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public ShapeTransformBean shapeTransformBean;

    /* renamed from: u, reason: from kotlin metadata */
    @Nullable
    public String lastRichText;

    /* renamed from: v, reason: from kotlin metadata */
    @Nullable
    public Matrix lastShapeMatrix;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public RectF lastShapeRect;

    /* renamed from: x, reason: from kotlin metadata */
    @Nullable
    public ShapeTextStyle lastShapeStyle;

    /* renamed from: y, reason: from kotlin metadata */
    @NotNull
    public Shape savedShape;

    /* renamed from: z, reason: from kotlin metadata */
    @NotNull
    public CompositeCommand compositeCommand;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.UpdateTextShapeRectAction$a */
    /* loaded from: classes8.dex */
    public static final class C10240a<T> implements Consumer {
        public C10240a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull UpdateTextShapeRectAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateTextShapeRectAction.this.m40478w();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.UpdateTextShapeRectAction$b */
    /* loaded from: classes8.dex */
    public static final class C10241b<T> implements Consumer {
        public C10241b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull UpdateTextShapeRectAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateTextShapeRectAction.this.m40476u();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.UpdateTextShapeRectAction$c */
    /* loaded from: classes8.dex */
    public static final class C10242c<T, R> implements Function {
        public C10242c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdateTextShapeRectAction> apply(@NotNull UpdateTextShapeRectAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateTextShapeRectAction.this.m40475t();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.UpdateTextShapeRectAction$d */
    /* loaded from: classes8.dex */
    public static final class C10243d<T, R> implements Function {
        public C10243d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Shape> apply(@NotNull UpdateTextShapeRectAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateTextShapeRectAction.this.m40477v();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.UpdateTextShapeRectAction$e */
    /* loaded from: classes8.dex */
    public static final class C10244e<T> implements Consumer {
        public C10244e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Shape it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateTextShapeRectAction.this.setSavedShape(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.UpdateTextShapeRectAction$f */
    /* loaded from: classes8.dex */
    public static final class C10245f<T, R> implements Function {
        public C10245f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateTextShapeRectAction apply(@NotNull Shape it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateTextShapeRectAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.UpdateTextShapeRectAction$g */
    /* loaded from: classes8.dex */
    public static final class C10246g<T, R> implements Function {
        public C10246g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateTextShapeRectAction apply(@NotNull RenderTextShapeByEditorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateTextShapeRectAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.UpdateTextShapeRectAction$h */
    /* loaded from: classes8.dex */
    public static final class C10247h<T, R> implements Function {
        public C10247h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Shape apply(@NotNull QuitTransformAction it2) {
            Object firstOrNull;
            Intrinsics.checkNotNullParameter(it2, "it");
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) ShapeTypes.INSTANCE.filterNormalShapes(it2.getTransformShapeList()));
            Shape shape = (Shape) firstOrNull;
            return shape == null ? UpdateTextShapeRectAction.this.shape : shape;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateTextShapeRectAction(@NotNull EditorBundle editorBundle, @NotNull TextBoxView textBoxView, @NotNull RenderContext renderContext, @NotNull NotePage notePage, @NotNull Shape shape) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(textBoxView, "textBoxView");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(notePage, "notePage");
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.textBoxView = textBoxView;
        this.renderContext = renderContext;
        this.notePage = notePage;
        this.shape = shape;
        this.lastShapeRect = new RectF();
        this.savedShape = shape;
        this.compositeCommand = new CompositeCommand(null, 1, null);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<UpdateTextShapeRectAction> create() {
        Observable<UpdateTextShapeRectAction> map = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C10240a()).doOnNext(new C10241b()).flatMap(new C10242c()).flatMap(new C10243d()).doOnNext(new C10244e()).map(new C10245f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final CompositeCommand getCompositeCommand() {
        return this.compositeCommand;
    }

    @NotNull
    public final Shape getSavedShape() {
        return this.savedShape;
    }

    public final BoxInfo getVirtualBoxInfo() {
        return m40470o(this.notePage.getPageUniqueId());
    }

    /* renamed from: l */
    public final void m40467l() {
        this.compositeCommand.addCommand(AddTextShapeRichTextCommandAction.INSTANCE.buildRichTextCommand(this.shape, this.lastRichText));
    }

    /* renamed from: m */
    public final void m40468m() {
        HashMap hashMap = new HashMap();
        Pair pair = new Pair(MatrixKt.copy(this.lastShapeMatrix), MatrixKt.copy(this.shape.getShapeMatrix()));
        ShapeTextStyle shapeTextStyle = this.lastShapeStyle;
        hashMap.put(this.shape, new TransformDirectlyCommand.Infos(pair, new Pair(shapeTextStyle != null ? shapeTextStyle.m72374clone() : null, this.shape.getTextStyle())));
        this.compositeCommand.addCommand(new TransformDirectlyCommand(hashMap));
    }

    /* renamed from: n */
    public final BoxInfo m40469n() {
        BoxInfo virtualBoxInfo = getVirtualBoxInfo();
        if (virtualBoxInfo != null) {
            return virtualBoxInfo.getNoteInfo();
        }
        return null;
    }

    /* renamed from: o */
    public final BoxInfo m40470o(String pageId) {
        BoxInfo boxInfo = this.virtualBoxInfo;
        Object obj = null;
        if (Intrinsics.areEqual(boxInfo != null ? boxInfo.getId() : null, pageId)) {
            return this.virtualBoxInfo;
        }
        Iterator<T> it2 = EditorBundleKt.visibleBoxList(getEditorBundle()).iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            BoxInfo noteInfo = ((BoxInfo) next).getNoteInfo();
            if (Intrinsics.areEqual(noteInfo != null ? noteInfo.getId() : null, pageId)) {
                obj = next;
                break;
            }
        }
        return (BoxInfo) obj;
    }

    /* renamed from: p */
    public final boolean m40471p() {
        Matrix shapeMatrix = this.shape.getShapeMatrix();
        return (shapeMatrix == null || shapeMatrix.equals(this.lastShapeMatrix)) ? false : true;
    }

    /* renamed from: q */
    public final boolean m40472q() {
        return !RectFKt.approximatelyTheSame(this.shape.getBoundingRect(), this.lastShapeRect);
    }

    /* renamed from: r */
    public final boolean m40473r() {
        return !Intrinsics.areEqual(this.shape.getRichText(), this.lastRichText);
    }

    /* renamed from: s */
    public final RectF m40474s() {
        RectF rectF = this.editorRect;
        if (rectF == null) {
            return null;
        }
        BoxInfoUtils.INSTANCE.normalizeMatrix(m40469n()).mapRect(rectF);
        return rectF;
    }

    public final void setCompositeCommand(@NotNull CompositeCommand compositeCommand) {
        Intrinsics.checkNotNullParameter(compositeCommand, "<set-?>");
        this.compositeCommand = compositeCommand;
    }

    @NotNull
    public final UpdateTextShapeRectAction setEditorRect(@Nullable RectF editorRect) {
        this.editorRect = editorRect;
        return this;
    }

    @NotNull
    public final UpdateTextShapeRectAction setLastRichText(@Nullable String richText) {
        this.lastRichText = richText;
        return this;
    }

    @NotNull
    public final UpdateTextShapeRectAction setLastShapeMatrix(@NotNull Matrix mtx) {
        Intrinsics.checkNotNullParameter(mtx, "mtx");
        this.lastShapeMatrix = mtx;
        return this;
    }

    @NotNull
    public final UpdateTextShapeRectAction setOriginShape(@Nullable Shape shape) {
        RectF rectF;
        ShapeTextStyle textStyle;
        RectF boundingRect;
        if (shape == null || (boundingRect = shape.getBoundingRect()) == null || (rectF = RectFKt.copy(boundingRect)) == null) {
            rectF = new RectF();
        }
        this.lastShapeRect = rectF;
        this.lastShapeStyle = (shape == null || (textStyle = shape.getTextStyle()) == null) ? null : textStyle.m72374clone();
        return this;
    }

    @NotNull
    public final UpdateTextShapeRectAction setRenderRect(@Nullable RectF renderRect) {
        this.renderRect = renderRect;
        return this;
    }

    @NotNull
    public final UpdateTextShapeRectAction setSaveShape(boolean saveShape) {
        this.saveShape = saveShape;
        return this;
    }

    public final void setSavedShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<set-?>");
        this.savedShape = shape;
    }

    @NotNull
    public final UpdateTextShapeRectAction setShapeTransformBean(@NotNull ShapeTransformBean shapeTransformBean) {
        Intrinsics.checkNotNullParameter(shapeTransformBean, "shapeTransformBean");
        this.shapeTransformBean = shapeTransformBean;
        return this;
    }

    @NotNull
    public final UpdateTextShapeRectAction setTextHeight(float textHeight) {
        this.textHeight = textHeight;
        return this;
    }

    @NotNull
    public final UpdateTextShapeRectAction setTextWidth(float textWidth) {
        this.textWidth = textWidth;
        return this;
    }

    @NotNull
    public final UpdateTextShapeRectAction setTransformType(@Nullable TransformType transformType) {
        this.transformType = transformType;
        return this;
    }

    @NotNull
    public final UpdateTextShapeRectAction setUpdateRectOnly(boolean value) {
        this.updateRectOnly = value;
        return this;
    }

    @NotNull
    public final UpdateTextShapeRectAction setVirtualBoxInfo(@Nullable BoxInfo boxInfo) {
        this.virtualBoxInfo = boxInfo;
        return this;
    }

    /* renamed from: t */
    public final Observable<UpdateTextShapeRectAction> m40475t() {
        if (!this.textBoxView.isAttachedToWindow()) {
            Observable<UpdateTextShapeRectAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        int editorScaleWidthInt = this.textBoxView.getEditorScaleWidthInt();
        int editorScaleHeightInt = this.textBoxView.getEditorScaleHeightInt();
        if (this.saveShape && this.textBoxView.getEditor().supportRenderCache() && !TextRenderUtil.INSTANCE.isRenderCacheExists(this.shape, editorScaleWidthInt, editorScaleHeightInt)) {
            Observable map = new RenderTextShapeByEditorAction(this.textBoxView).setTextShape(this.shape).setRenderContext(this.renderContext).build().map(new C10246g());
            Intrinsics.checkNotNull(map);
            return map;
        }
        Observable<UpdateTextShapeRectAction> just2 = Observable.just(this);
        Intrinsics.checkNotNull(just2);
        return just2;
    }

    /* renamed from: u */
    public final void m40476u() {
        if (this.saveShape) {
            ShapeOptions shapeOptions = ShapeOptions.INSTANCE;
            shapeOptions.setVisible(this.shape, true);
            Shape shape = this.shape;
            shape.setText(HtmlUtils.INSTANCE.getHtmlTextContent(shape.getRichText()));
            Shape shape2 = this.shape;
            shape2.postConcat(shapeOptions.getTransformingMatrix(shape2));
            TextRenderUtil.INSTANCE.clearCache(this.shape);
            if (m40471p() || m40472q()) {
                m40468m();
            }
            if (m40473r()) {
                m40467l();
            }
        }
    }

    /* renamed from: v */
    public final Observable<Shape> m40477v() {
        List<? extends Shape> listOf;
        List<Shape> transformShapes;
        if (!this.saveShape) {
            Observable<Shape> just = Observable.just(this.shape);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        BoxInfo virtualBoxInfo = getVirtualBoxInfo();
        if (virtualBoxInfo == null) {
            Observable<Shape> just2 = Observable.just(this.shape);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        UndoRedoCommand undoRedoCommand = new UndoRedoCommand();
        ShapeTransformBean shapeTransformBean = this.shapeTransformBean;
        if (shapeTransformBean != null && (transformShapes = shapeTransformBean.getTransformShapes()) != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : transformShapes) {
                if (true ^ ShapeTypes.INSTANCE.isTextShape((Shape) obj)) {
                    arrayList.add(obj);
                }
            }
            if (!(!arrayList.isEmpty())) {
                arrayList = null;
            }
            if (arrayList != null) {
                ShapeKt.setVisible(arrayList, true);
                this.compositeCommand.addCommand(undoRedoCommand.removeShapes(arrayList));
            }
        }
        ShapeTransformBean shapeTransformBean2 = new ShapeTransformBean();
        shapeTransformBean2.setUseAddTransformedMethod(false);
        listOf = CollectionsKt__CollectionsJVMKt.listOf(this.shape);
        shapeTransformBean2.setTransformShapes(listOf);
        QuitTransformAction quitTransformAction = new QuitTransformAction(getEditorBundle(), this.renderContext, virtualBoxInfo, shapeTransformBean2);
        quitTransformAction.getChangedShapeBean().addRemoveShapeList(undoRedoCommand.getRemovedShapes());
        quitTransformAction.setAddToCmdStack(false);
        quitTransformAction.setQuitCompositeCommand(this.compositeCommand);
        Observable map = quitTransformAction.build().map(new C10247h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: w */
    public final UpdateTextShapeRectAction m40478w() throws Exception {
        new UpdateTextShapeRectRequest(getEditorBundle().getWorkBundle(), this.renderContext, this.shape).setRenderRect(this.renderRect).setEditorRect(m40474s()).setTextWidth(this.textWidth).setTextHeight(this.textHeight).setSaveShape(this.saveShape).setTransformType(this.transformType).setUpdateRectOnly(this.updateRectOnly).execute2();
        return this;
    }
}
