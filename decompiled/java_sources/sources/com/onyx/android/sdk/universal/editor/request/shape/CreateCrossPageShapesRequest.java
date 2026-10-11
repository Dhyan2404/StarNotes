package com.onyx.android.sdk.universal.editor.request.shape;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.extension.CrossPageShapesKt;
import com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0006¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\r\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\tR#\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00070\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C6997f.f39671c, "Ljava/util/List;", "visibleBoxList", C6998g.f39679a, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "shapeList", "", "i", "Ljava/util/Map;", "getShapeMap", "()Ljava/util/Map;", "shapeMap", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCreateCrossPageShapesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateCrossPageShapesRequest.kt\ncom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,31:1\n1#2:32\n*E\n"})
/* loaded from: classes8.dex */
public final class CreateCrossPageShapesRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<BoxInfo> visibleBoxList;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public BoxInfo virtualBoxInfo;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapeList;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Map<Shape, BoxInfo> shapeMap;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CreateCrossPageShapesRequest(@NotNull WorkBundle workBundle, @NotNull List<BoxInfo> visibleBoxList, @NotNull BoxInfo virtualBoxInfo, @NotNull List<? extends Shape> shapeList) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        this.visibleBoxList = visibleBoxList;
        this.virtualBoxInfo = virtualBoxInfo;
        this.shapeList = shapeList;
        this.shapeMap = new LinkedHashMap();
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Object obj;
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Iterator<T> it2 = this.visibleBoxList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it2.next();
                if (Intrinsics.areEqual(((BoxInfo) obj).getId(), this.virtualBoxInfo.getId())) {
                    break;
                }
            }
        }
        BoxInfo boxInfo = (BoxInfo) AnyKt.getOrElse(obj, (Function0<? extends Object>) new Function0<BoxInfo>() { // from class: com.onyx.android.sdk.universal.editor.request.shape.CreateCrossPageShapesRequest$execute$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final BoxInfo invoke() {
                BoxInfo boxInfo2;
                boxInfo2 = CreateCrossPageShapesRequest.this.virtualBoxInfo;
                return boxInfo2;
            }
        });
        this.virtualBoxInfo = boxInfo;
        this.shapeMap.putAll(CrossPageShapesKt.createCrossPageShapeMap(this.shapeList, this.visibleBoxList, boxInfo));
    }

    @NotNull
    public final Map<Shape, BoxInfo> getShapeMap() {
        return this.shapeMap;
    }
}
