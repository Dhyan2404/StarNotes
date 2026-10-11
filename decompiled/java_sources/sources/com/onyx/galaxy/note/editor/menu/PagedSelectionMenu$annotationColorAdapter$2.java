package com.onyx.galaxy.note.editor.menu;

import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m61528d2 = {"<anonymous>", "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class PagedSelectionMenu$annotationColorAdapter$2 extends Lambda implements Function0<ColorViewAdapter> {
    public static final PagedSelectionMenu$annotationColorAdapter$2 INSTANCE = new PagedSelectionMenu$annotationColorAdapter$2();

    public PagedSelectionMenu$annotationColorAdapter$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @NotNull
    public final ColorViewAdapter invoke() {
        ColorViewAdapter colorViewAdapter = new ColorViewAdapter();
        colorViewAdapter.updateContainerWidthDimension(C7384R.dimen.dp_28);
        colorViewAdapter.setDynamicPopupData(new ColorViewAdapter.DynamicPopupData(-ResManager.INSTANCE.getDimens(C7384R.dimen.dp_24), 0, 0, 0, 14, null));
        return colorViewAdapter;
    }
}
