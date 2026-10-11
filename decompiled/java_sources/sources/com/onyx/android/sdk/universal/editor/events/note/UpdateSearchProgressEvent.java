package com.onyx.android.sdk.universal.editor.events.note;

import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/UpdateSearchProgressEvent;", "", "", "a", "F", "getTotalProgress", "()F", "totalProgress", "b", "getDeltaProgress", "deltaProgress", Constants.CONSTRUCTOR_NAME, "(FF)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class UpdateSearchProgressEvent {

    /* renamed from: a, reason: from kotlin metadata */
    public final float totalProgress;

    /* renamed from: b, reason: from kotlin metadata */
    public final float deltaProgress;

    public UpdateSearchProgressEvent(float f, float f2) {
        this.totalProgress = f;
        this.deltaProgress = f2;
    }

    public final float getDeltaProgress() {
        return this.deltaProgress;
    }

    public final float getTotalProgress() {
        return this.totalProgress;
    }
}
