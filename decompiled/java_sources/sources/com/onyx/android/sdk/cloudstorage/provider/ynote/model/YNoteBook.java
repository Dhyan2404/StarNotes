package com.onyx.android.sdk.cloudstorage.provider.ynote.model;

import com.alibaba.fastjson2.annotation.JSONField;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Date;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001e\u0010\u001fR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR$\u0010\u0019\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R$\u0010\u001d\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0014\u001a\u0004\b\u001b\u0010\u0016\"\u0004\b\u001c\u0010\u0018¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;", "", "", "a", Constants.STRING_SIG, "getPath", "()Ljava/lang/String;", "setPath", "(Ljava/lang/String;)V", "path", "b", "getName", "setName", "name", "c", "getNotesNum", "setNotesNum", "notesNum", "Ljava/util/Date;", "d", "Ljava/util/Date;", "getCreateTime", "()Ljava/util/Date;", "setCreateTime", "(Ljava/util/Date;)V", "createTime", "e", "getModifyTime", "setModifyTime", "modifyTime", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class YNoteBook {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String path;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String name;

    /* renamed from: c, reason: from kotlin metadata */
    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.Y_NOTE_NOTES_NUM})
    @Nullable
    public String notesNum;

    /* renamed from: d, reason: from kotlin metadata */
    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.Y_NOTE_CREATE_TIME})
    @Nullable
    public Date createTime;

    /* renamed from: e, reason: from kotlin metadata */
    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.Y_NOTE_MODIFY_TIME})
    @Nullable
    public Date modifyTime;

    @Nullable
    public final Date getCreateTime() {
        return this.createTime;
    }

    @Nullable
    public final Date getModifyTime() {
        return this.modifyTime;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final String getNotesNum() {
        return this.notesNum;
    }

    @Nullable
    public final String getPath() {
        return this.path;
    }

    public final void setCreateTime(@Nullable Date date) {
        this.createTime = date;
    }

    public final void setModifyTime(@Nullable Date date) {
        this.modifyTime = date;
    }

    public final void setName(@Nullable String str) {
        this.name = str;
    }

    public final void setNotesNum(@Nullable String str) {
        this.notesNum = str;
    }

    public final void setPath(@Nullable String str) {
        this.path = str;
    }
}
