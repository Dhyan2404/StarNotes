package com.onyx.android.sdk.note.request;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.neohwr.layout.SourcePointGroup;
import com.onyx.android.sdk.neohwr.layout.TextCharBox;
import com.onyx.android.sdk.neohwr.layout.TextLineBox;
import com.onyx.android.sdk.neohwr.layout.TextRunBox;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.shape.HWRTextBlockBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeFactory;
import com.onyx.android.sdk.note.common.shape.object.HWRTextShape;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00070\t¢\u0006\u0004\b%\u0010&J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\r\u001a\u00020\fH\u0002J@\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001aH\u0002R\u001a\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00070\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u001dR'\u0010$\u001a\u0012\u0012\u0004\u0012\u00020\n0\u001fj\b\u0012\u0004\u0012\u00020\n` 8\u0006¢\u0006\f\n\u0004\b\u000e\u0010!\u001a\u0004\b\"\u0010#¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/CreateHWRTextCharShapeRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "i", "Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;", BreakpointSQLiteHelper.f39283i, "", "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;", C6998g.f39679a, "Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;", "run", C6999h.f39688c, "", "text", "", "textColor", "fontFace", "", "textSize", "Landroid/graphics/RectF;", "region", "Landroid/graphics/Matrix;", "mtx", "Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;", "sourcePointGroup", C6997f.f39671c, "Ljava/util/List;", "blocks", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "Ljava/util/ArrayList;", "getShapeList", "()Ljava/util/ArrayList;", "shapeList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/List;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCreateHWRTextCharShapeRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateHWRTextCharShapeRequest.kt\ncom/onyx/android/sdk/note/request/CreateHWRTextCharShapeRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,91:1\n1855#2,2:92\n1855#2,2:94\n1360#2:96\n1446#2,2:97\n1360#2:99\n1446#2,5:100\n1448#2,3:105\n1549#2:108\n1620#2,3:109\n*S KotlinDebug\n*F\n+ 1 CreateHWRTextCharShapeRequest.kt\ncom/onyx/android/sdk/note/request/CreateHWRTextCharShapeRequest\n*L\n29#1:92,2\n38#1:94,2\n46#1:96\n46#1:97,2\n47#1:99\n47#1:100,5\n46#1:105,3\n54#1:108\n54#1:109,3\n*E\n"})
/* loaded from: classes8.dex */
public final class CreateHWRTextCharShapeRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<HWRTextBlockBean> blocks;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ArrayList<HWRTextShape> shapeList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateHWRTextCharShapeRequest(@NotNull NoteBundle noteBundle, @NotNull List<HWRTextBlockBean> blocks) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(blocks, "blocks");
        this.blocks = blocks;
        this.shapeList = new ArrayList<>();
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Iterator<T> it2 = this.blocks.iterator();
        while (it2.hasNext()) {
            this.shapeList.addAll(m34098g((HWRTextBlockBean) it2.next()));
        }
        m34100i();
    }

    /* renamed from: f */
    public final HWRTextShape m34097f(String text, int textColor, String fontFace, float textSize, RectF region, Matrix mtx, SourcePointGroup sourcePointGroup) {
        Shape create = ShapeFactory.INSTANCE.create(48);
        Intrinsics.checkNotNull(create, "null cannot be cast to non-null type com.onyx.android.sdk.note.common.shape.object.HWRTextShape");
        HWRTextShape hWRTextShape = (HWRTextShape) create;
        hWRTextShape.setSourceShapeGroup(sourcePointGroup);
        TouchPoint touchPoint = new TouchPoint(region.left, region.top);
        hWRTextShape.onDown(touchPoint, touchPoint);
        TouchPoint touchPoint2 = new TouchPoint(region.right, region.bottom);
        hWRTextShape.onUp(touchPoint2, touchPoint2);
        hWRTextShape.setFillColor(textColor);
        hWRTextShape.setText(text);
        ShapeTextStyle shapeTextStyle = new ShapeTextStyle();
        shapeTextStyle.setFontFace(fontFace);
        shapeTextStyle.setTextSize(textSize);
        hWRTextShape.setTextStyle(shapeTextStyle);
        hWRTextShape.setShapeMatrix(mtx);
        hWRTextShape.ensureShapeUniqueId();
        hWRTextShape.updateShapeRect();
        hWRTextShape.updateShapeTime();
        hWRTextShape.updateShapeLayoutVersion();
        return hWRTextShape;
    }

    /* renamed from: g */
    public final List<HWRTextShape> m34098g(HWRTextBlockBean block) {
        List<TextLineBox> lines = block.getBlockBox().getLines();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = lines.iterator();
        while (it2.hasNext()) {
            List<TextRunBox> runs = ((TextLineBox) it2.next()).getRuns();
            ArrayList arrayList2 = new ArrayList();
            Iterator<T> it3 = runs.iterator();
            while (it3.hasNext()) {
                CollectionsKt__MutableCollectionsKt.addAll(arrayList2, m34099h((TextRunBox) it3.next()));
            }
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, arrayList2);
        }
        return arrayList;
    }

    @NotNull
    public final ArrayList<HWRTextShape> getShapeList() {
        return this.shapeList;
    }

    /* renamed from: h */
    public final List<HWRTextShape> m34099h(TextRunBox run) {
        int collectionSizeOrDefault;
        List<TextCharBox> chars = run.getChars();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(chars, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TextCharBox textCharBox : chars) {
            arrayList.add(m34097f(textCharBox.getText(), textCharBox.getTextColor(), run.getFont(), run.getTextSize(), textCharBox.getRegion(), textCharBox.getMatrix(), textCharBox.getSourcePointGroup()));
        }
        return arrayList;
    }

    /* renamed from: i */
    public final void m34100i() {
        long millisOfNow = DateTimeUtil.INSTANCE.millisOfNow();
        for (HWRTextShape hWRTextShape : this.shapeList) {
            millisOfNow++;
            hWRTextShape.setCreatedAt(new Date(millisOfNow));
            hWRTextShape.setUpdatedAt(new Date(millisOfNow));
        }
    }
}
