package com.onyx.galaxy.note.editor.view.popup;

import android.content.ClipData;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeCopyUtils;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkType;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTagBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.data.DragEventData;
import com.onyx.android.sdk.universal.editor.data.GlobalCopyData;
import com.onyx.android.sdk.universal.editor.events.note.HandleMultiImageDropEvent;
import com.onyx.android.sdk.universal.editor.events.note.InsertLinkEvent;
import com.onyx.android.sdk.universal.editor.events.note.InsertShapesEvent;
import com.onyx.android.sdk.universal.editor.events.note.InsertTagEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartTextInputHandlerEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.handler.finger.HandlerManager;
import com.onyx.galaxy.note.databinding.PopupLongPressPasteBinding;
import com.onyx.galaxy.note.editor.view.popup.LongPressPastePopup;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u001f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\b\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u001b\u0010\r\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/LongPressPastePopup;", "Lcom/onyx/galaxy/note/editor/view/popup/EditorViewTouchPopup;", "", "m", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "r", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/galaxy/note/databinding/PopupLongPressPasteBinding;", "s", "Lkotlin/Lazy;", "l", "()Lcom/onyx/galaxy/note/databinding/PopupLongPressPasteBinding;", "binding", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LongPressPastePopup extends EditorViewTouchPopup {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    @Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0018\u0010\b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J.\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0014\u0010\u000e\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/LongPressPastePopup$Companion;", "", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "", "paste", "a", "", "e", "c", "Lkotlin/Pair;", "", "pair", "d", "b", C6997f.f39671c, Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    @SourceDebugExtension({"SMAP\nLongPressPastePopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongPressPastePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/LongPressPastePopup$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,168:1\n1747#2,3:169\n*S KotlinDebug\n*F\n+ 1 LongPressPastePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/LongPressPastePopup$Companion\n*L\n157#1:169,3\n*E\n"})
    /* loaded from: classes9.dex */
    public static final class Companion {

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes9.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[GlobalCopyData.Type.values().length];
                try {
                    iArr[GlobalCopyData.Type.Link.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[GlobalCopyData.Type.Tag.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[GlobalCopyData.Type.Shapes.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final void m49014a(EditorBundle editorBundle, TouchPoint touchPoint) {
            if (m49016c(editorBundle, touchPoint) || m49015b(editorBundle, touchPoint)) {
                return;
            }
            m49018e(editorBundle, touchPoint);
        }

        /* renamed from: b */
        public final boolean m49015b(EditorBundle editorBundle, TouchPoint touchPoint) {
            ClipData primaryClip;
            ResManager resManager = ResManager.INSTANCE;
            if (ContextKt.getClipImageData(resManager.getAppContext()) == null || (primaryClip = ContextKt.getClipboardManager(resManager.getAppContext()).getPrimaryClip()) == null) {
                return false;
            }
            EditorBundleKt.postEvent(editorBundle, (HandleMultiImageDropEvent) AnyKt.transform(new DragEventData(primaryClip, touchPoint, null, 4, null), new Function1<DragEventData, HandleMultiImageDropEvent>() { // from class: com.onyx.galaxy.note.editor.view.popup.LongPressPastePopup$Companion$pasteClipImageData$event$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final HandleMultiImageDropEvent invoke(@NotNull DragEventData it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return new HandleMultiImageDropEvent(it2);
                }
            }));
            return true;
        }

        /* renamed from: c */
        public final boolean m49016c(EditorBundle editorBundle, TouchPoint touchPoint) {
            Pair<String, String> clipLinkData = ContextKt.getClipLinkData(ResManager.INSTANCE.getAppContext());
            if (clipLinkData != null && StringUtils.containsIgnoreCase(clipLinkData.getSecond(), "http")) {
                return m49017d(editorBundle, clipLinkData, touchPoint);
            }
            return false;
        }

        /* renamed from: d */
        public final boolean m49017d(EditorBundle editorBundle, Pair<String, String> pair, TouchPoint touchPoint) {
            ShapeLinkBean shapeLinkBean = new ShapeLinkBean();
            shapeLinkBean.setKey(ShapeLinkType.LINK_URL);
            String first = pair.getFirst();
            if (first == null) {
                first = pair.getSecond();
            }
            shapeLinkBean.setRemark(first);
            shapeLinkBean.setValue(pair.getSecond());
            shapeLinkBean.setDisplayStyle(ShapeLinkBean.DisplayStyle.INSTANCE.getICON_TITLE_BOX());
            EditorBundleKt.postEvent(editorBundle, new InsertLinkEvent(shapeLinkBean, touchPoint));
            return true;
        }

        /* renamed from: e */
        public final boolean m49018e(EditorBundle editorBundle, TouchPoint touchPoint) {
            boolean contains$default;
            String clipTextData = ContextKt.getClipTextData(ResManager.INSTANCE.getAppContext());
            if (clipTextData == null) {
                return false;
            }
            if (StringKt.isUrl(clipTextData)) {
                contains$default = StringsKt__StringsKt.contains$default((CharSequence) clipTextData, (CharSequence) " ", false, 2, (Object) null);
                if (!contains$default) {
                    return m49017d(editorBundle, new Pair<>(null, clipTextData), touchPoint);
                }
            }
            EditorBundleKt.postEvent(editorBundle, new StartTextInputHandlerEvent(clipTextData, false, touchPoint, true));
            return true;
        }

        /* renamed from: f */
        public final void m49019f(EditorBundle editorBundle, TouchPoint touchPoint) {
            GlobalBundle globalBundle = GlobalBundle.INSTANCE;
            GlobalCopyData copyData = globalBundle.getCopyData();
            int i = WhenMappings.$EnumSwitchMapping$0[copyData.getType().ordinal()];
            boolean z = true;
            if (i == 1) {
                Object data = copyData.getData();
                ShapeLinkBean shapeLinkBean = data instanceof ShapeLinkBean ? (ShapeLinkBean) data : null;
                if (shapeLinkBean == null) {
                    return;
                }
                EditorBundleKt.postEvent(editorBundle, new InsertLinkEvent(shapeLinkBean, touchPoint));
                if (shapeLinkBean.isLinkAudioType()) {
                    globalBundle.clearClipData();
                    return;
                }
                return;
            }
            if (i == 2) {
                Object data2 = copyData.getData();
                ShapeTagBean shapeTagBean = data2 instanceof ShapeTagBean ? (ShapeTagBean) data2 : null;
                if (shapeTagBean == null) {
                    return;
                }
                EditorBundleKt.postEvent(editorBundle, new InsertTagEvent(shapeTagBean, touchPoint, false, 4, null));
                return;
            }
            if (i != 3) {
                return;
            }
            Object data3 = copyData.getData();
            List<? extends Shape> list = data3 instanceof List ? (List) data3 : null;
            if (list == null) {
                return;
            }
            List<Shape> cloneNewShapes = ShapeCopyUtils.INSTANCE.cloneNewShapes(list);
            EditorBundleKt.postEvent(editorBundle, new InsertShapesEvent(cloneNewShapes, touchPoint, true));
            List<Shape> list2 = cloneNewShapes;
            if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                Iterator<T> it2 = list2.iterator();
                while (it2.hasNext()) {
                    if (ShapeTypes.INSTANCE.isLinkAudioType((Shape) it2.next())) {
                        break;
                    }
                }
            }
            z = false;
            if (z) {
                GlobalBundle.INSTANCE.clearClipData();
            }
        }

        public final void paste(@NotNull EditorBundle editorBundle, @NotNull TouchPoint touchPoint) {
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
            if (HandlerManager.checkNoteLayer$default(editorBundle.getUiBundle().getHandlerManager(), false, 1, null)) {
                GlobalBundle globalBundle = GlobalBundle.INSTANCE;
                if (globalBundle.hasCopyData()) {
                    m49019f(editorBundle, touchPoint);
                } else if (globalBundle.hasClipData()) {
                    m49014a(editorBundle, touchPoint);
                }
            }
        }

        public Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LongPressPastePopup(@NotNull final Context context, @NotNull EditorBundle editorBundle, @NotNull TouchPoint touchPoint) {
        super(context, touchPoint);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        this.editorBundle = editorBundle;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupLongPressPasteBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.LongPressPastePopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupLongPressPasteBinding invoke() {
                return PopupLongPressPasteBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        if (BuildKt.isApiLevelAbove(29)) {
            setTouchModal(false);
        }
        setOutsideTouchable(true);
        m49013m();
    }

    /* renamed from: n */
    public static final void m49011n(LongPressPastePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        INSTANCE.paste(this$0.editorBundle, this$0.getTouchPoint());
        this$0.dismiss();
    }

    /* renamed from: l */
    public final PopupLongPressPasteBinding m49012l() {
        return (PopupLongPressPasteBinding) this.binding.getValue();
    }

    /* renamed from: m */
    public final void m49013m() {
        View root = m49012l().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m49012l().paste.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.j5j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LongPressPastePopup.m49011n(LongPressPastePopup.this, view);
            }
        });
    }
}
