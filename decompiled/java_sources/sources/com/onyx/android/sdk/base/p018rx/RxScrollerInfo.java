package com.onyx.android.sdk.base.p018rx;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u0007\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\u000e\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0000J\u0006\u0010\u0006\u001a\u00020\u0005R\"\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\"\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\b\u001a\u0004\b\u000e\u0010\n\"\u0004\b\u000f\u0010\fR\"\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\"\u0010\u001b\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0012\u001a\u0004\b\u0019\u0010\u0014\"\u0004\b\u001a\u0010\u0016¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;", "", PrivilegedApp.f6532i, "", ExtensionNamespaceContext.EXSLT_SET_PREFIX, "", "isFinished", "a", Constants.HASIDCALL_INDEX_SIG, "isXFinished", Constants.BOOLEAN_VALUE_SIG, "setXFinished", "(Z)V", "b", "isYFinished", "setYFinished", "", "c", "F", "getNewX", "()F", "setNewX", "(F)V", "newX", "d", "getNewY", "setNewY", "newY", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class RxScrollerInfo {

    /* renamed from: a, reason: from kotlin metadata */
    public boolean isXFinished;

    /* renamed from: b, reason: from kotlin metadata */
    public boolean isYFinished;

    /* renamed from: c, reason: from kotlin metadata */
    public float newX;

    /* renamed from: d, reason: from kotlin metadata */
    public float newY;

    public final float getNewX() {
        return this.newX;
    }

    public final float getNewY() {
        return this.newY;
    }

    public final boolean isFinished() {
        return this.isXFinished && this.isYFinished;
    }

    /* renamed from: isXFinished, reason: from getter */
    public final boolean getIsXFinished() {
        return this.isXFinished;
    }

    /* renamed from: isYFinished, reason: from getter */
    public final boolean getIsYFinished() {
        return this.isYFinished;
    }

    public final void set(@NotNull RxScrollerInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        this.isXFinished = info.isXFinished;
        this.isYFinished = info.isYFinished;
        this.newX = info.newX;
        this.newY = info.newY;
    }

    public final void setNewX(float f) {
        this.newX = f;
    }

    public final void setNewY(float f) {
        this.newY = f;
    }

    public final void setXFinished(boolean z) {
        this.isXFinished = z;
    }

    public final void setYFinished(boolean z) {
        this.isYFinished = z;
    }
}
