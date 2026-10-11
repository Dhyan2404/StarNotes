package com.onyx.galaxy.note.category.cloud;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.common.data.template.TemplateResourceConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0017\n\u0002\u0010\t\n\u0002\b\u001f\n\u0002\u0010\u0007\n\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bV\u0010WR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\"\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0004\u001a\u0004\b\u0017\u0010\u0006\"\u0004\b\u0018\u0010\bR\"\u0010\u001d\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0004\u001a\u0004\b\u001b\u0010\u0006\"\u0004\b\u001c\u0010\bR\"\u0010!\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0004\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\"\u0010)\u001a\u00020\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\"\u0010-\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\f\u001a\u0004\b+\u0010\u000e\"\u0004\b,\u0010\u0010R\"\u00101\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010\f\u001a\u0004\b/\u0010\u000e\"\u0004\b0\u0010\u0010R\"\u00105\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u0010\f\u001a\u0004\b3\u0010\u000e\"\u0004\b4\u0010\u0010R\"\u00109\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u0010\f\u001a\u0004\b7\u0010\u000e\"\u0004\b8\u0010\u0010R\"\u0010=\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u0010\u0004\u001a\u0004\b;\u0010\u0006\"\u0004\b<\u0010\bR\"\u0010A\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b>\u0010\u0004\u001a\u0004\b?\u0010\u0006\"\u0004\b@\u0010\bR\"\u0010I\u001a\u00020B8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bC\u0010D\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR\"\u0010M\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bJ\u0010\f\u001a\u0004\bK\u0010\u000e\"\u0004\bL\u0010\u0010R\"\u0010Q\u001a\u00020\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bN\u0010$\u001a\u0004\bO\u0010&\"\u0004\bP\u0010(R\"\u0010U\u001a\u00020\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bR\u0010$\u001a\u0004\bS\u0010&\"\u0004\bT\u0010(¨\u0006X"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/cloud/ResourceItem;", "", "", "a", Constants.STRING_SIG, "getUniqueId", "()Ljava/lang/String;", "setUniqueId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_UNIQUE_ID, "", "b", "I", "getVersion", "()I", "setVersion", "(I)V", "version", "c", "getName", "setName", "name", "d", "getUri", "setUri", "uri", "e", "getThumbnailUri", "setThumbnailUri", "thumbnailUri", C6997f.f39671c, "getMd5", "setMd5", CouchFieldKey.KEY_MD5, "", C6998g.f39679a, "J", "getSize", "()J", "setSize", "(J)V", "size", C6999h.f39688c, "getStrokeColor", "setStrokeColor", ApiBroadCastReceiver.ARGS_STROKE_COLOR, "i", "getFillColor", "setFillColor", CouchFieldKey.KEY_FILL_COLOR, "j", "getColorTransformMode", "setColorTransformMode", "colorTransformMode", C4921e.f26537n, "getSource", "setSource", "source", "l", "getType", "setType", "type", "m", "getTarget", "setTarget", "target", "", GoogleApiAvailabilityLight.f29016b, "F", "getPriority", "()F", "setPriority", "(F)V", "priority", C4921e.f26528e, "getStatus", "setStatus", "status", "p", "getCreatedAt", "setCreatedAt", CouchFieldKey.KEY_CREATE_AT, "q", "getUpdatedAt", "setUpdatedAt", "updatedAt", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ResourceItem {

    /* renamed from: b, reason: from kotlin metadata */
    public int version;

    /* renamed from: g, reason: from kotlin metadata */
    public long size;

    /* renamed from: j, reason: from kotlin metadata */
    public int colorTransformMode;

    /* renamed from: k, reason: from kotlin metadata */
    public int source;

    /* renamed from: o, reason: from kotlin metadata */
    public int status;

    /* renamed from: p, reason: from kotlin metadata */
    public long createdAt;

    /* renamed from: q, reason: from kotlin metadata */
    public long updatedAt;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String uniqueId = "";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String name = "";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public String uri = "";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public String thumbnailUri = "";

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public String md5 = "";

    /* renamed from: h, reason: from kotlin metadata */
    public int strokeColor = -16777216;

    /* renamed from: i, reason: from kotlin metadata */
    public int fillColor = -16777216;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public String type = TemplateResourceConstant.TYPE_PICTURE;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public String target = "cover";

    /* renamed from: n, reason: from kotlin metadata */
    public float priority = -1.0f;

    public final int getColorTransformMode() {
        return this.colorTransformMode;
    }

    public final long getCreatedAt() {
        return this.createdAt;
    }

    public final int getFillColor() {
        return this.fillColor;
    }

    @NotNull
    public final String getMd5() {
        return this.md5;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public final float getPriority() {
        return this.priority;
    }

    public final long getSize() {
        return this.size;
    }

    public final int getSource() {
        return this.source;
    }

    public final int getStatus() {
        return this.status;
    }

    public final int getStrokeColor() {
        return this.strokeColor;
    }

    @NotNull
    public final String getTarget() {
        return this.target;
    }

    @NotNull
    public final String getThumbnailUri() {
        return this.thumbnailUri;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    @NotNull
    public final String getUniqueId() {
        return this.uniqueId;
    }

    public final long getUpdatedAt() {
        return this.updatedAt;
    }

    @NotNull
    public final String getUri() {
        return this.uri;
    }

    public final int getVersion() {
        return this.version;
    }

    public final void setColorTransformMode(int i) {
        this.colorTransformMode = i;
    }

    public final void setCreatedAt(long j) {
        this.createdAt = j;
    }

    public final void setFillColor(int i) {
        this.fillColor = i;
    }

    public final void setMd5(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.md5 = str;
    }

    public final void setName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.name = str;
    }

    public final void setPriority(float f) {
        this.priority = f;
    }

    public final void setSize(long j) {
        this.size = j;
    }

    public final void setSource(int i) {
        this.source = i;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setStrokeColor(int i) {
        this.strokeColor = i;
    }

    public final void setTarget(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.target = str;
    }

    public final void setThumbnailUri(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.thumbnailUri = str;
    }

    public final void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }

    public final void setUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.uniqueId = str;
    }

    public final void setUpdatedAt(long j) {
        this.updatedAt = j;
    }

    public final void setUri(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.uri = str;
    }

    public final void setVersion(int i) {
        this.version = i;
    }
}
