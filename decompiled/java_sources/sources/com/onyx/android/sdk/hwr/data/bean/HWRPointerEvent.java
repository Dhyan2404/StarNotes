package com.onyx.android.sdk.hwr.data.bean;

import androidx.core.app.NotificationCompat;
import com.alibaba.fastjson2.annotation.JSONCreator;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.hwr.data.constant.HWRPointerEventType;
import com.onyx.android.sdk.hwr.data.constant.HWRPointerType;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b!\u0018\u0000 L2\u00020\u0001:\u0002LMB\t\b\u0017¢\u0006\u0004\bG\u0010HB\u0011\b\u0016\u0012\u0006\u0010I\u001a\u00020\u0000¢\u0006\u0004\bG\u0010JBA\b\u0016\u0012\u0006\u0010\u0011\u001a\u00020\n\u0012\u0006\u0010\u0019\u001a\u00020\u0012\u0012\u0006\u0010\u001d\u001a\u00020\u0012\u0012\u0006\u0010%\u001a\u00020\u001e\u0012\u0006\u0010)\u001a\u00020\u0012\u0012\u0006\u00104\u001a\u00020-\u0012\u0006\u0010;\u001a\u00020\u0005¢\u0006\u0004\bG\u0010KJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0016\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\t\u001a\u00020\u0007R\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010\u001d\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0014\u001a\u0004\b\u001b\u0010\u0016\"\u0004\b\u001c\u0010\u0018R\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\"\u0010)\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010\u0014\u001a\u0004\b'\u0010\u0016\"\u0004\b(\u0010\u0018R\"\u0010,\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010\u0014\u001a\u0004\b*\u0010\u0016\"\u0004\b+\u0010\u0018R\"\u00104\u001a\u00020-8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\"\u0010;\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R\"\u0010?\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b<\u0010\u0014\u001a\u0004\b=\u0010\u0016\"\u0004\b>\u0010\u0018R\"\u0010F\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b@\u0010A\u001a\u0004\bB\u0010C\"\u0004\bD\u0010E¨\u0006N"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;", "", "", "toString", Constants.ATTRVAL_OTHER, "", "pxThreshold", "", "near", "isEmpty", "Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;", "a", "Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;", "getEventType", "()Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;", "setEventType", "(Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;)V", "eventType", "", "b", "F", "getX", "()F", "setX", "(F)V", "x", "c", "getY", "setY", "y", "", "d", "J", "getT", "()J", "setT", "(J)V", "t", "e", "getF", "setF", C6997f.f39671c, "getW", "setW", "w", "Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;", C6998g.f39679a, "Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;", "getPointerType", "()Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;", "setPointerType", "(Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;)V", "pointerType", C6999h.f39688c, "I", "getPointerId", "()I", "setPointerId", "(I)V", "pointerId", "i", "getSlope", "setSlope", "slope", "j", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getStrokeId", "()Ljava/lang/String;", "setStrokeId", "(Ljava/lang/String;)V", "strokeId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", NotificationCompat.CATEGORY_EVENT, "(Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;)V", "(Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;FFJFLcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;I)V", "Companion", "HWRPointEventList", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRPointerEvent {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: k */
    @NotNull
    public static final HWRPointerEvent f42463k = new HWRPointerEvent();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public HWRPointerEventType eventType;

    /* renamed from: b, reason: from kotlin metadata */
    public float x;

    /* renamed from: c, reason: from kotlin metadata */
    public float y;

    /* renamed from: d, reason: from kotlin metadata */
    public long t;

    /* renamed from: e, reason: from kotlin metadata */
    public float f;

    /* renamed from: f, reason: from kotlin metadata */
    public float w;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public HWRPointerType pointerType;

    /* renamed from: h, reason: from kotlin metadata */
    public int pointerId;

    /* renamed from: i, reason: from kotlin metadata */
    public float slope;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public String strokeId;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$Companion;", "", "()V", "Empty", "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;", "getEmpty", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final HWRPointerEvent getEmpty() {
            return HWRPointerEvent.f42463k;
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$HWRPointEventList;", "Ljava/util/ArrayList;", "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;", "Lkotlin/collections/ArrayList;", "()V", "hasNearPoint", "", NotificationCompat.CATEGORY_EVENT, "pxThreshold", "", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nHWRPointerEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRPointerEvent.kt\ncom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$HWRPointEventList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,76:1\n1855#2,2:77\n*S KotlinDebug\n*F\n+ 1 HWRPointerEvent.kt\ncom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$HWRPointEventList\n*L\n12#1:77,2\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class HWRPointEventList extends ArrayList<HWRPointerEvent> {
        public /* bridge */ boolean contains(HWRPointerEvent hWRPointerEvent) {
            return super.contains((Object) hWRPointerEvent);
        }

        public /* bridge */ int getSize() {
            return super.size();
        }

        public final boolean hasNearPoint(@NotNull HWRPointerEvent event, int pxThreshold) {
            Intrinsics.checkNotNullParameter(event, "event");
            Iterator<HWRPointerEvent> it2 = iterator();
            while (it2.hasNext()) {
                if (it2.next().near(event, pxThreshold)) {
                    return true;
                }
            }
            return false;
        }

        public /* bridge */ int indexOf(HWRPointerEvent hWRPointerEvent) {
            return super.indexOf((Object) hWRPointerEvent);
        }

        public /* bridge */ int lastIndexOf(HWRPointerEvent hWRPointerEvent) {
            return super.lastIndexOf((Object) hWRPointerEvent);
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public final /* bridge */ HWRPointerEvent remove(int i) {
            return removeAt(i);
        }

        public /* bridge */ HWRPointerEvent removeAt(int i) {
            return (HWRPointerEvent) super.remove(i);
        }

        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final /* bridge */ int size() {
            return getSize();
        }

        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final /* bridge */ boolean contains(Object obj) {
            if (obj instanceof HWRPointerEvent) {
                return contains((HWRPointerEvent) obj);
            }
            return false;
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public final /* bridge */ int indexOf(Object obj) {
            if (obj instanceof HWRPointerEvent) {
                return indexOf((HWRPointerEvent) obj);
            }
            return -1;
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public final /* bridge */ int lastIndexOf(Object obj) {
            if (obj instanceof HWRPointerEvent) {
                return lastIndexOf((HWRPointerEvent) obj);
            }
            return -1;
        }

        public /* bridge */ boolean remove(HWRPointerEvent hWRPointerEvent) {
            return super.remove((Object) hWRPointerEvent);
        }

        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final /* bridge */ boolean remove(Object obj) {
            if (obj instanceof HWRPointerEvent) {
                return remove((HWRPointerEvent) obj);
            }
            return false;
        }
    }

    @JSONCreator
    public HWRPointerEvent() {
        HWRPointerType hWRPointerType = HWRPointerType.PEN;
        this.pointerType = hWRPointerType;
        this.strokeId = "";
        this.eventType = HWRPointerEventType.CANCEL;
        this.x = 0.0f;
        this.y = 0.0f;
        this.t = -1L;
        this.f = 0.0f;
        this.pointerType = hWRPointerType;
        this.pointerId = -1;
    }

    @NotNull
    public final HWRPointerEventType getEventType() {
        return this.eventType;
    }

    public final float getF() {
        return this.f;
    }

    public final int getPointerId() {
        return this.pointerId;
    }

    @NotNull
    public final HWRPointerType getPointerType() {
        return this.pointerType;
    }

    public final float getSlope() {
        return this.slope;
    }

    @NotNull
    public final String getStrokeId() {
        return this.strokeId;
    }

    public final long getT() {
        return this.t;
    }

    public final float getW() {
        return this.w;
    }

    public final float getX() {
        return this.x;
    }

    public final float getY() {
        return this.y;
    }

    public final boolean isEmpty() {
        return Intrinsics.areEqual(this, f42463k);
    }

    public final boolean near(@NotNull HWRPointerEvent other, int pxThreshold) {
        Intrinsics.checkNotNullParameter(other, "other");
        float f = pxThreshold;
        return ((Math.abs(other.x - this.x) > f ? 1 : (Math.abs(other.x - this.x) == f ? 0 : -1)) < 0) && ((Math.abs(other.y - this.y) > f ? 1 : (Math.abs(other.y - this.y) == f ? 0 : -1)) < 0);
    }

    public final void setEventType(@NotNull HWRPointerEventType hWRPointerEventType) {
        Intrinsics.checkNotNullParameter(hWRPointerEventType, "<set-?>");
        this.eventType = hWRPointerEventType;
    }

    public final void setF(float f) {
        this.f = f;
    }

    public final void setPointerId(int i) {
        this.pointerId = i;
    }

    public final void setPointerType(@NotNull HWRPointerType hWRPointerType) {
        Intrinsics.checkNotNullParameter(hWRPointerType, "<set-?>");
        this.pointerType = hWRPointerType;
    }

    public final void setSlope(float f) {
        this.slope = f;
    }

    public final void setStrokeId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.strokeId = str;
    }

    public final void setT(long j) {
        this.t = j;
    }

    public final void setW(float f) {
        this.w = f;
    }

    public final void setX(float f) {
        this.x = f;
    }

    public final void setY(float f) {
        this.y = f;
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.eventType);
        sb.append(' ');
        sb.append(this.x);
        sb.append(' ');
        sb.append(this.y);
        return sb.toString();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HWRPointerEvent(@NotNull HWRPointerEvent event) {
        this(event.eventType, event.x, event.y, event.t, event.f, event.pointerType, event.pointerId);
        Intrinsics.checkNotNullParameter(event, "event");
    }

    public HWRPointerEvent(@NotNull HWRPointerEventType eventType, float f, float f2, long j, float f3, @NotNull HWRPointerType pointerType, int i) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(pointerType, "pointerType");
        HWRPointerType hWRPointerType = HWRPointerType.PEN;
        this.strokeId = "";
        this.eventType = eventType;
        this.x = f;
        this.y = f2;
        this.t = j;
        this.f = f3;
        this.pointerType = pointerType;
        this.pointerId = i;
    }
}
