package com.onyx.android.sdk.replicator.note.data.background;

import android.util.Size;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.commonv2.global.HWREngineConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 .2\u00020\u0001:\u0001.B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u0011\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0000¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0006\u0010\u0013\u001a\u00020\u0000J\u0013\u0010\u0014\u001a\u00020\u000b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0006\u0010\u0016\u001a\u00020\tJ\b\u0010\u0017\u001a\u0004\u0018\u00010\u000eJ\u0006\u0010\u0018\u001a\u00020\u0006J\u0006\u0010\u0019\u001a\u00020\u0006J\b\u0010\u001a\u001a\u0004\u0018\u00010\u000eJ\u0006\u0010\u001b\u001a\u00020\tJ\b\u0010\u001c\u001a\u00020\u0006H\u0016J\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\u001d\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0000J\u0006\u0010\f\u001a\u00020\u000bJ\u0006\u0010\u001e\u001a\u00020\u000bJ\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u000bJ\u000e\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u000bJ\u000e\u0010$\u001a\u00020\"2\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010%\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010&\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0006J\u000e\u0010'\u001a\u00020\u00002\u0006\u0010(\u001a\u00020)J\u000e\u0010*\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010+\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010,\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u000bJ\u000e\u0010-\u001a\u00020\"2\u0006\u0010\u0012\u001a\u00020\tR\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006/"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;", "", "()V", "res", "(Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;)V", "type", "", "(I)V", "height", "", "isCloud", "", "isGlobal", HWREngineConstant.Constant.RES_ID, "", "resIndex", "value", "visible", "width", "bkGroundResClone", "equals", Constants.ATTRVAL_OTHER, "getHeight", "getResId", "getResIndex", "getType", "getValue", "getWidth", "hashCode", "isEqualsNotIndex", "isVisible", "setCloud", "cloud", "setGlobal", "", "global", "setHeight", "setResId", "setResIndex", "setSize", "size", "Landroid/util/Size;", "setType", "setValue", "setVisible", "setWidth", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class BkGroundRes {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static String DEFAULT_BACKGROUND_RES_ID = "0";

    @NotNull
    private static final String PDF_RESOURCE_ID_SPLIT_CHAR = "_";
    private float height;
    private boolean isCloud;
    private boolean isGlobal;

    @Nullable
    private String resId;
    private int resIndex;

    @Nullable
    private String value;
    private float width;
    private int type = NoteBackgroundType.INSTANCE.defaultBackground();
    private boolean visible = true;

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\r\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\u000bJ\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00042\b\u0010\u0010\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0010\u001a\u00020\u000bJ\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0014\u001a\u00020\u00152\b\u0010\u0010\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u0016\u001a\u00020\u00152\b\u0010\u0010\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u0017\u001a\u00020\u00152\b\u0010\u0010\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u0018\u001a\u00020\u00152\b\u0010\u0010\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u0019\u001a\u00020\u00152\b\u0010\u0010\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u001a\u001a\u00020\u00152\b\u0010\u0010\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u001b\u001a\u00020\u00152\b\u0010\u0010\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u001c\u001a\u00020\u00152\b\u0010\u0010\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u001d\u001a\u00020\u00152\b\u0010\u0010\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u001e\u001a\u00020\u00152\b\u0010\u0010\u001a\u0004\u0018\u00010\u000bJ\u0016\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020\r2\u0006\u0010!\u001a\u00020\rR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes$Companion;", "", "()V", "DEFAULT_BACKGROUND_RES_ID", "", "getDEFAULT_BACKGROUND_RES_ID", "()Ljava/lang/String;", "setDEFAULT_BACKGROUND_RES_ID", "(Ljava/lang/String;)V", "PDF_RESOURCE_ID_SPLIT_CHAR", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;", "type", "", "createEmpty", "getBKGroundResourceId", "bkGroundRes", "getBKGroundUniqueId", "getPDFBKGroundUniqueId", HWREngineConstant.Constant.RES_ID, "isBkGroundEmpty", "", "isBkGroundResWithLocalResource", "isEmptyOrInvisible", "isFileBkGroundRes", "isFixBkGroundRes", "isImageBkGroundRes", "isLocalFileBkGroundRes", "isPdfBkGroundRes", "isRichTextBkGroundRes", "isValidLocalFileBkGroundRes", "resIndexMapping", "pageIndex", "resCount", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final BkGroundRes create() {
            return new BkGroundRes();
        }

        @NotNull
        public final BkGroundRes createEmpty() {
            return new BkGroundRes().setType(NoteBackgroundType.INSTANCE.defaultBackground()).setResId(getDEFAULT_BACKGROUND_RES_ID());
        }

        @Nullable
        public final String getBKGroundResourceId(@Nullable BkGroundRes bkGroundRes) {
            if (bkGroundRes == null) {
                return null;
            }
            if (isPdfBkGroundRes(bkGroundRes)) {
                return getPDFBKGroundUniqueId(bkGroundRes.getResId());
            }
            if (isImageBkGroundRes(bkGroundRes)) {
                return bkGroundRes.getResId();
            }
            return null;
        }

        @Nullable
        public final String getBKGroundUniqueId(@NotNull BkGroundRes bkGroundRes) {
            Intrinsics.checkNotNullParameter(bkGroundRes, "bkGroundRes");
            return isPdfBkGroundRes(bkGroundRes) ? getPDFBKGroundUniqueId(bkGroundRes.getResId()) : bkGroundRes.getResId();
        }

        @NotNull
        public final String getDEFAULT_BACKGROUND_RES_ID() {
            return BkGroundRes.DEFAULT_BACKGROUND_RES_ID;
        }

        @Nullable
        public final String getPDFBKGroundUniqueId(@Nullable String resId) {
            int lastIndexOf$default;
            if (StringUtils.isEmpty(resId)) {
                return null;
            }
            Intrinsics.checkNotNull(resId);
            lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) resId, "_", 0, false, 6, (Object) null);
            if (lastIndexOf$default < 0) {
                return resId;
            }
            String substring = resId.substring(0, lastIndexOf$default);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            return substring;
        }

        public final boolean isBkGroundEmpty(@Nullable BkGroundRes bkGroundRes) {
            return bkGroundRes != null && bkGroundRes.getType() == NoteBackgroundType.INSTANCE.defaultBackground();
        }

        public final boolean isBkGroundResWithLocalResource(@Nullable BkGroundRes bkGroundRes) {
            if (bkGroundRes == null || bkGroundRes.isCloud) {
                return false;
            }
            return isFileBkGroundRes(bkGroundRes);
        }

        public final boolean isEmptyOrInvisible(@Nullable BkGroundRes bkGroundRes) {
            if (bkGroundRes == null) {
                return false;
            }
            return !bkGroundRes.getVisible() || isBkGroundEmpty(bkGroundRes);
        }

        public final boolean isFileBkGroundRes(@Nullable BkGroundRes bkGroundRes) {
            return isPdfBkGroundRes(bkGroundRes) || isImageBkGroundRes(bkGroundRes);
        }

        public final boolean isFixBkGroundRes(@Nullable BkGroundRes bkGroundRes) {
            return (bkGroundRes == null || isFileBkGroundRes(bkGroundRes)) ? false : true;
        }

        public final boolean isImageBkGroundRes(@Nullable BkGroundRes bkGroundRes) {
            return bkGroundRes != null && bkGroundRes.getType() == 26;
        }

        public final boolean isLocalFileBkGroundRes(@Nullable BkGroundRes bkGroundRes) {
            return (bkGroundRes == null || bkGroundRes.getIsCloud() || !isFileBkGroundRes(bkGroundRes)) ? false : true;
        }

        public final boolean isPdfBkGroundRes(@Nullable BkGroundRes bkGroundRes) {
            return bkGroundRes != null && bkGroundRes.getType() == 27;
        }

        public final boolean isRichTextBkGroundRes(@Nullable BkGroundRes bkGroundRes) {
            if (bkGroundRes == null) {
                return false;
            }
            return NoteBackgroundType.INSTANCE.isRichTextBKGround(bkGroundRes.getType());
        }

        public final boolean isValidLocalFileBkGroundRes(@Nullable BkGroundRes bkGroundRes) {
            return bkGroundRes != null && !bkGroundRes.getIsCloud() && isFileBkGroundRes(bkGroundRes) && StringUtils.isNotBlank(bkGroundRes.getResId()) && FileUtils.INSTANCE.fileExist(bkGroundRes.getValue());
        }

        public final int resIndexMapping(int pageIndex, int resCount) {
            if (resCount == 0) {
                return 0;
            }
            return pageIndex % resCount;
        }

        public final void setDEFAULT_BACKGROUND_RES_ID(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            BkGroundRes.DEFAULT_BACKGROUND_RES_ID = str;
        }

        private Companion() {
        }

        @NotNull
        public final BkGroundRes create(int type) {
            return new BkGroundRes(type);
        }
    }

    public BkGroundRes() {
    }

    @NotNull
    public final BkGroundRes bkGroundResClone() {
        BkGroundRes create = INSTANCE.create();
        create.setCloud(this.isCloud);
        create.setGlobal(this.isGlobal);
        create.setResId(getResId());
        create.setResIndex(this.resIndex);
        create.setType(this.type);
        create.setValue(this.value);
        return create;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BkGroundRes)) {
            return false;
        }
        BkGroundRes bkGroundRes = (BkGroundRes) other;
        if (this.type != bkGroundRes.type || !Intrinsics.areEqual(this.value, bkGroundRes.value) || this.resIndex != bkGroundRes.resIndex || this.isCloud != bkGroundRes.isCloud || !Intrinsics.areEqual(this.resId, bkGroundRes.resId) || this.isGlobal != bkGroundRes.isGlobal || this.visible != bkGroundRes.visible) {
            return false;
        }
        if (this.width == bkGroundRes.width) {
            return (this.height > bkGroundRes.height ? 1 : (this.height == bkGroundRes.height ? 0 : -1)) == 0;
        }
        return false;
    }

    public final float getHeight() {
        if (this.height <= 0.0f) {
            this.height = ResManager.INSTANCE.getWindowDefaultHeight();
        }
        return this.height;
    }

    @Nullable
    public final String getResId() {
        return this.resId;
    }

    public final int getResIndex() {
        return this.resIndex;
    }

    public final int getType() {
        return this.type;
    }

    @Nullable
    public final String getValue() {
        return this.value;
    }

    public final float getWidth() {
        if (this.width <= 0.0f) {
            this.width = ResManager.INSTANCE.getWindowDefaultWidth();
        }
        return this.width;
    }

    public int hashCode() {
        int i = this.type * 31;
        String str = this.value;
        int hashCode = (((((i + (str != null ? str.hashCode() : 0)) * 31) + this.resIndex) * 31) + Boolean.hashCode(this.isCloud)) * 31;
        String str2 = this.resId;
        return ((((((((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + Boolean.hashCode(this.isGlobal)) * 31) + Boolean.hashCode(this.visible)) * 31) + Float.hashCode(this.width)) * 31) + Float.hashCode(this.height);
    }

    /* renamed from: isCloud, reason: from getter */
    public final boolean getIsCloud() {
        return this.isCloud;
    }

    public final boolean isEqualsNotIndex(@Nullable BkGroundRes res) {
        return res != null && res.isCloud == this.isCloud && res.type == this.type && StringUtils.equals(res.value, this.value);
    }

    /* renamed from: isGlobal, reason: from getter */
    public final boolean getIsGlobal() {
        return this.isGlobal;
    }

    /* renamed from: isVisible, reason: from getter */
    public final boolean getVisible() {
        return this.visible;
    }

    @NotNull
    public final BkGroundRes setCloud(boolean cloud) {
        this.isCloud = cloud;
        return this;
    }

    public final void setGlobal(boolean global) {
        this.isGlobal = global;
    }

    public final void setHeight(float height) {
        this.height = height;
    }

    @NotNull
    public final BkGroundRes setResId(@Nullable String resId) {
        this.resId = resId;
        return this;
    }

    @NotNull
    public final BkGroundRes setResIndex(int resIndex) {
        this.resIndex = resIndex;
        return this;
    }

    @NotNull
    public final BkGroundRes setSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        setWidth(size.getWidth());
        setHeight(size.getHeight());
        return this;
    }

    @NotNull
    public final BkGroundRes setType(int type) {
        this.type = type;
        return this;
    }

    @NotNull
    public final BkGroundRes setValue(@Nullable String value) {
        this.value = value;
        return this;
    }

    @NotNull
    public final BkGroundRes setVisible(boolean visible) {
        this.visible = visible;
        return this;
    }

    public final void setWidth(float width) {
        this.width = width;
    }

    public BkGroundRes(@Nullable BkGroundRes bkGroundRes) {
        if (bkGroundRes == null) {
            return;
        }
        setType(bkGroundRes.type).setValue(bkGroundRes.value).setResIndex(bkGroundRes.resIndex);
    }

    public BkGroundRes(int i) {
        setType(i);
    }
}
