package com.onyx.android.sdk.universal.common.drag;

import android.view.DragEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004R\"\u0010\u000f\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u0013\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\n\u001a\u0004\b\u0011\u0010\f\"\u0004\b\u0012\u0010\u000eR\"\u0010\u0017\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;", "", "Landroid/view/View;", "v", "Landroid/view/DragEvent;", NotificationCompat.CATEGORY_EVENT, "", "onDrag", "", "a", "F", "getLastDragX", "()F", "setLastDragX", "(F)V", "lastDragX", "b", "getLastDragY", "setLastDragY", "lastDragY", "", "c", Constants.HASIDCALL_INDEX_SIG, "isEntered", Constants.BOOLEAN_VALUE_SIG, "setEntered", "(Z)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DragAndDropHelper {

    /* renamed from: a, reason: from kotlin metadata */
    public float lastDragX;

    /* renamed from: b, reason: from kotlin metadata */
    public float lastDragY;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean isEntered;

    public final float getLastDragX() {
        return this.lastDragX;
    }

    public final float getLastDragY() {
        return this.lastDragY;
    }

    /* renamed from: isEntered, reason: from getter */
    public final boolean getIsEntered() {
        return this.isEntered;
    }

    public final void onDrag(@NotNull View v, @NotNull DragEvent event) {
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(event, "event");
        int action = event.getAction();
        if (action == 1) {
            this.lastDragX = 0.0f;
            this.lastDragY = 0.0f;
            return;
        }
        if (action == 2) {
            this.lastDragX = event.getX();
            this.lastDragY = event.getY();
            return;
        }
        if (action == 4) {
            this.lastDragX = 0.0f;
            this.lastDragY = 0.0f;
            this.isEntered = false;
        } else if (action == 5) {
            this.isEntered = true;
        } else {
            if (action != 6) {
                return;
            }
            this.isEntered = false;
        }
    }

    public final void setEntered(boolean z) {
        this.isEntered = z;
    }

    public final void setLastDragX(float f) {
        this.lastDragX = f;
    }

    public final void setLastDragY(float f) {
        this.lastDragY = f;
    }
}
