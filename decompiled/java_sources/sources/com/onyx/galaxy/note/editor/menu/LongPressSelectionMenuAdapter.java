package com.onyx.galaxy.note.editor.menu;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.data.SelectionMenuType;
import com.onyx.galaxy.note.editor.menu.LongPressSelectionMenuAdapter;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0010¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0004H\u0002J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\u0012\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0013R\u0014\u0010\u0016\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0013¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;", "Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;", "", FirebaseAnalytics.Param.INDEX, "Landroid/view/View;", "createDividerView", "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;", "menu", "createMenuView", "view", "", C4921e.f26528e, "Landroid/widget/ImageView;", "l", "Landroid/widget/TextView;", "m", "Landroid/content/Context;", "Landroid/content/Context;", "context", "I", "height", GoogleApiAvailabilityLight.f29016b, Constant.PADDING_TAG, "textSize", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LongPressSelectionMenuAdapter extends BasePagedMenuAdapter {

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: m, reason: from kotlin metadata */
    public final int height;

    /* renamed from: n, reason: from kotlin metadata */
    public final int padding;

    /* renamed from: o, reason: from kotlin metadata */
    public final int textSize;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LongPressSelectionMenuAdapter(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        ResManager resManager = ResManager.INSTANCE;
        this.height = resManager.getDimens(C7384R.dimen.dp_40);
        this.padding = resManager.getDimens(C7384R.dimen.dp_16);
        this.textSize = resManager.getDimens(C7384R.dimen.dp_16);
    }

    /* renamed from: n */
    public static final void m46374n(LongPressSelectionMenuAdapter this$0, SelectionMenuType menu, View view, View view2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(menu, "$menu");
        Intrinsics.checkNotNullParameter(view, "$view");
        SelectionMenuCallback callback = this$0.getCallback();
        if (callback != null) {
            callback.onMenuClick(menu, view);
        }
    }

    @Override // com.onyx.galaxy.note.editor.menu.BasePagedMenuAdapter
    @NotNull
    public View createDividerView(int index) {
        TintView tintView = new TintView(this.context);
        ViewKt.setLayoutParams(tintView, ResManager.INSTANCE.getDimens(C7384R.dimen.dp_0_5), this.height);
        tintView.setBackgroundResource(C7996R.color.theme_divider_color_01);
        return tintView;
    }

    @Override // com.onyx.galaxy.note.editor.menu.BasePagedMenuAdapter
    @NotNull
    public View createMenuView(int index, @NotNull final SelectionMenuType menu) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        final View m46375l = SelectionMenuType.INSTANCE.isValidImageResId(menu) ? m46375l(menu) : m46376m(menu);
        m46377o(m46375l);
        m46375l.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.l5j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LongPressSelectionMenuAdapter.m46374n(LongPressSelectionMenuAdapter.this, menu, m46375l, view);
            }
        });
        return m46375l;
    }

    /* renamed from: l */
    public final ImageView m46375l(SelectionMenuType menu) {
        TintImageView tintImageView = new TintImageView(this.context);
        tintImageView.setScaleType(ImageView.ScaleType.CENTER);
        tintImageView.setImageResource(menu.getImageResId());
        tintImageView.measure(View.MeasureSpec.makeMeasureSpec(this.height, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(this.height, 1073741824));
        ViewKt.setLayoutParams(tintImageView, tintImageView.getMeasuredWidth() + (this.padding * 2), this.height);
        return tintImageView;
    }

    /* renamed from: m */
    public final TextView m46376m(SelectionMenuType menu) {
        TintTextView tintTextView = new TintTextView(this.context);
        ResManager resManager = ResManager.INSTANCE;
        String stringSafely = resManager.getStringSafely(menu.getTextResId());
        tintTextView.setGravity(17);
        tintTextView.setText(stringSafely);
        tintTextView.setTextSize(resManager.getDimension(C7384R.dimen.sp_14));
        tintTextView.setSingleLine();
        tintTextView.setTextColorById(menu.getTextColor());
        tintTextView.setTextSize(0, this.textSize);
        ViewKt.setLayoutParams(tintTextView, (int) (tintTextView.getPaint().measureText(stringSafely) + (this.padding * 2)), this.height);
        return tintTextView;
    }

    /* renamed from: o */
    public final void m46377o(View view) {
        view.setClickable(true);
        view.setBackgroundResource(C10651R.drawable.ripple_white);
        int i = this.padding;
        view.setPadding(i, 0, i, 0);
    }
}
