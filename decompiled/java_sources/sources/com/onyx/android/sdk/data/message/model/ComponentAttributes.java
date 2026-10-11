package com.onyx.android.sdk.data.message.model;

import com.onyx.android.sdk.base.extension.StringMap;
import com.onyx.galaxy.note.message.data.MessageConst;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0014\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR \u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR \u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\n0\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0012\"\u0004\b\u001d\u0010\u0014R\u001a\u0010\u001e\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\f\"\u0004\b \u0010\u000eR\u001a\u0010!\u001a\u00020\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001a\u0010'\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\f\"\u0004\b)\u0010\u000eR \u0010*\u001a\b\u0012\u0004\u0012\u00020\n0\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0012\"\u0004\b,\u0010\u0014R\u001a\u0010-\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\f\"\u0004\b/\u0010\u000eR\u001a\u00100\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\f\"\u0004\b2\u0010\u000eR\u001a\u00103\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u0018\"\u0004\b5\u0010\u001a¨\u00066"}, m61528d2 = {"Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;", "", "()V", "args", "Lcom/onyx/android/sdk/base/extension/StringMap;", "getArgs", "()Lcom/onyx/android/sdk/base/extension/StringMap;", "setArgs", "(Lcom/onyx/android/sdk/base/extension/StringMap;)V", "closeStrategy", "", "getCloseStrategy", "()Ljava/lang/String;", "setCloseStrategy", "(Ljava/lang/String;)V", MessageConst.KEY_CONTENT_LIST, "", "getContentList", "()Ljava/util/List;", "setContentList", "(Ljava/util/List;)V", "height", "", "getHeight", "()I", "setHeight", "(I)V", "imageList", "getImageList", "setImageList", "navType", "getNavType", "setNavType", "resize", "", "getResize", Constants.BOOLEAN_VALUE_SIG, "setResize", "(Z)V", "text", "getText", "setText", MessageConst.KEY_TITLE_LIST, "getTitleList", "setTitleList", "url", "getUrl", "setUrl", "value", "getValue", "setValue", "width", "getWidth", "setWidth", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ComponentAttributes {
    private int height;
    private boolean resize;
    private int width;

    @NotNull
    private String value = "";

    @NotNull
    private String text = "";

    @NotNull
    private String url = "";

    @NotNull
    private List<String> titleList = new ArrayList();

    @NotNull
    private List<String> imageList = new ArrayList();

    @NotNull
    private List<String> contentList = new ArrayList();

    @NotNull
    private String closeStrategy = "";

    @NotNull
    private String navType = "";

    @NotNull
    private StringMap args = new StringMap();

    @NotNull
    public final StringMap getArgs() {
        return this.args;
    }

    @NotNull
    public final String getCloseStrategy() {
        return this.closeStrategy;
    }

    @NotNull
    public final List<String> getContentList() {
        return this.contentList;
    }

    public final int getHeight() {
        return this.height;
    }

    @NotNull
    public final List<String> getImageList() {
        return this.imageList;
    }

    @NotNull
    public final String getNavType() {
        return this.navType;
    }

    public final boolean getResize() {
        return this.resize;
    }

    @NotNull
    public final String getText() {
        return this.text;
    }

    @NotNull
    public final List<String> getTitleList() {
        return this.titleList;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }

    public final int getWidth() {
        return this.width;
    }

    public final void setArgs(@NotNull StringMap stringMap) {
        Intrinsics.checkNotNullParameter(stringMap, "<set-?>");
        this.args = stringMap;
    }

    public final void setCloseStrategy(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.closeStrategy = str;
    }

    public final void setContentList(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.contentList = list;
    }

    public final void setHeight(int i) {
        this.height = i;
    }

    public final void setImageList(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.imageList = list;
    }

    public final void setNavType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.navType = str;
    }

    public final void setResize(boolean z) {
        this.resize = z;
    }

    public final void setText(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.text = str;
    }

    public final void setTitleList(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.titleList = list;
    }

    public final void setUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.url = str;
    }

    public final void setValue(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.value = str;
    }

    public final void setWidth(int i) {
        this.width = i;
    }
}
