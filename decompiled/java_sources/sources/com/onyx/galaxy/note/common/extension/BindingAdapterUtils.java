package com.onyx.galaxy.note.common.extension;

import android.view.View;
import androidx.databinding.BindingAdapter;
import androidx.databinding.ObservableInt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.bean.LoginType;
import com.onyx.android.sdk.replicator.note.data.audio.AudioDataSet;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.view.custom.TickSeekBar;
import com.onyx.galaxy.note.editor.view.toolbar.PhysicalShapeIconView;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeIconView;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0007J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\t2\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0007J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\u001a\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007J \u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0007¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/extension/BindingAdapterUtils;", "", "()V", "setShapeTool", "", "view", "Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;", "penArgs", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;", "setTSBMax", "tsb", "Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar;", "filedInt", "Landroidx/databinding/ObservableInt;", "setTSBTicks", "audioDataSet", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;", "setVisibility", "Landroid/view/View;", "compareLoginType", "", "currentLoginType", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nBindingAdapterUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BindingAdapterUtils.kt\ncom/onyx/galaxy/note/common/extension/BindingAdapterUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,95:1\n1855#2,2:96\n256#3,2:98\n*S KotlinDebug\n*F\n+ 1 BindingAdapterUtils.kt\ncom/onyx/galaxy/note/common/extension/BindingAdapterUtils\n*L\n68#1:96,2\n93#1:98,2\n*E\n"})
/* loaded from: classes9.dex */
public final class BindingAdapterUtils {

    @NotNull
    public static final BindingAdapterUtils INSTANCE = new BindingAdapterUtils();

    @BindingAdapter({"setShapeTool"})
    @JvmStatic
    public static final void setShapeTool(@NotNull ShapeIconView view, @Nullable PenArgs penArgs) {
        ShapeToolType shapeToolType$default;
        Intrinsics.checkNotNullParameter(view, "view");
        if (penArgs == null || (shapeToolType$default = ShapeToolType.Companion.getShapeToolType$default(ShapeToolType.INSTANCE, penArgs.getType(), null, 2, null)) == null) {
            return;
        }
        view.setShapeTool(shapeToolType$default);
        view.setHintColor(penArgs.getColor());
    }

    @BindingAdapter({"setTSBMax"})
    @JvmStatic
    public static final void setTSBMax(@NotNull TickSeekBar tsb, @Nullable ObservableInt filedInt) {
        int i;
        Intrinsics.checkNotNullParameter(tsb, "tsb");
        if (filedInt == null || (i = filedInt.get()) <= 0 || i == tsb.getMax()) {
            return;
        }
        tsb.setMax(i);
        tsb.initSeekBarInfo();
    }

    @BindingAdapter({"setTSBTicks"})
    @JvmStatic
    public static final void setTSBTicks(@NotNull TickSeekBar tsb, @Nullable AudioDataSet audioDataSet) {
        Intrinsics.checkNotNullParameter(tsb, "tsb");
        if (audioDataSet != null) {
            ArrayList arrayList = new ArrayList();
            int duration = (int) audioDataSet.getDuration();
            Iterator<T> it2 = audioDataSet.getAudioInfoList().iterator();
            long j = 0;
            while (it2.hasNext()) {
                j += ((AudioInfoBean) it2.next()).getDuration();
                if (j < duration) {
                    arrayList.add(new TickSeekBar.TickData((float) j, ResManager.INSTANCE.getColor(C10651R.color.overlay_07)));
                }
            }
            tsb.setTicks(arrayList);
        }
    }

    @BindingAdapter({"compareLoginType", "currentLoginType"})
    @JvmStatic
    public static final void setVisibility(@NotNull View view, int compareLoginType, int currentLoginType) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (LoginType.INSTANCE.isLoginByThirdParty(currentLoginType)) {
            return;
        }
        view.setVisibility(compareLoginType != currentLoginType ? 0 : 8);
    }

    @BindingAdapter({"setPhyShapeTool"})
    @JvmStatic
    public static final void setShapeTool(@NotNull PhysicalShapeIconView view, @Nullable PenArgs penArgs) {
        ShapeToolType shapeToolType$default;
        Intrinsics.checkNotNullParameter(view, "view");
        if (penArgs == null || (shapeToolType$default = ShapeToolType.Companion.getShapeToolType$default(ShapeToolType.INSTANCE, penArgs.getType(), null, 2, null)) == null) {
            return;
        }
        view.setShapeTool(shapeToolType$default);
        view.onPenArgsChanged(penArgs);
        view.setHintColor(penArgs.getColor());
    }
}
