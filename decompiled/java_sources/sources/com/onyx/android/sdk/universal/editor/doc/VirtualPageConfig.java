package com.onyx.android.sdk.universal.editor.doc;

import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.reader.api.PageId;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0007\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b<\u0010=J\u0006\u0010\u0002\u001a\u00020\u0000J\u0006\u0010\u0004\u001a\u00020\u0003R\"\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\"\u0010\u0010\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u0007\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000bR\"\u0010\u0014\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0007\u001a\u0004\b\u0012\u0010\t\"\u0004\b\u0013\u0010\u000bR\"\u0010\u0018\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0007\u001a\u0004\b\u0016\u0010\t\"\u0004\b\u0017\u0010\u000bR\"\u0010 \u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\"\u0010$\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\u0007\u001a\u0004\b\"\u0010\t\"\u0004\b#\u0010\u000bR\"\u0010,\u001a\u00020%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\"\u00103\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\"\u0010;\u001a\u0002048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:¨\u0006>"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;", "", "copy", "", "parseContentPageIndex", "", "a", Constants.STRING_SIG, "getPageId", "()Ljava/lang/String;", "setPageId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_TOC_PAGE_ID, "b", "getContentType", "setContentType", CouchFieldKey.KEY_CONTENT_TYPE, "c", "getContentPath", "setContentPath", "contentPath", "d", "getContentPageId", "setContentPageId", CouchFieldKey.KEY_CONTENT_PAGE_ID, "Landroid/graphics/RectF;", "e", "Landroid/graphics/RectF;", "getContentOriginRectF", "()Landroid/graphics/RectF;", "setContentOriginRectF", "(Landroid/graphics/RectF;)V", "contentOriginRectF", C6997f.f39671c, "getContentId", "setContentId", "contentId", "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;", "getSizeFormat", "()Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;", "setSizeFormat", "(Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;)V", CouchFieldKey.KEY_SIZE_FORMAT, C6999h.f39688c, "I", "getColorTheme", "()I", "setColorTheme", "(I)V", "colorTheme", "", "i", "F", "getRotation", "()F", "setRotation", "(F)V", "rotation", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class VirtualPageConfig {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String pageId = "";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String contentType = ContentConstants.TYPE_GEO_LAYOUT;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String contentPath = "";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public String contentPageId = "";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public RectF contentOriginRectF = new RectF();

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public String contentId = "";

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public SizeFormat sizeFormat = SizeFormat.f45503A4;

    /* renamed from: h, reason: from kotlin metadata */
    public int colorTheme;

    /* renamed from: i, reason: from kotlin metadata */
    public float rotation;

    @NotNull
    public final VirtualPageConfig copy() {
        VirtualPageConfig virtualPageConfig = new VirtualPageConfig();
        virtualPageConfig.pageId = this.pageId;
        virtualPageConfig.contentType = this.contentType;
        virtualPageConfig.contentPath = this.contentPath;
        virtualPageConfig.contentPageId = this.contentPageId;
        virtualPageConfig.contentId = this.contentId;
        virtualPageConfig.contentOriginRectF = RectFKt.copy(this.contentOriginRectF);
        virtualPageConfig.sizeFormat = this.sizeFormat;
        virtualPageConfig.colorTheme = this.colorTheme;
        virtualPageConfig.rotation = this.rotation;
        return virtualPageConfig;
    }

    public final int getColorTheme() {
        return this.colorTheme;
    }

    @NotNull
    public final String getContentId() {
        return this.contentId;
    }

    @NotNull
    public final RectF getContentOriginRectF() {
        return this.contentOriginRectF;
    }

    @NotNull
    public final String getContentPageId() {
        return this.contentPageId;
    }

    @NotNull
    public final String getContentPath() {
        return this.contentPath;
    }

    @NotNull
    public final String getContentType() {
        return this.contentType;
    }

    @NotNull
    public final String getPageId() {
        return this.pageId;
    }

    public final float getRotation() {
        return this.rotation;
    }

    @NotNull
    public final SizeFormat getSizeFormat() {
        return this.sizeFormat;
    }

    public final int parseContentPageIndex() {
        PageId pageId = (PageId) JSONUtils.INSTANCE.parseObject(this.contentPageId, PageId.class);
        if (pageId == null) {
            pageId = new PageId(null, null, MathUtils.INSTANCE.parseInt(this.contentPageId), 3, null);
        }
        return pageId.getPageIndex();
    }

    public final void setColorTheme(int i) {
        this.colorTheme = i;
    }

    public final void setContentId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentId = str;
    }

    public final void setContentOriginRectF(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.contentOriginRectF = rectF;
    }

    public final void setContentPageId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentPageId = str;
    }

    public final void setContentPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentPath = str;
    }

    public final void setContentType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentType = str;
    }

    public final void setPageId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageId = str;
    }

    public final void setRotation(float f) {
        this.rotation = f;
    }

    public final void setSizeFormat(@NotNull SizeFormat sizeFormat) {
        Intrinsics.checkNotNullParameter(sizeFormat, "<set-?>");
        this.sizeFormat = sizeFormat;
    }
}
