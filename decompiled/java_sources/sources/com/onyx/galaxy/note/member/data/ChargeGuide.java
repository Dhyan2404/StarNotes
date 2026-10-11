package com.onyx.galaxy.note.member.data;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.galaxy.note.message.data.MessageConst;
import com.onyx.galaxy.note.message.handler.NotificationDisplayHandler;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u001a\n\u0002\u0010\b\n\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b2\u00103R0\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\u0011\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0015\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\f\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\f\u001a\u0004\b\u0017\u0010\u000e\"\u0004\b\u0018\u0010\u0010R\"\u0010\u001d\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\f\u001a\u0004\b\u001b\u0010\u000e\"\u0004\b\u001c\u0010\u0010R\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\"\u0010)\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010\f\u001a\u0004\b'\u0010\u000e\"\u0004\b(\u0010\u0010R\"\u0010-\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\f\u001a\u0004\b+\u0010\u000e\"\u0004\b,\u0010\u0010R\"\u00101\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010\f\u001a\u0004\b/\u0010\u000e\"\u0004\b0\u0010\u0010¨\u00064"}, m61528d2 = {"Lcom/onyx/galaxy/note/member/data/ChargeGuide;", "", "", "", "a", "Ljava/util/Map;", "getArgs", "()Ljava/util/Map;", "setArgs", "(Ljava/util/Map;)V", "args", "b", Constants.STRING_SIG, "getUniqueId", "()Ljava/lang/String;", "setUniqueId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_UNIQUE_ID, "c", "getTitle", "setTitle", "title", "d", "getBanner", "setBanner", NotificationDisplayHandler.GROUP_BANNER, "e", "getTag", "setTag", "tag", "", C6997f.f39671c, "I", "getNavType", "()I", "setNavType", "(I)V", "navType", C6998g.f39679a, "getWebLink", "setWebLink", MessageConst.KEY_WEB_LINK, C6999h.f39688c, "getNativeLink", "setNativeLink", MessageConst.KEY_NATIVE_LINK, "i", "getAppPage", "setAppPage", "appPage", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ChargeGuide {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public Map<String, ? extends Object> args;

    /* renamed from: f, reason: from kotlin metadata */
    public int navType;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String uniqueId = "";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String title = "";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public String banner = "";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public String tag = "";

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public String webLink = "";

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public String nativeLink = "";

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public String appPage = "";

    @NotNull
    public final String getAppPage() {
        return this.appPage;
    }

    @Nullable
    public final Map<String, Object> getArgs() {
        return this.args;
    }

    @NotNull
    public final String getBanner() {
        return this.banner;
    }

    @NotNull
    public final String getNativeLink() {
        return this.nativeLink;
    }

    public final int getNavType() {
        return this.navType;
    }

    @NotNull
    public final String getTag() {
        return this.tag;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final String getUniqueId() {
        return this.uniqueId;
    }

    @NotNull
    public final String getWebLink() {
        return this.webLink;
    }

    public final void setAppPage(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.appPage = str;
    }

    public final void setArgs(@Nullable Map<String, ? extends Object> map) {
        this.args = map;
    }

    public final void setBanner(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.banner = str;
    }

    public final void setNativeLink(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.nativeLink = str;
    }

    public final void setNavType(int i) {
        this.navType = i;
    }

    public final void setTag(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.tag = str;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    public final void setUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.uniqueId = str;
    }

    public final void setWebLink(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.webLink = str;
    }
}
