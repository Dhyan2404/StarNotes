package com.onyx.galaxy.note.editor.data;

import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0012\b\u0086\b\u0018\u0000 \"2\u00020\u0001:\u0001\"B'\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b \u0010!J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J2\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00022\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u000e\u001a\u00020\rHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0019\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR$\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u0007\"\u0004\b\u001e\u0010\u001f¨\u0006#"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;", "", "", "component1", "Lcom/onyx/galaxy/note/editor/data/ShortcutType;", "component2", "component3", "()Ljava/lang/Integer;", "itemType", "shortcutType", "titleRes", "copy", "(ILcom/onyx/galaxy/note/editor/data/ShortcutType;Ljava/lang/Integer;)Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "I", "getItemType", "()I", "b", "Lcom/onyx/galaxy/note/editor/data/ShortcutType;", "getShortcutType", "()Lcom/onyx/galaxy/note/editor/data/ShortcutType;", "c", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.INTEGER_SIG, "getTitleRes", "setTitleRes", "(Ljava/lang/Integer;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ILcom/onyx/galaxy/note/editor/data/ShortcutType;Ljava/lang/Integer;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final /* data */ class CustomShortcutBarBean {
    public static final int ITEM_TYPE_SECTION_SHORTCUT = 2;
    public static final int ITEM_TYPE_SECTION_TITLE = 1;

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public final int itemType;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @Nullable
    public final ShortcutType shortcutType;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @Nullable
    public Integer titleRes;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: d */
    @NotNull
    public static final CustomShortcutBarBean f58506d = new CustomShortcutBarBean(1, null, Integer.valueOf(C10651R.string.custom_shortcut_bar_left_side_title), 2, null);

    /* renamed from: e */
    @NotNull
    public static final CustomShortcutBarBean f58507e = new CustomShortcutBarBean(1, null, Integer.valueOf(C10651R.string.custom_shortcut_bar_right_side_title), 2, null);

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\n\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean$Companion;", "", "()V", "ITEM_TYPE_SECTION_SHORTCUT", "", "ITEM_TYPE_SECTION_TITLE", "SECTION_TITLE_LEFT", "Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;", "getSECTION_TITLE_LEFT", "()Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;", "SECTION_TITLE_RIGHT", "getSECTION_TITLE_RIGHT", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CustomShortcutBarBean getSECTION_TITLE_LEFT() {
            return CustomShortcutBarBean.f58506d;
        }

        @NotNull
        public final CustomShortcutBarBean getSECTION_TITLE_RIGHT() {
            return CustomShortcutBarBean.f58507e;
        }

        public Companion() {
        }
    }

    public CustomShortcutBarBean(int i, @Nullable ShortcutType shortcutType, @Nullable Integer num) {
        this.itemType = i;
        this.shortcutType = shortcutType;
        this.titleRes = num;
    }

    public static /* synthetic */ CustomShortcutBarBean copy$default(CustomShortcutBarBean customShortcutBarBean, int i, ShortcutType shortcutType, Integer num, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = customShortcutBarBean.itemType;
        }
        if ((i2 & 2) != 0) {
            shortcutType = customShortcutBarBean.shortcutType;
        }
        if ((i2 & 4) != 0) {
            num = customShortcutBarBean.titleRes;
        }
        return customShortcutBarBean.copy(i, shortcutType, num);
    }

    /* renamed from: component1, reason: from getter */
    public final int getItemType() {
        return this.itemType;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final ShortcutType getShortcutType() {
        return this.shortcutType;
    }

    @Nullable
    /* renamed from: component3, reason: from getter */
    public final Integer getTitleRes() {
        return this.titleRes;
    }

    @NotNull
    public final CustomShortcutBarBean copy(int itemType, @Nullable ShortcutType shortcutType, @Nullable Integer titleRes) {
        return new CustomShortcutBarBean(itemType, shortcutType, titleRes);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CustomShortcutBarBean)) {
            return false;
        }
        CustomShortcutBarBean customShortcutBarBean = (CustomShortcutBarBean) other;
        return this.itemType == customShortcutBarBean.itemType && this.shortcutType == customShortcutBarBean.shortcutType && Intrinsics.areEqual(this.titleRes, customShortcutBarBean.titleRes);
    }

    public final int getItemType() {
        return this.itemType;
    }

    @Nullable
    public final ShortcutType getShortcutType() {
        return this.shortcutType;
    }

    @Nullable
    public final Integer getTitleRes() {
        return this.titleRes;
    }

    public int hashCode() {
        int hashCode = Integer.hashCode(this.itemType) * 31;
        ShortcutType shortcutType = this.shortcutType;
        int hashCode2 = (hashCode + (shortcutType == null ? 0 : shortcutType.hashCode())) * 31;
        Integer num = this.titleRes;
        return hashCode2 + (num != null ? num.hashCode() : 0);
    }

    public final void setTitleRes(@Nullable Integer num) {
        this.titleRes = num;
    }

    @NotNull
    public String toString() {
        return "CustomShortcutBarBean(itemType=" + this.itemType + ", shortcutType=" + this.shortcutType + ", titleRes=" + this.titleRes + ')';
    }

    public /* synthetic */ CustomShortcutBarBean(int i, ShortcutType shortcutType, Integer num, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? null : shortcutType, (i2 & 4) != 0 ? null : num);
    }
}
