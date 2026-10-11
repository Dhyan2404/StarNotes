package com.onyx.galaxy.note.editor.menu;

import android.view.View;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.events.note.CopyEditTextShapeEvent;
import com.onyx.android.sdk.universal.editor.events.note.CreateEditTextShapeLinkEvent;
import com.onyx.android.sdk.universal.editor.events.note.CutEditTextShapeEvent;
import com.onyx.android.sdk.universal.editor.events.note.DeleteEditTextShapeEvent;
import com.onyx.android.sdk.universal.editor.events.note.PlaceEditTextShapesEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowSelectMoveLayerPopupEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.data.SelectionMenuType;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u001e\u0010\r\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0016R\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\t\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/menu/EditTextShapeSelectionHandler;", "Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;", "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;", "menu", "Landroid/view/View;", "itemView", "", "onMenuClick", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualPageBoxInfo", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "updateEditTextShapeSelection", "", "b", "Ljava/util/List;", "c", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;", "manager", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class EditTextShapeSelectionHandler extends BaseSelectionMenuHandler {

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public List<Shape> shapes;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public BoxInfo virtualPageBoxInfo;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SelectionMenuType.values().length];
            try {
                iArr[SelectionMenuType.CUT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SelectionMenuType.COPY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SelectionMenuType.TOPPING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[SelectionMenuType.BOTTOMING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[SelectionMenuType.DELETE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[SelectionMenuType.CREATE_LINK.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[SelectionMenuType.MOVE_TO_LAYER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditTextShapeSelectionHandler(@NotNull SelectionMenuHandlerManager manager) {
        super(manager);
        Intrinsics.checkNotNullParameter(manager, "manager");
        this.shapes = new ArrayList();
        this.virtualPageBoxInfo = new BoxInfo();
    }

    @Override // com.onyx.galaxy.note.editor.menu.BaseSelectionMenuHandler
    public void onMenuClick(@NotNull SelectionMenuType menu, @NotNull View itemView) {
        Object cutEditTextShapeEvent;
        Intrinsics.checkNotNullParameter(menu, "menu");
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        if (this.shapes.isEmpty()) {
            return;
        }
        int[] iArr = WhenMappings.$EnumSwitchMapping$0;
        switch (iArr[menu.ordinal()]) {
            case 1:
                cutEditTextShapeEvent = new CutEditTextShapeEvent(this.shapes);
                break;
            case 2:
                cutEditTextShapeEvent = new CopyEditTextShapeEvent(this.shapes);
                break;
            case 3:
                cutEditTextShapeEvent = new PlaceEditTextShapesEvent(this.shapes, true);
                break;
            case 4:
                cutEditTextShapeEvent = new PlaceEditTextShapesEvent(this.shapes, false);
                break;
            case 5:
                cutEditTextShapeEvent = new DeleteEditTextShapeEvent(this.shapes);
                break;
            case 6:
                cutEditTextShapeEvent = new CreateEditTextShapeLinkEvent(this.shapes);
                break;
            case 7:
                cutEditTextShapeEvent = new ShowSelectMoveLayerPopupEvent(this.shapes, itemView);
                break;
            default:
                cutEditTextShapeEvent = new Object();
                break;
        }
        EditorBundleKt.postEvent(getEditorBundle$note_overseasRelease(), cutEditTextShapeEvent);
        int i = iArr[menu.ordinal()];
        if (i == 1) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.cut_success_and_long_press_paste, false, 2, (Object) null);
        } else {
            if (i != 2) {
                return;
            }
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.copy_success_and_long_press_paste, false, 2, (Object) null);
        }
    }

    @Override // com.onyx.galaxy.note.editor.menu.BaseSelectionMenuHandler
    public void updateEditTextShapeSelection(@NotNull BoxInfo virtualPageBoxInfo, @NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        super.updateEditTextShapeSelection(virtualPageBoxInfo, shapes);
        this.shapes.clear();
        this.shapes.addAll(shapes);
        this.virtualPageBoxInfo = virtualPageBoxInfo;
    }
}
