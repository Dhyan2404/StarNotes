package com.onyx.android.sdk.cloudstorage.provider.ynote.model;

import androidx.core.app.NotificationCompat;
import com.alibaba.fastjson2.annotation.JSONField;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Date;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b*\u0010+R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR$\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR$\u0010\u001d\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR$\u0010!\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0018\u001a\u0004\b\u001f\u0010\u001a\"\u0004\b \u0010\u001cR$\u0010%\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u0004\u001a\u0004\b#\u0010\u0006\"\u0004\b$\u0010\bR$\u0010)\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010\u0004\u001a\u0004\b'\u0010\u0006\"\u0004\b(\u0010\b¨\u0006,"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNote;", "", "", "a", Constants.STRING_SIG, "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "title", "b", "getAuthor", "setAuthor", NotificationCompat.CarExtender.f4973i, "c", "getSource", "setSource", "source", "d", "getSize", "setSize", "size", "Ljava/util/Date;", "e", "Ljava/util/Date;", "getCreateTime", "()Ljava/util/Date;", "setCreateTime", "(Ljava/util/Date;)V", "createTime", C6997f.f39671c, "getModifyTime", "setModifyTime", "modifyTime", C6998g.f39679a, "getContent", "setContent", "content", C6999h.f39688c, "getPath", "setPath", "path", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class YNote {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String title;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String author;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public String source;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public String size;

    /* renamed from: e, reason: from kotlin metadata */
    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.Y_NOTE_CREATE_TIME})
    @Nullable
    public Date createTime;

    /* renamed from: f, reason: from kotlin metadata */
    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.Y_NOTE_MODIFY_TIME})
    @Nullable
    public Date modifyTime;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public String content;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public String path;

    @Nullable
    public final String getAuthor() {
        return this.author;
    }

    @Nullable
    public final String getContent() {
        return this.content;
    }

    @Nullable
    public final Date getCreateTime() {
        return this.createTime;
    }

    @Nullable
    public final Date getModifyTime() {
        return this.modifyTime;
    }

    @Nullable
    public final String getPath() {
        return this.path;
    }

    @Nullable
    public final String getSize() {
        return this.size;
    }

    @Nullable
    public final String getSource() {
        return this.source;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public final void setAuthor(@Nullable String str) {
        this.author = str;
    }

    public final void setContent(@Nullable String str) {
        this.content = str;
    }

    public final void setCreateTime(@Nullable Date date) {
        this.createTime = date;
    }

    public final void setModifyTime(@Nullable Date date) {
        this.modifyTime = date;
    }

    public final void setPath(@Nullable String str) {
        this.path = str;
    }

    public final void setSize(@Nullable String str) {
        this.size = str;
    }

    public final void setSource(@Nullable String str) {
        this.source = str;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }
}
