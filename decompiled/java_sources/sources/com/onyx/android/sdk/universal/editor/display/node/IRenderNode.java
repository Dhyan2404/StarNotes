package com.onyx.android.sdk.universal.editor.display.node;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.Size;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0018\u001a\u00020\u0019H&J\b\u0010\u001a\u001a\u00020\u001bH&J\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u0019H&J\b\u0010\u001e\u001a\u00020\u001bH&J\b\u0010\u001f\u001a\u00020 H&J\u0010\u0010!\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020 H&J\u0010\u0010#\u001a\u00020\u001b2\u0006\u0010$\u001a\u00020%H&J\b\u0010&\u001a\u00020'H&R\u0018\u0010\u0002\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u0012\u0010\b\u001a\u00020\tX¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0018\u0010\f\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\r\u0010\u0005\"\u0004\b\u000e\u0010\u0007R\u0018\u0010\u000f\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0010\u0010\u0005\"\u0004\b\u0011\u0010\u0007R\u0012\u0010\u0012\u001a\u00020\u0013X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0012\u0010\u0016\u001a\u00020\tX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u000b¨\u0006("}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;", "", "alpha", "", "getAlpha", "()F", "setAlpha", "(F)V", "height", "", "getHeight", "()I", "translationX", "getTranslationX", "setTranslationX", "translationY", "getTranslationY", "setTranslationY", CouchFieldKey.KEY_UNIQUE_ID, "", "getUniqueId", "()Ljava/lang/String;", "width", "getWidth", "beginRecording", "Landroid/graphics/Canvas;", "discardDisplayList", "", "drawInto", IStyleSheet.CLASS_CANVAS, "endRecording", "hasDisplayList", "", "setClipToBounds", "clip", "setPosition", "rect", "Landroid/graphics/Rect;", "size", "Landroid/util/Size;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface IRenderNode {
    @NotNull
    Canvas beginRecording();

    void discardDisplayList();

    void drawInto(@NotNull Canvas canvas);

    void endRecording();

    float getAlpha();

    int getHeight();

    float getTranslationX();

    float getTranslationY();

    @NotNull
    String getUniqueId();

    int getWidth();

    boolean hasDisplayList();

    void setAlpha(float f);

    void setClipToBounds(boolean clip);

    void setPosition(@NotNull Rect rect);

    void setTranslationX(float f);

    void setTranslationY(float f);

    @NotNull
    Size size();
}
