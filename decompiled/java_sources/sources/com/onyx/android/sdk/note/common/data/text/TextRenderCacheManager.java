package com.onyx.android.sdk.note.common.data.text;

import android.content.Context;
import android.util.LruCache;
import com.onegravity.rteditor.RTEditText;
import com.onegravity.rteditor.RTManager;
import com.onegravity.rteditor.api.DefaultProxyImpl;
import com.onegravity.rteditor.api.RTApi;
import com.onegravity.rteditor.api.RTMediaFactoryImpl;
import com.onegravity.rteditor.fonts.FontManager;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.TextRenderUtil;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextAlignType;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\t\b\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0012\u0010\u0005\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0014J\u000e\u0010\b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\n\u001a\u00020\tJ\b\u0010\u000b\u001a\u00020\u0003H\u0002J\b\u0010\r\u001a\u00020\fH\u0002J\u0018\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0003H\u0002R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/text/TextRenderCacheManager;", "Landroid/util/LruCache;", "", "Lcom/onegravity/rteditor/RTEditText;", "key", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "textShape", "getRenderView", "", Constants.CLEAR_ATTRIBUTES, "c", "Lcom/onegravity/rteditor/RTManager;", "b", "renderView", "a", "Lcom/onegravity/rteditor/RTManager;", "rtManager", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TextRenderCacheManager extends LruCache<String, RTEditText> {

    @NotNull
    public static final TextRenderCacheManager INSTANCE = new TextRenderCacheManager();

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public static RTManager rtManager;

    public TextRenderCacheManager() {
        super(ResManager.INSTANCE.getInteger(C7485R.integer.text_render_cache_size));
    }

    /* renamed from: a */
    public final void m33724a(Shape textShape, RTEditText renderView) {
        ShapeTextStyle textStyle = textShape.getTextStyle();
        if (textStyle == null) {
            textStyle = new ShapeTextStyle();
        }
        renderView.setTypeface(FontManager.getTypeFaceByCustomFontPath(textStyle.getFontFace()));
        renderView.setTextAlignment(ShapeTextAlignType.INSTANCE.toTextAlignment(TextRenderUtil.INSTANCE.getAlignTypeCompat(textStyle, textShape.getRichText())));
        renderView.setTextSize(0, textStyle.getTextSize());
        renderView.setTextColor(textShape.getStrokeColor());
        renderView.setLineSpacing(0.0f, textStyle.getTextSpacing());
        String richText = textShape.getRichText();
        int hashCode = richText != null ? richText.hashCode() : 0;
        Integer num = (Integer) renderView.getTag();
        if (num == null || hashCode != num.intValue()) {
            renderView.setRichTextEditing(true, textShape.getRichText());
        }
        renderView.setTag(Integer.valueOf(hashCode));
    }

    /* renamed from: b */
    public final RTManager m33725b() {
        if (rtManager == null) {
            Context appContext = ResManager.INSTANCE.getAppContext();
            rtManager = new RTManager(new RTApi(appContext, new DefaultProxyImpl(), new RTMediaFactoryImpl(appContext)), null);
        }
        RTManager rTManager = rtManager;
        Intrinsics.checkNotNull(rTManager);
        return rTManager;
    }

    /* renamed from: c */
    public final RTEditText m33726c() {
        RTEditText initNativeEditor = TextRenderUtil.INSTANCE.initNativeEditor(ResManager.INSTANCE.getAppContext());
        m33725b().registerEditor(initNativeEditor, true);
        return initNativeEditor;
    }

    public final void clear() {
        evictAll();
        RTManager rTManager = rtManager;
        if (rTManager != null) {
            rTManager.onDestroy(false);
        }
        rtManager = null;
        Debug.INSTANCE.m32052i(TextRenderCacheManager.class, "clear text render cache!", new Object[0]);
    }

    @NotNull
    public final RTEditText getRenderView(@NotNull Shape textShape) {
        Intrinsics.checkNotNullParameter(textShape, "textShape");
        RTEditText rTEditText = get(textShape.getShapeUniqueId());
        Intrinsics.checkNotNull(rTEditText);
        m33724a(textShape, rTEditText);
        return rTEditText;
    }

    @Override // android.util.LruCache
    @NotNull
    public RTEditText create(@Nullable String key) {
        return m33726c();
    }
}
