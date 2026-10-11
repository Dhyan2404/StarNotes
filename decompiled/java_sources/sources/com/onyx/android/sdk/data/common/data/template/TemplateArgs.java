package com.onyx.android.sdk.data.common.data.template;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;", "", "()V", "spaceArgs", "Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;", "getSpaceArgs", "()Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;", "setSpaceArgs", "(Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;)V", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TemplateArgs implements Cloneable {

    @Nullable
    private SpaceArgs spaceArgs;

    @NotNull
    public Object clone() {
        return super.clone();
    }

    @Nullable
    public final SpaceArgs getSpaceArgs() {
        return this.spaceArgs;
    }

    public final void setSpaceArgs(@Nullable SpaceArgs spaceArgs) {
        this.spaceArgs = spaceArgs;
    }
}
