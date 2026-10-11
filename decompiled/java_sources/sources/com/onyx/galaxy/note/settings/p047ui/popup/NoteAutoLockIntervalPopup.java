package com.onyx.galaxy.note.settings.p047ui.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.p039ui.BasePopWindow;
import com.onyx.android.sdk.p039ui.wheelview.NumericWheelAdapter;
import com.onyx.android.sdk.p039ui.wheelview.WheelView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.PopupNoteAutoLockIntervalBinding;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00040\u000f¢\u0006\u0004\b\u001d\u0010\u001eJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR \u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00040\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u000b8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0017\u0010\rR\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;", "Lcom/onyx/android/sdk/ui/BasePopWindow;", "Landroid/view/View;", "contentView", "", "setContentView", "e", "Landroid/content/Context;", C4921e.f26537n, "Landroid/content/Context;", "context", "", "l", "I", "selectIndex", "Lkotlin/Function1;", "m", "Lkotlin/jvm/functions/Function1;", "pickCallback", "Lcom/onyx/galaxy/note/databinding/PopupNoteAutoLockIntervalBinding;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/galaxy/note/databinding/PopupNoteAutoLockIntervalBinding;", "binding", C4921e.f26528e, "visibleItemCount", "Lcom/onyx/android/sdk/ui/wheelview/NumericWheelAdapter;", "p", "Lcom/onyx/android/sdk/ui/wheelview/NumericWheelAdapter;", "adapter", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;ILkotlin/jvm/functions/Function1;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class NoteAutoLockIntervalPopup extends BasePopWindow {

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: l, reason: from kotlin metadata */
    public final int selectIndex;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final Function1<Integer, Unit> pickCallback;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final PopupNoteAutoLockIntervalBinding binding;

    /* renamed from: o, reason: from kotlin metadata */
    public final int visibleItemCount;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final NumericWheelAdapter adapter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public NoteAutoLockIntervalPopup(@NotNull Context context, int i, @NotNull Function1<? super Integer, Unit> pickCallback) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pickCallback, "pickCallback");
        this.context = context;
        this.selectIndex = i;
        this.pickCallback = pickCallback;
        PopupNoteAutoLockIntervalBinding inflate = PopupNoteAutoLockIntervalBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        this.visibleItemCount = 5;
        this.adapter = new NumericWheelAdapter(0, 30);
        setContentView(inflate.getRoot());
        m51161e();
    }

    /* renamed from: e */
    public final void m51161e() {
        WheelView wheelView = this.binding.wvMinute;
        wheelView.setAlphaGradient(true);
        wheelView.setCyclic(false);
        wheelView.setLabel(ResManager.INSTANCE.getString(C10651R.string.counter_label_minute));
        wheelView.isCenterLabel(true);
        wheelView.setItemsVisibleCount(this.visibleItemCount);
        wheelView.setOnItemSelectedListener(new WheelView.OnItemSelectedListener() { // from class: com.onyx.galaxy.note.settings.ui.popup.NoteAutoLockIntervalPopup$initView$1$1
            @Override // com.onyx.android.sdk.ui.wheelview.WheelView.OnItemSelectedListener
            public void onItemSelected(int index) {
                Function1 function1;
                NumericWheelAdapter numericWheelAdapter;
                function1 = NoteAutoLockIntervalPopup.this.pickCallback;
                numericWheelAdapter = NoteAutoLockIntervalPopup.this.adapter;
                Object item = numericWheelAdapter.getItem(index);
                Intrinsics.checkNotNull(item, "null cannot be cast to non-null type kotlin.Int");
                function1.invoke((Integer) item);
            }
        });
        this.binding.wvMinute.setAdapter(this.adapter);
        this.binding.wvMinute.setCurrentItem(this.selectIndex);
    }

    @Override // android.widget.PopupWindow
    public void setContentView(@Nullable View contentView) {
        super.setContentView(contentView);
        setWidth(-2);
        setHeight(-2);
        setBackgroundDrawable(this.context.getResources().getDrawable(C10651R.drawable.popup_shadow_bg, null));
        setAnimationStyle(C10651R.style.popupWindowAnimation);
    }
}
