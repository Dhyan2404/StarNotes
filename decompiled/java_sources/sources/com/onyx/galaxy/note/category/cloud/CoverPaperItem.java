package com.onyx.galaxy.note.category.cloud;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0002\b/\n\u0002\u0010\t\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bf\u0010gR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\"\u0010\u0019\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\f\u001a\u0004\b\u0017\u0010\u000e\"\u0004\b\u0018\u0010\u0010R\"\u0010\u001d\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0004\u001a\u0004\b\u001b\u0010\u0006\"\u0004\b\u001c\u0010\bR\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\"\u0010)\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010 \u001a\u0004\b'\u0010\"\"\u0004\b(\u0010$R\"\u00101\u001a\u00020*8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\"\u00105\u001a\u00020*8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u0010,\u001a\u0004\b3\u0010.\"\u0004\b4\u00100R\"\u00109\u001a\u00020*8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u0010,\u001a\u0004\b7\u0010.\"\u0004\b8\u00100R\"\u0010=\u001a\u00020*8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u0010,\u001a\u0004\b;\u0010.\"\u0004\b<\u00100R\"\u0010A\u001a\u00020*8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b>\u0010,\u001a\u0004\b?\u0010.\"\u0004\b@\u00100R\"\u0010E\u001a\u00020*8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bB\u0010,\u001a\u0004\bC\u0010.\"\u0004\bD\u00100R\"\u0010I\u001a\u00020*8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bF\u0010,\u001a\u0004\bG\u0010.\"\u0004\bH\u00100R\"\u0010M\u001a\u00020*8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bJ\u0010,\u001a\u0004\bK\u0010.\"\u0004\bL\u00100R\"\u0010Q\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bN\u0010\u0004\u001a\u0004\bO\u0010\u0006\"\u0004\bP\u0010\bR\"\u0010U\u001a\u00020*8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bR\u0010,\u001a\u0004\bS\u0010.\"\u0004\bT\u00100R\"\u0010Y\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bV\u0010\f\u001a\u0004\bW\u0010\u000e\"\u0004\bX\u0010\u0010R\"\u0010a\u001a\u00020Z8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b[\u0010\\\u001a\u0004\b]\u0010^\"\u0004\b_\u0010`R\"\u0010e\u001a\u00020Z8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bb\u0010\\\u001a\u0004\bc\u0010^\"\u0004\bd\u0010`¨\u0006h"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;", "", "", "a", Constants.STRING_SIG, "getUniqueId", "()Ljava/lang/String;", "setUniqueId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_UNIQUE_ID, "", "b", "I", "getVersion", "()I", "setVersion", "(I)V", "version", "c", "getName", "setName", "name", "d", "getOrientation", "setOrientation", "orientation", "e", "getPageSize", "setPageSize", "pageSize", "", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "getHasPaperArgs", Constants.BOOLEAN_VALUE_SIG, "setHasPaperArgs", "(Z)V", "hasPaperArgs", C6998g.f39679a, "getHasSpaceArgs", "setHasSpaceArgs", "hasSpaceArgs", "", C6999h.f39688c, "F", "getDefaultSpaceValueDp", "()F", "setDefaultSpaceValueDp", "(F)V", "defaultSpaceValueDp", "i", "getMaxSpaceValueDp", "setMaxSpaceValueDp", "maxSpaceValueDp", "j", "getMinSpaceValueDp", "setMinSpaceValueDp", "minSpaceValueDp", C4921e.f26537n, "getSpaceValuePx", "setSpaceValuePx", "spaceValuePx", "l", "getPagePaddingLeft", "setPagePaddingLeft", "pagePaddingLeft", "m", "getPagePaddingRight", "setPagePaddingRight", "pagePaddingRight", GoogleApiAvailabilityLight.f29016b, "getPagePaddingTop", "setPagePaddingTop", "pagePaddingTop", C4921e.f26528e, "getPagePaddingBottom", "setPagePaddingBottom", "pagePaddingBottom", "p", "getSpaceUniqueId", "setSpaceUniqueId", "spaceUniqueId", "q", "getPriority", "setPriority", "priority", "r", "getStatus", "setStatus", "status", "", "s", "J", "getCreatedAt", "()J", "setCreatedAt", "(J)V", CouchFieldKey.KEY_CREATE_AT, "t", "getUpdatedAt", "setUpdatedAt", "updatedAt", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CoverPaperItem {

    /* renamed from: b, reason: from kotlin metadata */
    public int version;

    /* renamed from: d, reason: from kotlin metadata */
    public int orientation;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean hasPaperArgs;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean hasSpaceArgs;

    /* renamed from: h, reason: from kotlin metadata */
    public float defaultSpaceValueDp;

    /* renamed from: i, reason: from kotlin metadata */
    public float maxSpaceValueDp;

    /* renamed from: j, reason: from kotlin metadata */
    public float minSpaceValueDp;

    /* renamed from: k, reason: from kotlin metadata */
    public float spaceValuePx;

    /* renamed from: l, reason: from kotlin metadata */
    public float pagePaddingLeft;

    /* renamed from: m, reason: from kotlin metadata */
    public float pagePaddingRight;

    /* renamed from: n, reason: from kotlin metadata */
    public float pagePaddingTop;

    /* renamed from: o, reason: from kotlin metadata */
    public float pagePaddingBottom;

    /* renamed from: r, reason: from kotlin metadata */
    public int status;

    /* renamed from: s, reason: from kotlin metadata */
    public long createdAt;

    /* renamed from: t, reason: from kotlin metadata */
    public long updatedAt;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String uniqueId = "";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String name = "";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public String pageSize = SizeFormat.f45503A4.name();

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public String spaceUniqueId = "";

    /* renamed from: q, reason: from kotlin metadata */
    public float priority = -1.0f;

    public final long getCreatedAt() {
        return this.createdAt;
    }

    public final float getDefaultSpaceValueDp() {
        return this.defaultSpaceValueDp;
    }

    public final boolean getHasPaperArgs() {
        return this.hasPaperArgs;
    }

    public final boolean getHasSpaceArgs() {
        return this.hasSpaceArgs;
    }

    public final float getMaxSpaceValueDp() {
        return this.maxSpaceValueDp;
    }

    public final float getMinSpaceValueDp() {
        return this.minSpaceValueDp;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public final int getOrientation() {
        return this.orientation;
    }

    public final float getPagePaddingBottom() {
        return this.pagePaddingBottom;
    }

    public final float getPagePaddingLeft() {
        return this.pagePaddingLeft;
    }

    public final float getPagePaddingRight() {
        return this.pagePaddingRight;
    }

    public final float getPagePaddingTop() {
        return this.pagePaddingTop;
    }

    @NotNull
    public final String getPageSize() {
        return this.pageSize;
    }

    public final float getPriority() {
        return this.priority;
    }

    @NotNull
    public final String getSpaceUniqueId() {
        return this.spaceUniqueId;
    }

    public final float getSpaceValuePx() {
        return this.spaceValuePx;
    }

    public final int getStatus() {
        return this.status;
    }

    @NotNull
    public final String getUniqueId() {
        return this.uniqueId;
    }

    public final long getUpdatedAt() {
        return this.updatedAt;
    }

    public final int getVersion() {
        return this.version;
    }

    public final void setCreatedAt(long j) {
        this.createdAt = j;
    }

    public final void setDefaultSpaceValueDp(float f) {
        this.defaultSpaceValueDp = f;
    }

    public final void setHasPaperArgs(boolean z) {
        this.hasPaperArgs = z;
    }

    public final void setHasSpaceArgs(boolean z) {
        this.hasSpaceArgs = z;
    }

    public final void setMaxSpaceValueDp(float f) {
        this.maxSpaceValueDp = f;
    }

    public final void setMinSpaceValueDp(float f) {
        this.minSpaceValueDp = f;
    }

    public final void setName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.name = str;
    }

    public final void setOrientation(int i) {
        this.orientation = i;
    }

    public final void setPagePaddingBottom(float f) {
        this.pagePaddingBottom = f;
    }

    public final void setPagePaddingLeft(float f) {
        this.pagePaddingLeft = f;
    }

    public final void setPagePaddingRight(float f) {
        this.pagePaddingRight = f;
    }

    public final void setPagePaddingTop(float f) {
        this.pagePaddingTop = f;
    }

    public final void setPageSize(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageSize = str;
    }

    public final void setPriority(float f) {
        this.priority = f;
    }

    public final void setSpaceUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.spaceUniqueId = str;
    }

    public final void setSpaceValuePx(float f) {
        this.spaceValuePx = f;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.uniqueId = str;
    }

    public final void setUpdatedAt(long j) {
        this.updatedAt = j;
    }

    public final void setVersion(int i) {
        this.version = i;
    }
}
