package com.onyx.android.sdk.note.request;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.extension.ShapeKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsJvmKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0010\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b:\u0010;J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u001e\u0010\r\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002R\"\u0010\u0014\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R'\u0010\u001c\u001a\u0012\u0012\u0004\u0012\u00020\u00160\u0015j\b\u0012\u0004\u0012\u00020\u0016`\u00178\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR*\u0010$\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010&\u001a\u00020%8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\"\u0010-\u001a\u00020,8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R$\u00109\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108¨\u0006<"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/HitTestShapeRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", C6998g.f39679a, "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "", C6997f.f39671c, "", "F", "getHitTestRadius", "()F", "setHitTestRadius", "(F)V", "hitTestRadius", "Ljava/util/HashSet;", "", "Lkotlin/collections/HashSet;", C6999h.f39688c, "Ljava/util/HashSet;", "getIgnoreShapeSet", "()Ljava/util/HashSet;", "ignoreShapeSet", "Lio/reactivex/rxjava3/functions/Predicate;", "i", "Lio/reactivex/rxjava3/functions/Predicate;", "getPredicate", "()Lio/reactivex/rxjava3/functions/Predicate;", "setPredicate", "(Lio/reactivex/rxjava3/functions/Predicate;)V", "predicate", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getTouchPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "setTouchPoint", "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "", CouchFieldKey.KEY_PAGE_ID, Constants.STRING_SIG, "getPageUniqueId", "()Ljava/lang/String;", "setPageUniqueId", "(Ljava/lang/String;)V", "j", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getHitTestShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "setHitTestShape", "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "hitTestShape", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHitTestShapeRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HitTestShapeRequest.kt\ncom/onyx/android/sdk/note/request/HitTestShapeRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,75:1\n1855#2,2:76\n*S KotlinDebug\n*F\n+ 1 HitTestShapeRequest.kt\ncom/onyx/android/sdk/note/request/HitTestShapeRequest\n*L\n52#1:76,2\n*E\n"})
/* loaded from: classes8.dex */
public final class HitTestShapeRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    public float hitTestRadius;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final HashSet<Integer> ignoreShapeSet;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public Predicate<Shape> predicate;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public Shape hitTestShape;
    public String pageUniqueId;
    public TouchPoint touchPoint;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HitTestShapeRequest(@NotNull NoteBundle noteBundle) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        HashSet<Integer> hashSet = new HashSet<>();
        this.ignoreShapeSet = hashSet;
        hashSet.add(14);
        hashSet.add(20);
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        NotePage pageByUniqueId = NoteDocNotePage.INSTANCE.getPageByUniqueId(noteBundle.getNoteDoc(), getPageUniqueId());
        if (pageByUniqueId == null) {
            return;
        }
        m34115g(pageByUniqueId);
    }

    /* renamed from: f */
    public final boolean m34114f(NotePage notePage, List<? extends Shape> shapes) {
        for (Shape shape : shapes) {
            if (!this.ignoreShapeSet.contains(Integer.valueOf(shape.getType())) && ShapeKt.isShapeOnCurrentLayer(shape, notePage) && notePage.getPageInfo().isLayerVisible(shape.getLayerId()) && RxjavaKt.testSafety(this.predicate, shape) && shape.fastHitTest(getTouchPoint().getX(), getTouchPoint().getY(), this.hitTestRadius) && shape.hitTest(getTouchPoint().getX(), getTouchPoint().getY(), this.hitTestRadius)) {
                this.hitTestShape = shape;
                return true;
            }
        }
        return false;
    }

    /* renamed from: g */
    public final void m34115g(NotePage notePage) {
        List<Shape> renderShapeList = NotePageShape.INSTANCE.getRenderShapeList(notePage);
        List<Shape> list = renderShapeList;
        if (list == null || list.isEmpty()) {
            return;
        }
        CollectionsKt___CollectionsJvmKt.reverse(renderShapeList);
        m34114f(notePage, renderShapeList);
    }

    public final float getHitTestRadius() {
        return this.hitTestRadius;
    }

    @Nullable
    public final Shape getHitTestShape() {
        return this.hitTestShape;
    }

    @NotNull
    public final HashSet<Integer> getIgnoreShapeSet() {
        return this.ignoreShapeSet;
    }

    @NotNull
    public final String getPageUniqueId() {
        String str = this.pageUniqueId;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PAGE_ID);
        return null;
    }

    @Nullable
    public final Predicate<Shape> getPredicate() {
        return this.predicate;
    }

    @NotNull
    public final TouchPoint getTouchPoint() {
        TouchPoint touchPoint = this.touchPoint;
        if (touchPoint != null) {
            return touchPoint;
        }
        Intrinsics.throwUninitializedPropertyAccessException("touchPoint");
        return null;
    }

    public final void setHitTestRadius(float f) {
        this.hitTestRadius = f;
    }

    public final void setHitTestShape(@Nullable Shape shape) {
        this.hitTestShape = shape;
    }

    public final void setPageUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageUniqueId = str;
    }

    public final void setPredicate(@Nullable Predicate<Shape> predicate) {
        this.predicate = predicate;
    }

    public final void setTouchPoint(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "<set-?>");
        this.touchPoint = touchPoint;
    }
}
