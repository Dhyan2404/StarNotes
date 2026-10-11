package com.onyx.galaxy.note.category.p044ui;

import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, m61528d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Float;"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class ExpandFrameLayout$expandPercent$2 extends Lambda implements Function0<Float> {
    public static final ExpandFrameLayout$expandPercent$2 INSTANCE = new ExpandFrameLayout$expandPercent$2();

    public ExpandFrameLayout$expandPercent$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @NotNull
    public final Float invoke() {
        return Float.valueOf(ResManager.INSTANCE.getFloat(C10651R.dimen.template_title_expand_percent));
    }
}
