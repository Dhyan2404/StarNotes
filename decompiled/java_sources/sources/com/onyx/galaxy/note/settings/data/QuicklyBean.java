package com.onyx.galaxy.note.settings.data;

import com.alibaba.fastjson2.TypeReference;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.data.common.data.template.CoverArgs;
import com.onyx.android.sdk.data.common.data.template.TemplateArgs;
import com.onyx.android.sdk.data.utils.IntOption;
import com.onyx.android.sdk.data.utils.JSONObjectOption;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.data.utils.StringOption;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.sun.org.apache.bcel.internal.Constants;
import com.tencent.mmkv.MMKV;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b,\u0010-R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010\u001d\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0014\u001a\u0004\b\u001b\u0010\u0016\"\u0004\b\u001c\u0010\u0018R(\u0010&\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R(\u0010+\u001a\b\u0012\u0004\u0012\u00020'0\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010!\u001a\u0004\b)\u0010#\"\u0004\b*\u0010%¨\u0006."}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/data/QuicklyBean;", "", "Lcom/onyx/android/sdk/data/utils/IntOption;", "a", "Lcom/onyx/android/sdk/data/utils/IntOption;", "getOrientation", "()Lcom/onyx/android/sdk/data/utils/IntOption;", "setOrientation", "(Lcom/onyx/android/sdk/data/utils/IntOption;)V", "orientation", "b", "getWidth", "setWidth", "width", "c", "getHeight", "setHeight", "height", "Lcom/onyx/android/sdk/data/utils/StringOption;", "d", "Lcom/onyx/android/sdk/data/utils/StringOption;", "getTemplateId", "()Lcom/onyx/android/sdk/data/utils/StringOption;", "setTemplateId", "(Lcom/onyx/android/sdk/data/utils/StringOption;)V", "templateId", "e", "getCoverId", "setCoverId", "coverId", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;", C6997f.f39671c, "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "getTemplateArgs", "()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "setTemplateArgs", "(Lcom/onyx/android/sdk/data/utils/JSONObjectOption;)V", "templateArgs", "Lcom/onyx/android/sdk/data/common/data/template/CoverArgs;", C6998g.f39679a, "getCoverArgs", "setCoverArgs", "coverArgs", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class QuicklyBean {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public IntOption orientation;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public IntOption width;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public IntOption height;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public StringOption templateId;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public StringOption coverId;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public JSONObjectOption<TemplateArgs> templateArgs;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public JSONObjectOption<CoverArgs> coverArgs;

    public QuicklyBean() {
        MMKVUtils mMKVUtils = MMKVUtils.INSTANCE;
        this.orientation = new IntOption(mMKVUtils.get(), SettingsConfigConst.SETTING_DOC_QUICKLY_ORIENTATION, Orientation.PORTRAIT.getValue());
        MMKV mmkv = mMKVUtils.get();
        SizeFormat sizeFormat = SizeFormat.f45503A4;
        this.width = new IntOption(mmkv, SettingsConfigConst.SETTING_DOC_QUICKLY_PAGE_WIDTH, sizeFormat.getSize().getWidth());
        this.height = new IntOption(mMKVUtils.get(), SettingsConfigConst.SETTING_DOC_QUICKLY_PAGE_HEIGHT, sizeFormat.getSize().getHeight());
        this.templateId = new StringOption(mMKVUtils.get(), SettingsConfigConst.SETTING_DOC_QUICKLY_TEMPLATE_ID, "");
        this.coverId = new StringOption(mMKVUtils.get(), SettingsConfigConst.SETTING_DOC_QUICKLY_COVER_ID, "");
        this.templateArgs = new JSONObjectOption<>(mMKVUtils.get(), SettingsConfigConst.SETTING_DOC_QUICKLY_TEMPLATE_ARGS, new TypeReference<TemplateArgs>() { // from class: com.onyx.galaxy.note.settings.data.QuicklyBean$templateArgs$1
        }, new Function0<TemplateArgs>() { // from class: com.onyx.galaxy.note.settings.data.QuicklyBean$templateArgs$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TemplateArgs invoke() {
                return new TemplateArgs();
            }
        });
        this.coverArgs = new JSONObjectOption<>(mMKVUtils.get(), SettingsConfigConst.SETTING_DOC_QUICKLY_COVER_ARGS, new TypeReference<CoverArgs>() { // from class: com.onyx.galaxy.note.settings.data.QuicklyBean$coverArgs$1
        }, new Function0<CoverArgs>() { // from class: com.onyx.galaxy.note.settings.data.QuicklyBean$coverArgs$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CoverArgs invoke() {
                return new CoverArgs();
            }
        });
    }

    @NotNull
    public final JSONObjectOption<CoverArgs> getCoverArgs() {
        return this.coverArgs;
    }

    @NotNull
    public final StringOption getCoverId() {
        return this.coverId;
    }

    @NotNull
    public final IntOption getHeight() {
        return this.height;
    }

    @NotNull
    public final IntOption getOrientation() {
        return this.orientation;
    }

    @NotNull
    public final JSONObjectOption<TemplateArgs> getTemplateArgs() {
        return this.templateArgs;
    }

    @NotNull
    public final StringOption getTemplateId() {
        return this.templateId;
    }

    @NotNull
    public final IntOption getWidth() {
        return this.width;
    }

    public final void setCoverArgs(@NotNull JSONObjectOption<CoverArgs> jSONObjectOption) {
        Intrinsics.checkNotNullParameter(jSONObjectOption, "<set-?>");
        this.coverArgs = jSONObjectOption;
    }

    public final void setCoverId(@NotNull StringOption stringOption) {
        Intrinsics.checkNotNullParameter(stringOption, "<set-?>");
        this.coverId = stringOption;
    }

    public final void setHeight(@NotNull IntOption intOption) {
        Intrinsics.checkNotNullParameter(intOption, "<set-?>");
        this.height = intOption;
    }

    public final void setOrientation(@NotNull IntOption intOption) {
        Intrinsics.checkNotNullParameter(intOption, "<set-?>");
        this.orientation = intOption;
    }

    public final void setTemplateArgs(@NotNull JSONObjectOption<TemplateArgs> jSONObjectOption) {
        Intrinsics.checkNotNullParameter(jSONObjectOption, "<set-?>");
        this.templateArgs = jSONObjectOption;
    }

    public final void setTemplateId(@NotNull StringOption stringOption) {
        Intrinsics.checkNotNullParameter(stringOption, "<set-?>");
        this.templateId = stringOption;
    }

    public final void setWidth(@NotNull IntOption intOption) {
        Intrinsics.checkNotNullParameter(intOption, "<set-?>");
        this.width = intOption;
    }
}
