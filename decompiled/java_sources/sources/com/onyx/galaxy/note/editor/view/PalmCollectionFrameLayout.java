package com.onyx.galaxy.note.editor.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.galaxy.note.settings.p047ui.PalmCollectionType;
import com.onyx.galaxy.note.settings.p047ui.PalmGestureCollection;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0013\b\u0016\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\rB\u001d\b\u0016\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\f\u0010\u0010B%\b\u0016\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\f\u0010\u0013J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/PalmCollectionFrameLayout;", "Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "dispatchTouchEvent", "Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;", C6999h.f39688c, "Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;", "palmGestureCollection", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PalmCollectionFrameLayout extends TintFrameLayout {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public PalmGestureCollection palmGestureCollection;

    public PalmCollectionFrameLayout(@Nullable Context context) {
        super(context);
        this.palmGestureCollection = new PalmGestureCollection(PalmCollectionType.SINGLE_CLICK);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        PalmGestureCollection.handleEvent$default(this.palmGestureCollection, event, false, 2, null);
        return super.dispatchTouchEvent(event);
    }

    public PalmCollectionFrameLayout(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.palmGestureCollection = new PalmGestureCollection(PalmCollectionType.SINGLE_CLICK);
    }

    public PalmCollectionFrameLayout(@Nullable Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.palmGestureCollection = new PalmGestureCollection(PalmCollectionType.SINGLE_CLICK);
    }
}
