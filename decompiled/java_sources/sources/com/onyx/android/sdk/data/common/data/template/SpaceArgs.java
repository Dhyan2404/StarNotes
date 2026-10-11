package com.onyx.android.sdk.data.common.data.template;

import com.onyx.android.sdk.base.utils.DimenUtils;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.FloatOption;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import java.math.BigDecimal;
import java.math.RoundingMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0017\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 32\u00020\u0001:\u00013B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010%\u001a\u00020\u0004H\u0002J\u0006\u0010&\u001a\u00020\u0004J\u0006\u0010'\u001a\u00020\u0004J\u0006\u0010(\u001a\u00020\u0004J\u0006\u0010)\u001a\u00020*J\u0006\u0010+\u001a\u00020\u0004J\u0006\u0010,\u001a\u00020\u0004J\b\u0010-\u001a\u00020\u0004H\u0002J\b\u0010.\u001a\u00020\u0004H\u0002J\b\u0010/\u001a\u00020\u001cH\u0016J\u000e\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R&\u0010\"\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u00048F@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0006\"\u0004\b$\u0010\b¨\u00064"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;", "", "()V", "defaultSpaceValueDp", "", "getDefaultSpaceValueDp", "()F", "setDefaultSpaceValueDp", "(F)V", "maxSpaceValueDp", "getMaxSpaceValueDp", "setMaxSpaceValueDp", "minSpaceValueDp", "getMinSpaceValueDp", "setMinSpaceValueDp", "pagePaddingBottom", "getPagePaddingBottom", "setPagePaddingBottom", "pagePaddingLeft", "getPagePaddingLeft", "setPagePaddingLeft", "pagePaddingRight", "getPagePaddingRight", "setPagePaddingRight", "pagePaddingTop", "getPagePaddingTop", "setPagePaddingTop", "spaceUniqueId", "", "getSpaceUniqueId", "()Ljava/lang/String;", "setSpaceUniqueId", "(Ljava/lang/String;)V", "value", "spaceValuePx", "getSpaceValuePx", "setSpaceValuePx", "defaultSpaceValuePx", "displayMaxValue", "displayMinValue", "loadSpaceDisplayValue", "loadSpaceHalfUpDisplayValue", "", "loadSpaceValuePx", "loadSpaceValuePxThumbnail", "maxSpaceValuePx", "minSpaceValuePx", "toString", "updateByNormalizeValue", "", "normalizeValue", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SpaceArgs implements Cloneable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    public static final String TEMPLATE_SPACE_KEY = "template_space_key";
    private float defaultSpaceValueDp;
    private float maxSpaceValueDp;
    private float minSpaceValueDp;
    private float pagePaddingBottom;
    private float pagePaddingLeft;
    private float pagePaddingRight;
    private float pagePaddingTop;

    @NotNull
    private String spaceUniqueId = "";
    private float spaceValuePx;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs$Companion;", "", "()V", "TEMPLATE_SPACE_KEY", "", "generateSpaceUniqueId", CouchFieldKey.KEY_CATEGORY_ID, "templateUniqueId", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String generateSpaceUniqueId(@NotNull String categoryId, @NotNull String templateUniqueId) {
            Intrinsics.checkNotNullParameter(categoryId, "categoryId");
            Intrinsics.checkNotNullParameter(templateUniqueId, "templateUniqueId");
            return "template_space_key-" + categoryId + '-' + templateUniqueId;
        }

        private Companion() {
        }
    }

    private final float defaultSpaceValuePx() {
        return DimenUtils.INSTANCE.dp2PxFloat(this.defaultSpaceValueDp);
    }

    private final float maxSpaceValuePx() {
        return DimenUtils.INSTANCE.dp2PxFloat(this.maxSpaceValueDp);
    }

    private final float minSpaceValuePx() {
        return DimenUtils.INSTANCE.dp2PxFloat(this.minSpaceValueDp);
    }

    @NotNull
    public Object clone() {
        return super.clone();
    }

    public final float displayMaxValue() {
        return ResManager.INSTANCE.getFloat(C7373R.dimen.template_max_value);
    }

    public final float displayMinValue() {
        return ResManager.INSTANCE.getFloat(C7373R.dimen.template_min_value);
    }

    public final float getDefaultSpaceValueDp() {
        return this.defaultSpaceValueDp;
    }

    public final float getMaxSpaceValueDp() {
        return this.maxSpaceValueDp;
    }

    public final float getMinSpaceValueDp() {
        return this.minSpaceValueDp;
    }

    public final float getPagePaddingBottom() {
        return this.pagePaddingBottom;
    }

    public final float getPagePaddingLeft() {
        return this.pagePaddingLeft;
    }

    public final float getPagePaddingRight() {
        return this.pagePaddingRight;
    }

    public final float getPagePaddingTop() {
        return this.pagePaddingTop;
    }

    @NotNull
    public final String getSpaceUniqueId() {
        return this.spaceUniqueId;
    }

    public final float getSpaceValuePx() {
        float f = new FloatOption(MMKVUtils.INSTANCE.get(), this.spaceUniqueId, 0.0f).get();
        if (f > 0.0f) {
            return f;
        }
        return 0.0f;
    }

    public final float loadSpaceDisplayValue() {
        float maxSpaceValuePx = maxSpaceValuePx() - minSpaceValuePx();
        float displayMaxValue = displayMaxValue() - displayMinValue();
        if (maxSpaceValuePx == 0.0f) {
            return displayMinValue();
        }
        return ((Number) MathUtils.INSTANCE.clamp(Float.valueOf(displayMinValue() + (((loadSpaceValuePx() - minSpaceValuePx()) / maxSpaceValuePx) * displayMaxValue)), Float.valueOf(displayMinValue()), Float.valueOf(displayMaxValue()))).floatValue();
    }

    public final int loadSpaceHalfUpDisplayValue() {
        return new BigDecimal(String.valueOf(loadSpaceDisplayValue())).setScale(0, RoundingMode.HALF_UP).intValue();
    }

    public final float loadSpaceValuePx() {
        return ((Number) MathUtils.INSTANCE.clamp(Float.valueOf(getSpaceValuePx() <= 0.0f ? defaultSpaceValuePx() : getSpaceValuePx()), Float.valueOf(minSpaceValuePx()), Float.valueOf(maxSpaceValuePx()))).floatValue();
    }

    public final float loadSpaceValuePxThumbnail() {
        return loadSpaceValuePx() / ResManager.INSTANCE.getFloat(C7373R.dimen.template_thumbnail_ratio);
    }

    public final void setDefaultSpaceValueDp(float f) {
        this.defaultSpaceValueDp = f;
    }

    public final void setMaxSpaceValueDp(float f) {
        this.maxSpaceValueDp = f;
    }

    public final void setMinSpaceValueDp(float f) {
        this.minSpaceValueDp = f;
    }

    public final void setPagePaddingBottom(float f) {
        this.pagePaddingBottom = f;
    }

    public final void setPagePaddingLeft(float f) {
        this.pagePaddingLeft = f;
    }

    public final void setPagePaddingRight(float f) {
        this.pagePaddingRight = f;
    }

    public final void setPagePaddingTop(float f) {
        this.pagePaddingTop = f;
    }

    public final void setSpaceUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.spaceUniqueId = str;
    }

    public final void setSpaceValuePx(float f) {
        if (f == 0.0f) {
            return;
        }
        this.spaceValuePx = f;
        if (this.spaceUniqueId.length() > 0) {
            new FloatOption(MMKVUtils.INSTANCE.get(), this.spaceUniqueId, 0.0f).put(this.spaceValuePx);
        }
    }

    @NotNull
    public String toString() {
        return "{ spaceValuePx: " + getSpaceValuePx() + " }";
    }

    public final void updateByNormalizeValue(float normalizeValue) {
        setSpaceValuePx((((maxSpaceValuePx() - minSpaceValuePx()) / (displayMaxValue() - displayMinValue())) * (normalizeValue - displayMinValue())) + minSpaceValuePx());
    }
}
