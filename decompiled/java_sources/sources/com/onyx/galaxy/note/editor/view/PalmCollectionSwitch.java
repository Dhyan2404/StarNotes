package com.onyx.galaxy.note.editor.view;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.settings.p047ui.PalmCollectionType;
import com.onyx.galaxy.note.settings.p047ui.PalmGestureCollection;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010B\u001b\b\u0016\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u000f\u0010\u0013B#\b\u0016\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u000f\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0016\u0010\f\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/PalmCollectionSwitch;", "Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "dispatchTouchEvent", "Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;", "Z0", "Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;", "palmGestureCollection", "a1", Constants.HASIDCALL_INDEX_SIG, "isForceCollection", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PalmCollectionSwitch extends TintSwitchCompat {

    /* renamed from: Z0, reason: from kotlin metadata */
    @NotNull
    public PalmGestureCollection palmGestureCollection;

    /* renamed from: a1, reason: from kotlin metadata */
    public boolean isForceCollection;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PalmCollectionSwitch(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.palmGestureCollection.handleEvent(event, this.isForceCollection);
        return super.dispatchTouchEvent(event);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PalmCollectionSwitch(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.switchStyle);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PalmCollectionSwitch(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.palmGestureCollection = new PalmGestureCollection(PalmCollectionType.SINGLE_CLICK);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C10651R.styleable.PalmCollectionSwitch);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.isForceCollection = obtainStyledAttributes.getBoolean(C10651R.styleable.PalmCollectionSwitch_isForceCollection, false);
        obtainStyledAttributes.recycle();
    }
}
