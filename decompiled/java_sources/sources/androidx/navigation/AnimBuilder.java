package androidx.navigation;

import androidx.annotation.AnimRes;
import androidx.annotation.AnimatorRes;
import com.onyx.galaxy.note.message.handler.NotificationDisplayHandler;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0016\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0016\u0010\u0017R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\b¨\u0006\u0018"}, m61528d2 = {"Landroidx/navigation/AnimBuilder;", "", "", "a", "I", "getEnter", "()I", "setEnter", "(I)V", "enter", "b", "getExit", "setExit", NotificationDisplayHandler.STRATEGY_EXIT, "c", "getPopEnter", "setPopEnter", "popEnter", "d", "getPopExit", "setPopExit", "popExit", Constants.CONSTRUCTOR_NAME, "()V", "navigation-common_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@NavOptionsDsl
/* loaded from: classes3.dex */
public final class AnimBuilder {

    /* renamed from: a, reason: from kotlin metadata */
    @AnimRes
    @AnimatorRes
    public int enter = -1;

    /* renamed from: b, reason: from kotlin metadata */
    @AnimRes
    @AnimatorRes
    public int exit = -1;

    /* renamed from: c, reason: from kotlin metadata */
    @AnimRes
    @AnimatorRes
    public int popEnter = -1;

    /* renamed from: d, reason: from kotlin metadata */
    @AnimRes
    @AnimatorRes
    public int popExit = -1;

    public final int getEnter() {
        return this.enter;
    }

    public final int getExit() {
        return this.exit;
    }

    public final int getPopEnter() {
        return this.popEnter;
    }

    public final int getPopExit() {
        return this.popExit;
    }

    public final void setEnter(int i) {
        this.enter = i;
    }

    public final void setExit(int i) {
        this.exit = i;
    }

    public final void setPopEnter(int i) {
        this.popEnter = i;
    }

    public final void setPopExit(int i) {
        this.popExit = i;
    }
}
