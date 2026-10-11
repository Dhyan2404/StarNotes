package com.onyx.galaxy.note.datarepository.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR \u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;", "", "()V", "expired", "", "getExpired", Constants.BOOLEAN_VALUE_SIG, "setExpired", "(Z)V", FirebaseAnalytics.Param.ITEMS, "", "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class ShareResourceBean {

    @JSONField(name = "isExpired")
    private boolean expired;

    @NotNull
    private List<LibraryBean> items;

    public ShareResourceBean() {
        List<LibraryBean> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.items = emptyList;
    }

    public final boolean getExpired() {
        return this.expired;
    }

    @NotNull
    public final List<LibraryBean> getItems() {
        return this.items;
    }

    public final void setExpired(boolean z) {
        this.expired = z;
    }

    public final void setItems(@NotNull List<LibraryBean> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.items = list;
    }
}
