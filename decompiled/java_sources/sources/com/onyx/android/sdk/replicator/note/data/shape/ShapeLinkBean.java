package com.onyx.android.sdk.replicator.note.data.shape;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.replicator.note.data.link.LinkDocBean;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u000e\u0018\u0000 \u001e2\u00020\u0001:\u0002\u001e\u001fB\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000b\u001a\u00020\u0004J\b\u0010\f\u001a\u0004\u0018\u00010\u0006J\u0006\u0010\r\u001a\u00020\bJ\b\u0010\u000e\u001a\u0004\u0018\u00010\bJ\b\u0010\u000f\u001a\u0004\u0018\u00010\bJ\b\u0010\u0010\u001a\u0004\u0018\u00010\bJ\b\u0010\u0011\u001a\u00020\u0012H\u0007J\b\u0010\u0013\u001a\u00020\u0012H\u0007J\b\u0010\u0014\u001a\u00020\u0012H\u0007J\b\u0010\u0015\u001a\u00020\u0012H\u0007J\b\u0010\u0016\u001a\u00020\u0012H\u0007J\b\u0010\u0017\u001a\u00020\u0012H\u0007J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0004J\u0010\u0010\u001a\u001a\u00020\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u001b\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u0010\u0010\u001c\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\bJ\u0010\u0010\u001d\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", "", "()V", "displayStyle", "", "docBean", "Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;", "key", "", "remark", "value", "getDisplayStyle", "getDocBean", "getFirstLinkedShapeId", "getKey", "getRemark", "getValue", "isLinkAudioType", "", "isLinkNoteType", "isLinkPageShapeType", "isLinkPageType", "isLinkUrlType", "isOnlyIconStyle", "setDisplayStyle", "style", "setDocBean", "setKey", "setRemark", "setValue", "Companion", "DisplayStyle", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeLinkBean {
    public static final int SHAPE_TYPE_LINK = 33;
    private int displayStyle = DisplayStyle.INSTANCE.getONLY_ICON();

    @Nullable
    private LinkDocBean docBean;

    @Nullable
    private String key;

    @Nullable
    private String remark;

    @Nullable
    private String value;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0011\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\b¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;", "", "()V", "ICON_DOUBLE_LINK", "", "getICON_DOUBLE_LINK", "()I", "setICON_DOUBLE_LINK", "(I)V", "ICON_INVISIBLE", "getICON_INVISIBLE", "setICON_INVISIBLE", "ICON_TITLE_BOX", "getICON_TITLE_BOX", "setICON_TITLE_BOX", "ICON_TITLE_UNDERLINE", "getICON_TITLE_UNDERLINE", "setICON_TITLE_UNDERLINE", "ONLY_ICON", "getONLY_ICON", "setONLY_ICON", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DisplayStyle {
        private static int ONLY_ICON;

        @NotNull
        public static final DisplayStyle INSTANCE = new DisplayStyle();
        private static int ICON_TITLE_UNDERLINE = 1;
        private static int ICON_TITLE_BOX = 2;
        private static int ICON_INVISIBLE = 3;
        private static int ICON_DOUBLE_LINK = 4;

        private DisplayStyle() {
        }

        public final int getICON_DOUBLE_LINK() {
            return ICON_DOUBLE_LINK;
        }

        public final int getICON_INVISIBLE() {
            return ICON_INVISIBLE;
        }

        public final int getICON_TITLE_BOX() {
            return ICON_TITLE_BOX;
        }

        public final int getICON_TITLE_UNDERLINE() {
            return ICON_TITLE_UNDERLINE;
        }

        public final int getONLY_ICON() {
            return ONLY_ICON;
        }

        public final void setICON_DOUBLE_LINK(int i) {
            ICON_DOUBLE_LINK = i;
        }

        public final void setICON_INVISIBLE(int i) {
            ICON_INVISIBLE = i;
        }

        public final void setICON_TITLE_BOX(int i) {
            ICON_TITLE_BOX = i;
        }

        public final void setICON_TITLE_UNDERLINE(int i) {
            ICON_TITLE_UNDERLINE = i;
        }

        public final void setONLY_ICON(int i) {
            ONLY_ICON = i;
        }
    }

    public final int getDisplayStyle() {
        return this.displayStyle;
    }

    @Nullable
    public final LinkDocBean getDocBean() {
        return this.docBean;
    }

    @NotNull
    public final String getFirstLinkedShapeId() {
        String str;
        List<String> shapeIdList;
        Object firstOrNull;
        LinkDocBean docBean = getDocBean();
        if (docBean == null || (shapeIdList = docBean.getShapeIdList()) == null) {
            str = null;
        } else {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) shapeIdList);
            str = (String) firstOrNull;
        }
        return str == null ? "" : str;
    }

    @Nullable
    public final String getKey() {
        return this.key;
    }

    @Nullable
    public final String getRemark() {
        return this.remark;
    }

    @Nullable
    public final String getValue() {
        return this.value;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isLinkAudioType() {
        return Intrinsics.areEqual("AUDIO", getKey());
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isLinkNoteType() {
        return Intrinsics.areEqual("NOTE", getKey());
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isLinkPageShapeType() {
        if (isLinkPageType()) {
            LinkDocBean linkDocBean = this.docBean;
            if (CollectionKt.isNonBlank(linkDocBean != null ? linkDocBean.getShapeIdList() : null)) {
                return true;
            }
        }
        return false;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isLinkPageType() {
        if (!Intrinsics.areEqual(ShapeLinkType.LINK_PAGE_NUMBER, getKey())) {
            if (isLinkNoteType() && getDocBean() != null) {
                LinkDocBean docBean = getDocBean();
                Intrinsics.checkNotNull(docBean);
                if (docBean.isLinkPageValid()) {
                }
            }
            return false;
        }
        return true;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isLinkUrlType() {
        return Intrinsics.areEqual(ShapeLinkType.LINK_URL, getKey());
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isOnlyIconStyle() {
        return getDisplayStyle() == DisplayStyle.INSTANCE.getONLY_ICON();
    }

    @NotNull
    public final ShapeLinkBean setDisplayStyle(int style) {
        this.displayStyle = style;
        return this;
    }

    @NotNull
    public final ShapeLinkBean setDocBean(@Nullable LinkDocBean docBean) {
        this.docBean = docBean;
        return this;
    }

    @NotNull
    public final ShapeLinkBean setKey(@Nullable String key) {
        this.key = key;
        return this;
    }

    @NotNull
    public final ShapeLinkBean setRemark(@Nullable String remark) {
        this.remark = remark;
        return this;
    }

    @NotNull
    public final ShapeLinkBean setValue(@Nullable String value) {
        this.value = value;
        return this;
    }
}
