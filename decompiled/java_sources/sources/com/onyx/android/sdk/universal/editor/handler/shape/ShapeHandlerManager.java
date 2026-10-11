package com.onyx.android.sdk.universal.editor.handler.shape;

import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.config.EditorTouchMode;
import com.onyx.android.sdk.universal.editor.events.note.ShapeHandlerChangedEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u0015\u0018\u0000 H2\u00020\u0001:\u0001HB\u000f\u0012\u0006\u00103\u001a\u000201¢\u0006\u0004\bF\u0010GJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0006\u0010\u000b\u001a\u00020\u0002J\u0016\u0010\u000f\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010\u0010\u001a\u00020\u0002J\u000e\u0010\u0010\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007J\u0016\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0012J\u000e\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\tJ\u0006\u0010\u0016\u001a\u00020\u0002J\u0006\u0010\u0017\u001a\u00020\u0012J\b\u0010\u0018\u001a\u0004\u0018\u00010\rJ\u0006\u0010\u0019\u001a\u00020\tJ\u0006\u0010\u001a\u001a\u00020\tJ\u0006\u0010\u001b\u001a\u00020\u0012J\u0006\u0010\u001c\u001a\u00020\u0012J\u0006\u0010\u001d\u001a\u00020\u0012J\u0006\u0010\u001e\u001a\u00020\u0012J\u0006\u0010\u001f\u001a\u00020\u0012J\u0006\u0010 \u001a\u00020\u0012J\u0006\u0010!\u001a\u00020\u0012J\u0006\u0010\"\u001a\u00020\u0012J\u0006\u0010#\u001a\u00020\u0012J\u0006\u0010$\u001a\u00020\u0012J\u0006\u0010%\u001a\u00020\u0012J\u000e\u0010(\u001a\u00020\u00122\u0006\u0010'\u001a\u00020&J\u0016\u0010,\u001a\u00020\u00122\u0006\u0010*\u001a\u00020)2\u0006\u0010\u0005\u001a\u00020+J\u000e\u0010/\u001a\u00020\u00022\u0006\u0010.\u001a\u00020-J\u0010\u00100\u001a\u00020\u00122\b\u0010\u0005\u001a\u0004\u0018\u00010+R\u0016\u00103\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u00102R \u00106\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\r048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u00105R\u0016\u00108\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u00107R\"\u0010>\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b9\u00107\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\"\u0010E\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010D¨\u0006I"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;", "", "", "c", "Lcom/onyx/android/sdk/universal/editor/events/note/ShapeHandlerChangedEvent;", NotificationCompat.CATEGORY_EVENT, "a", "", "shapeType", "", "b", "destroy", "key", "Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;", Constants.TRANSLET_OUTPUT_PNAME, "registerHandler", "activeShapeDrawingProvider", CouchFieldKey.KEY_PROVIDER_NAME, "", "updateToolbar", "activeUserProvider", "activeShapeProvider", "restoreUserProvider", "isProviderChanged", "getActiveHandler", "getActiveProviderName", "getActiveProvider", "isTextInputHandler", "isUniversalShapeHandler", "isSelectionHandler", "isTransformHandler", "isExcerptHandler", "isShapeDrawingHandler", "isEraserHandler", "isTextExcerptHandler", "isAnnotationSelection", "isTextSelectionMode", "supportSelectTextByLongPress", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "onSingleTapUp", "Landroid/view/View;", "view", "Landroid/view/MotionEvent;", "onTouchEvent", "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;", "touchMode", "updateTouchMode", "isHandlerProcessing", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "Ljava/util/Map;", "handlerMap", Constants.STRING_SIG, "activeProviderName", "d", "getUserProviderName", "()Ljava/lang/String;", "setUserProviderName", "(Ljava/lang/String;)V", "userProviderName", "e", Constants.HASIDCALL_INDEX_SIG, "getStylusOnly", Constants.BOOLEAN_VALUE_SIG, "setStylusOnly", "(Z)V", "stylusOnly", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapeHandlerManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeHandlerManager.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,226:1\n1855#2,2:227\n215#3,2:229\n*S KotlinDebug\n*F\n+ 1 ShapeHandlerManager.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager\n*L\n50#1:227,2\n203#1:229,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeHandlerManager {

    @NotNull
    public static final String ANNOTATION_SELECTION_PROVIDER = "annotation_selection_provider";

    @NotNull
    public static final String DUMMY_PROVIDER = "dummy";

    @NotNull
    public static final String ERASE_PROVIDER = "erase_provider";

    @NotNull
    public static final String EXCERPT_PROVIDER = "excerpt_provider";

    @NotNull
    public static final String LASER_SHAPE_PROVIDER = "laser_shape_drawing_provider";

    @NotNull
    public static final String SELECTION_PROVIDER = "selection_provider";

    @NotNull
    public static final String SHAPE_DRAWING_PROVIDER = "shape_drawing_provider";

    @NotNull
    public static final String SHAPE_IMAGE_PROVIDER = "shape_image";

    @NotNull
    public static final String TEXT_INPUT_PROVIDER = "text_input_provider";

    @NotNull
    public static final String TEXT_SELECTION_PROVIDER = "text_selection_provider";

    @NotNull
    public static final String TRANSFORM_PROVIDER = "transform_provider";

    @NotNull
    public static final String UNIVERSAL_SHAPE_PROVIDER = "universal_shape_drawing_provider";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public EditorBundle editorBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Map<String, BaseShapeHandler> handlerMap;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String activeProviderName;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public String userProviderName;

    /* renamed from: e, reason: from kotlin metadata */
    public boolean stylusOnly;

    public ShapeHandlerManager(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        this.handlerMap = new LinkedHashMap();
        this.activeProviderName = "dummy";
        this.userProviderName = "dummy";
        m41044c();
    }

    /* renamed from: a */
    public final void m41042a(ShapeHandlerChangedEvent event) {
        if (Intrinsics.areEqual(this.activeProviderName, event.getActiveProviderName())) {
            return;
        }
        BaseShapeHandler activeHandler = getActiveHandler();
        if (activeHandler != null) {
            activeHandler.onDeactivate();
        }
        this.activeProviderName = event.getActiveProviderName();
        Debug.INSTANCE.m32035d(ShapeHandlerManager.class, "activeShapeHandler = " + this.activeProviderName + ", userProviderName = " + this.userProviderName, new Object[0]);
        BaseShapeHandler activeHandler2 = getActiveHandler();
        if (activeHandler2 != null) {
            activeHandler2.onActivate();
        }
        EditorBundleKt.postEvent(this.editorBundle, event);
    }

    public final void activeShapeDrawingProvider() {
        activeUserProvider(SHAPE_DRAWING_PROVIDER, true);
    }

    public final void activeShapeProvider(@NotNull String providerName) {
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        Debug.INSTANCE.m32037d("activeShapeProvider: " + providerName);
        m41042a(new ShapeHandlerChangedEvent(providerName, false));
    }

    public final void activeUserProvider(@NotNull String providerName, boolean updateToolbar) {
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        Debug.INSTANCE.m32037d("activeProvider: " + this.activeProviderName + "  userProvider: " + this.userProviderName);
        m41042a(new ShapeHandlerChangedEvent(providerName, updateToolbar));
        this.userProviderName = this.activeProviderName;
    }

    /* renamed from: b */
    public final String m41043b(int shapeType) {
        if (shapeType == 16) {
            return TEXT_INPUT_PROVIDER;
        }
        if (shapeType == 19) {
            return SHAPE_IMAGE_PROVIDER;
        }
        if (shapeType == 1003) {
            return LASER_SHAPE_PROVIDER;
        }
        switch (shapeType) {
            case 39:
                return SHAPE_DRAWING_PROVIDER;
            case 40:
                return UNIVERSAL_SHAPE_PROVIDER;
            case 41:
                return EXCERPT_PROVIDER;
            default:
                return ShapeTypes.INSTANCE.isPenShape(shapeType) ? SHAPE_DRAWING_PROVIDER : "dummy";
        }
    }

    /* renamed from: c */
    public final void m41044c() {
        registerHandler("dummy", new DummyHandler(this.editorBundle));
        registerHandler(SHAPE_DRAWING_PROVIDER, new ShapeDrawingHandler(this.editorBundle));
        registerHandler(UNIVERSAL_SHAPE_PROVIDER, new UniversalShapeHandler(this.editorBundle));
        registerHandler(LASER_SHAPE_PROVIDER, new LaserShapeDrawingHandler(this.editorBundle));
        registerHandler(ERASE_PROVIDER, new EraseHandler(this.editorBundle));
        registerHandler(SELECTION_PROVIDER, new SelectionHandler(this.editorBundle));
        registerHandler(TEXT_SELECTION_PROVIDER, new TextSelectionHandler(this.editorBundle));
        registerHandler(ANNOTATION_SELECTION_PROVIDER, new AnnotationSelectionHandler(this.editorBundle));
        registerHandler(TRANSFORM_PROVIDER, new TransformHandler(this.editorBundle));
        registerHandler(TEXT_INPUT_PROVIDER, new TextInputHandler(this.editorBundle));
        registerHandler(EXCERPT_PROVIDER, new ExcerptHandler(this.editorBundle));
        registerHandler(SHAPE_IMAGE_PROVIDER, new ImageHandler(this.editorBundle));
    }

    public final void destroy() {
        Iterator<T> it2 = this.handlerMap.values().iterator();
        while (it2.hasNext()) {
            ((BaseShapeHandler) it2.next()).destroy();
        }
        this.handlerMap.clear();
    }

    @Nullable
    public final BaseShapeHandler getActiveHandler() {
        return this.handlerMap.get(this.activeProviderName);
    }

    @NotNull
    /* renamed from: getActiveProvider, reason: from getter */
    public final String getActiveProviderName() {
        return this.activeProviderName;
    }

    @NotNull
    public final String getActiveProviderName() {
        return this.activeProviderName;
    }

    public final boolean getStylusOnly() {
        return this.stylusOnly;
    }

    @NotNull
    public final String getUserProviderName() {
        return this.userProviderName;
    }

    public final boolean isAnnotationSelection() {
        return Intrinsics.areEqual(this.activeProviderName, ANNOTATION_SELECTION_PROVIDER);
    }

    public final boolean isEraserHandler() {
        return Intrinsics.areEqual(this.activeProviderName, ERASE_PROVIDER);
    }

    public final boolean isExcerptHandler() {
        return Intrinsics.areEqual(this.activeProviderName, EXCERPT_PROVIDER);
    }

    public final boolean isHandlerProcessing(@Nullable MotionEvent event) {
        BaseShapeHandler activeHandler = getActiveHandler();
        return activeHandler != null && activeHandler.isProcessing(event);
    }

    public final boolean isProviderChanged() {
        return !Intrinsics.areEqual(this.activeProviderName, this.userProviderName);
    }

    public final boolean isSelectionHandler() {
        return Intrinsics.areEqual(this.activeProviderName, SELECTION_PROVIDER);
    }

    public final boolean isShapeDrawingHandler() {
        return Intrinsics.areEqual(this.activeProviderName, SHAPE_DRAWING_PROVIDER);
    }

    public final boolean isTextExcerptHandler() {
        return isExcerptHandler() && MMKVNote.INSTANCE.isTextExcerpt();
    }

    public final boolean isTextInputHandler() {
        return Intrinsics.areEqual(this.activeProviderName, TEXT_INPUT_PROVIDER);
    }

    public final boolean isTextSelectionMode() {
        return Intrinsics.areEqual(this.activeProviderName, TEXT_SELECTION_PROVIDER) || isTextExcerptHandler();
    }

    public final boolean isTransformHandler() {
        return Intrinsics.areEqual(this.activeProviderName, TRANSFORM_PROVIDER);
    }

    public final boolean isUniversalShapeHandler() {
        return Intrinsics.areEqual(this.activeProviderName, UNIVERSAL_SHAPE_PROVIDER);
    }

    public final boolean onSingleTapUp(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        BaseShapeHandler activeHandler = getActiveHandler();
        if (activeHandler != null) {
            return activeHandler.onSingleTapUp(touchPoint);
        }
        return false;
    }

    public final boolean onTouchEvent(@NotNull View view, @NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(event, "event");
        if (!this.stylusOnly) {
            BaseShapeHandler activeHandler = getActiveHandler();
            if (activeHandler != null) {
                return activeHandler.onTouchEvent(view, event);
            }
            return false;
        }
        if (MotionEventKt.isDoneAction(event)) {
            this.stylusOnly = false;
        }
        BaseShapeHandler activeHandler2 = getActiveHandler();
        if (activeHandler2 == null) {
            return true;
        }
        activeHandler2.onTouchEvent(view, event);
        return true;
    }

    public final void registerHandler(@NotNull String key, @NotNull BaseShapeHandler handler) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.handlerMap.put(key, handler);
    }

    public final void restoreUserProvider() {
        activeUserProvider(this.userProviderName, false);
    }

    public final void setStylusOnly(boolean z) {
        this.stylusOnly = z;
    }

    public final void setUserProviderName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userProviderName = str;
    }

    public final boolean supportSelectTextByLongPress() {
        return true;
    }

    public final void updateTouchMode(@NotNull EditorTouchMode touchMode) {
        Intrinsics.checkNotNullParameter(touchMode, "touchMode");
        Iterator<Map.Entry<String, BaseShapeHandler>> it2 = this.handlerMap.entrySet().iterator();
        while (it2.hasNext()) {
            it2.next().getValue().updateTouchMode(touchMode);
        }
    }

    public final void activeShapeDrawingProvider(int shapeType) {
        activeUserProvider(m41043b(shapeType), true);
    }
}
