package com.onyx.android.sdk.rxgesture.palm;

import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.transition.Transition;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\f\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\nJ\u0006\u0010\r\u001a\u00020\bJ\u0006\u0010\u000f\u001a\u00020\u000eJ\u0006\u0010\u0010\u001a\u00020\bR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0017\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R&\u0010\u001c\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0018j\b\u0012\u0004\u0012\u00020\u0004`\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;", "", "Landroid/view/View;", "view", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "Lcom/onyx/android/sdk/rxgesture/palm/PalmType;", "onTouchEvent", "", "collectionTouchList", "", "isForceDetect", "analysisSizeList", "releaseTouchList", "", "palmSize", Constants.RESET, "Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;", "a", "Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;", "touchSizeHistogram", "b", "Lcom/onyx/android/sdk/rxgesture/palm/PalmType;", "touchSizeType", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "c", "Ljava/util/ArrayList;", "unConfirmedTouchList", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPalmGestureDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PalmGestureDetector.kt\ncom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,84:1\n1855#2,2:85\n*S KotlinDebug\n*F\n+ 1 PalmGestureDetector.kt\ncom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector\n*L\n65#1:85,2\n*E\n"})
/* loaded from: classes8.dex */
public final class PalmGestureDetector {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: d */
    @NotNull
    public static final PalmGestureDetector f46539d = new PalmGestureDetector();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final TouchSizeHistogram touchSizeHistogram = new TouchSizeHistogram();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public PalmType touchSizeType = PalmType.NORMAL_SIZE;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public ArrayList<MotionEvent> unConfirmedTouchList = new ArrayList<>();

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector$Companion;", "", "()V", Transition.f10626J0, "Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;", "getInstance", "()Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PalmGestureDetector getInstance() {
            return PalmGestureDetector.f46539d;
        }

        public Companion() {
        }
    }

    public static /* synthetic */ void analysisSizeList$default(PalmGestureDetector palmGestureDetector, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        palmGestureDetector.analysisSizeList(z);
    }

    public final void analysisSizeList(boolean isForceDetect) {
        Iterator<T> it2 = this.unConfirmedTouchList.iterator();
        while (it2.hasNext()) {
            this.touchSizeHistogram.collectSize((MotionEvent) it2.next(), isForceDetect);
        }
        this.unConfirmedTouchList.clear();
    }

    public final void collectionTouchList(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.unConfirmedTouchList.add(MotionEvent.obtain(event));
    }

    @NotNull
    public final PalmType onTouchEvent(@NotNull View view, @NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getToolType(event.getActionIndex()) != 1) {
            return PalmType.NORMAL_SIZE;
        }
        PalmType palmType = PalmType.NORMAL_SIZE;
        int action = event.getAction();
        if (action == 0) {
            this.touchSizeType = palmType;
            PalmType touchSizeType = this.touchSizeHistogram.getTouchSizeType(event);
            this.touchSizeType = touchSizeType;
            return touchSizeType;
        }
        if (action != 1) {
            if (action == 2) {
                if (!this.touchSizeType.isPalmPress()) {
                    this.touchSizeType = this.touchSizeHistogram.getTouchSizeType(event);
                }
                return this.touchSizeType;
            }
            if (action != 3) {
                return this.touchSizeType.isPalmPress() ? this.touchSizeType : palmType;
            }
        }
        if (this.touchSizeType.isPalmPress()) {
            palmType = this.touchSizeType;
        }
        this.touchSizeHistogram.logAfterUpOrCancel();
        return palmType;
    }

    public final float palmSize() {
        return this.touchSizeHistogram.getPalmSize();
    }

    public final void releaseTouchList() {
        this.unConfirmedTouchList.clear();
    }

    public final void reset() {
        releaseTouchList();
        this.touchSizeHistogram.reset();
    }
}
