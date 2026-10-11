package defpackage;

import com.onegravity.colorpicker.OpacityBar;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"LColorItem;", "", "", "a", Constants.STRING_SIG, "getColor", "()Ljava/lang/String;", "setColor", "(Ljava/lang/String;)V", "color", "", "b", "F", "getOpacity", "()F", "setOpacity", "(F)V", OpacityBar.f39917J, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes3.dex */
public final class ColorItem {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String color = "#000000";

    /* renamed from: b, reason: from kotlin metadata */
    public float opacity = 1.0f;

    @NotNull
    public final String getColor() {
        return this.color;
    }

    public final float getOpacity() {
        return this.opacity;
    }

    public final void setColor(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.color = str;
    }

    public final void setOpacity(float f) {
        this.opacity = f;
    }
}
