package com.onyx.android.sdk.universal.editor.eventhandler;

import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010%\n\u0002\b\b\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\f\u001a\u00020\u0004J\b\u0010\r\u001a\u00020\u0004H\u0002R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0003\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R#\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\b0\u00138\u0006¢\u0006\f\n\u0004\b\r\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;", "", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "init", "", "key", "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;", "eventHandler", "registerEventHandler", "unregisterEventHandler", "destroy", "a", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "", "Ljava/util/Map;", "getEventHandlerMap", "()Ljava/util/Map;", "eventHandlerMap", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEventHandlerManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventHandlerManager.kt\ncom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,64:1\n1855#2,2:65\n*S KotlinDebug\n*F\n+ 1 EventHandlerManager.kt\ncom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager\n*L\n37#1:65,2\n*E\n"})
/* loaded from: classes8.dex */
public final class EventHandlerManager {

    @NotNull
    public static final String BEAUTIFY = "beautify";

    @NotNull
    public static final String DOCUMENT = "document";

    @NotNull
    public static final String EDITOR_ENCRYPTION = "editor_encryption";

    @NotNull
    public static final String ERASE = "erase";

    @NotNull
    public static final String LONG_PRESS = "long_press";

    @NotNull
    public static final String MAGNIFIER = "magnifier";

    @NotNull
    public static final String MOUSE = "mouse";

    @NotNull
    public static final String NOTE = "note";

    @NotNull
    public static final String OBSERVER = "observer";

    @NotNull
    public static final String OPERATION_TIP = "operation_tip";

    @NotNull
    public static final String PAGE = "page";

    @NotNull
    public static final String RECEIVER = "receiver";

    @NotNull
    public static final String RULER = "ruler";

    @NotNull
    public static final String SCALE = "scale";

    @NotNull
    public static final String SHAPES_LOCATION_BAR = "shapes_location_bar";

    @NotNull
    public static final String SHAPES_SELECTION = "shapes_selection";

    @NotNull
    public static final String STASH = "stash";

    @NotNull
    public static final String STATISTIC = "statistic";

    @NotNull
    public static final String SYNC = "sync";

    @NotNull
    public static final String TEMPLATE = "template";

    @NotNull
    public static final String TEXT_INDEX = "text_index";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Map<String, BaseEventHandler> eventHandlerMap = new LinkedHashMap();
    public EditorBundle editorBundle;

    /* renamed from: a */
    public final void m40871a() {
        this.eventHandlerMap.put("note", new NoteEventHandler(getEditorBundle()));
        this.eventHandlerMap.put(RECEIVER, new ReceiverEventHandler(getEditorBundle()));
        this.eventHandlerMap.put(OBSERVER, new ObserverEventHandler(getEditorBundle()));
    }

    public final void destroy() {
        Iterator<T> it2 = this.eventHandlerMap.values().iterator();
        while (it2.hasNext()) {
            ((BaseEventHandler) it2.next()).destroy();
        }
        this.eventHandlerMap.clear();
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            return editorBundle;
        }
        Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        return null;
    }

    @NotNull
    public final Map<String, BaseEventHandler> getEventHandlerMap() {
        return this.eventHandlerMap;
    }

    public final void init(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        setEditorBundle(editorBundle);
        m40871a();
    }

    public final void registerEventHandler(@NotNull String key, @NotNull BaseEventHandler eventHandler) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(eventHandler, "eventHandler");
        this.eventHandlerMap.put(key, eventHandler);
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<set-?>");
        this.editorBundle = editorBundle;
    }

    public final void unregisterEventHandler(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.eventHandlerMap.remove(key);
    }
}
