package com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u001b\n\u0002\u0010 \n\u0002\b\u001a\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b6\u00107R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR$\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR$\u0010\u0019\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0004\u001a\u0004\b\u0017\u0010\u0006\"\u0004\b\u0018\u0010\bR$\u0010\u001d\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0004\u001a\u0004\b\u001b\u0010\u0006\"\u0004\b\u001c\u0010\bR*\u0010%\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u001e8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R$\u0010)\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b&\u0010\u0004\u001a\u0004\b'\u0010\u0006\"\u0004\b(\u0010\bR$\u0010-\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b*\u0010\u0004\u001a\u0004\b+\u0010\u0006\"\u0004\b,\u0010\bR$\u00101\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b.\u0010\u0004\u001a\u0004\b/\u0010\u0006\"\u0004\b0\u0010\bR$\u00105\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b2\u0010\u0004\u001a\u0004\b3\u0010\u0006\"\u0004\b4\u0010\b¨\u00068"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileRequestBody;", "", "", "a", Constants.STRING_SIG, "getPath", "()Ljava/lang/String;", "setPath", "(Ljava/lang/String;)V", "path", "b", "getSize", "setSize", "size", "c", "getIsdir", "setIsdir", BaiduYunConstant.IS_DIR, "d", "getAutoinit", "setAutoinit", BaiduYunConstant.AUTO_INIT, "e", "getRtype", "setRtype", BaiduYunConstant.RTYPE, C6997f.f39671c, "getUploadid", "setUploadid", BaiduYunConstant.UPLOAD_ID, "", C6998g.f39679a, "Ljava/util/List;", "getBlockList", "()Ljava/util/List;", "setBlockList", "(Ljava/util/List;)V", "blockList", C6999h.f39688c, "getContentMd5", "setContentMd5", "contentMd5", "i", "getSliceMd5", "setSliceMd5", "sliceMd5", "j", "getLocalCtime", "setLocalCtime", "localCtime", C4921e.f26537n, "getLocalMtime", "setLocalMtime", "localMtime", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class BaiduYunFileRequestBody {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String path;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String size;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public String isdir;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public String autoinit;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public String rtype;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public String uploadid;

    /* renamed from: g, reason: from kotlin metadata */
    @JSONField(alternateNames = {"block_list"})
    @Nullable
    public List<String> blockList;

    /* renamed from: h, reason: from kotlin metadata */
    @JSONField(name = "content-md5")
    @Nullable
    public String contentMd5;

    /* renamed from: i, reason: from kotlin metadata */
    @JSONField(name = "slice-md5")
    @Nullable
    public String sliceMd5;

    /* renamed from: j, reason: from kotlin metadata */
    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.BAIDUYUN_LOCAL_CTIME})
    @Nullable
    public String localCtime;

    /* renamed from: k, reason: from kotlin metadata */
    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.BAIDUYUN_LOCAL_MTIME})
    @Nullable
    public String localMtime;

    @Nullable
    public final String getAutoinit() {
        return this.autoinit;
    }

    @Nullable
    public final List<String> getBlockList() {
        return this.blockList;
    }

    @Nullable
    public final String getContentMd5() {
        return this.contentMd5;
    }

    @Nullable
    public final String getIsdir() {
        return this.isdir;
    }

    @Nullable
    public final String getLocalCtime() {
        return this.localCtime;
    }

    @Nullable
    public final String getLocalMtime() {
        return this.localMtime;
    }

    @Nullable
    public final String getPath() {
        return this.path;
    }

    @Nullable
    public final String getRtype() {
        return this.rtype;
    }

    @Nullable
    public final String getSize() {
        return this.size;
    }

    @Nullable
    public final String getSliceMd5() {
        return this.sliceMd5;
    }

    @Nullable
    public final String getUploadid() {
        return this.uploadid;
    }

    public final void setAutoinit(@Nullable String str) {
        this.autoinit = str;
    }

    public final void setBlockList(@Nullable List<String> list) {
        this.blockList = list;
    }

    public final void setContentMd5(@Nullable String str) {
        this.contentMd5 = str;
    }

    public final void setIsdir(@Nullable String str) {
        this.isdir = str;
    }

    public final void setLocalCtime(@Nullable String str) {
        this.localCtime = str;
    }

    public final void setLocalMtime(@Nullable String str) {
        this.localMtime = str;
    }

    public final void setPath(@Nullable String str) {
        this.path = str;
    }

    public final void setRtype(@Nullable String str) {
        this.rtype = str;
    }

    public final void setSize(@Nullable String str) {
        this.size = str;
    }

    public final void setSliceMd5(@Nullable String str) {
        this.sliceMd5 = str;
    }

    public final void setUploadid(@Nullable String str) {
        this.uploadid = str;
    }
}
