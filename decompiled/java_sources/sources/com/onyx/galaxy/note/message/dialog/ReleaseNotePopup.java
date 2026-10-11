package com.onyx.galaxy.note.message.dialog;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import androidx.viewpager2.widget.ViewPager2;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.data.message.model.NotificationModel;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.databinding.PopupReleaseNoteBinding;
import com.onyx.galaxy.note.message.data.MessageConst;
import com.onyx.galaxy.note.message.dialog.ReleaseNotePopup;
import com.onyx.galaxy.note.message.handler.NotificationDisplayHandler;
import com.onyx.galaxy.note.message.viewmodel.NotificationViewModel;
import com.onyx.galaxy.note.p048ui.view.NotificationRichTextView;
import com.onyx.galaxy.note.p048ui.view.PageIndicatorView;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002R\u0016\u0010\u000b\u001a\u00020\b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u000eR\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u000eR\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u000e¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;", "Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;", "", "initContentView", "", "t", "r", "p", "Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;", "s", "Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;", "binding", "", "", "Ljava/util/List;", "imageList", "u", MessageConst.KEY_TITLE_LIST, "v", MessageConst.KEY_CONTENT_LIST, "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/data/message/model/NotificationModel;", FunctionKey.NOTIFICATION, "Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;", "viewModel", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class ReleaseNotePopup extends NotificationBasePopup {

    /* renamed from: s, reason: from kotlin metadata */
    public PopupReleaseNoteBinding binding;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final List<String> imageList;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final List<String> titleList;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final List<String> contentList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReleaseNotePopup(@NotNull Context context, @NotNull NotificationModel notification, @NotNull NotificationViewModel viewModel) {
        super(context, notification, viewModel);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(notification, "notification");
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        this.imageList = new ArrayList();
        this.titleList = new ArrayList();
        this.contentList = new ArrayList();
        m50592r();
        m50591p();
    }

    /* renamed from: q */
    public static final void m50589q(ReleaseNotePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NotificationDisplayHandler notificationDisplayHandler = NotificationDisplayHandler.INSTANCE;
        notificationDisplayHandler.onPrimaryButtonClick(this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String());
        notificationDisplayHandler.navigateWithStrategy(this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton1().getNavType(), this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton1().getArgs());
        notificationDisplayHandler.closeWithStrategy(this$0, this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton1().getCloseStrategy());
    }

    /* renamed from: s */
    public static final void m50590s(ReleaseNotePopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int dimens = ResManager.INSTANCE.getDimens(C7384R.dimen.dp_16);
        PopupReleaseNoteBinding popupReleaseNoteBinding = this$0.binding;
        PopupReleaseNoteBinding popupReleaseNoteBinding2 = null;
        if (popupReleaseNoteBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupReleaseNoteBinding = null;
        }
        TintLinearLayout dialogRoot = popupReleaseNoteBinding.dialogRoot;
        Intrinsics.checkNotNullExpressionValue(dialogRoot, "dialogRoot");
        ViewKt.clipToRoundRect(dialogRoot, Integer.valueOf(dimens));
        PopupReleaseNoteBinding popupReleaseNoteBinding3 = this$0.binding;
        if (popupReleaseNoteBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            popupReleaseNoteBinding2 = popupReleaseNoteBinding3;
        }
        ViewKt.setViewVisibleOrInvisible(popupReleaseNoteBinding2.dialogRoot, true);
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void initContentView() {
        setFocusable(false);
        setOutsideTouchable(false);
        setWidth(-1);
        setHeight(-1);
        PopupReleaseNoteBinding inflate = PopupReleaseNoteBinding.inflate(LayoutInflater.from(getContext()));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        setBackgroundDrawable(new ColorDrawable(ResManager.INSTANCE.getColor(C7106R.color.black_percent_30)));
    }

    /* renamed from: p */
    public final void m50591p() {
        PopupReleaseNoteBinding popupReleaseNoteBinding = this.binding;
        if (popupReleaseNoteBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupReleaseNoteBinding = null;
        }
        TextView confirmButton = popupReleaseNoteBinding.confirmButton;
        Intrinsics.checkNotNullExpressionValue(confirmButton, "confirmButton");
        com.onyx.android.sdk.extension.ViewKt.click$default(confirmButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.sjl
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ReleaseNotePopup.m50589q(ReleaseNotePopup.this, view);
            }
        }, 1, null);
    }

    /* renamed from: r */
    public final void m50592r() {
        if (m50593t()) {
            PopupReleaseNoteBinding popupReleaseNoteBinding = this.binding;
            PopupReleaseNoteBinding popupReleaseNoteBinding2 = null;
            if (popupReleaseNoteBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                popupReleaseNoteBinding = null;
            }
            popupReleaseNoteBinding.confirmButton.setText(getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton1().getValue());
            PopupReleaseNoteBinding popupReleaseNoteBinding3 = this.binding;
            if (popupReleaseNoteBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                popupReleaseNoteBinding3 = null;
            }
            popupReleaseNoteBinding3.dialogRoot.post(new Runnable() { // from class: com.sunia.HTREnginev2.rjl
                @Override // java.lang.Runnable
                public final void run() {
                    ReleaseNotePopup.m50590s(ReleaseNotePopup.this);
                }
            });
            PopupReleaseNoteBinding popupReleaseNoteBinding4 = this.binding;
            if (popupReleaseNoteBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                popupReleaseNoteBinding4 = null;
            }
            ViewKt.setViewVisibleOrInvisible(popupReleaseNoteBinding4.carouselBinding.pageText, this.imageList.size() > 1);
            PopupReleaseNoteBinding popupReleaseNoteBinding5 = this.binding;
            if (popupReleaseNoteBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                popupReleaseNoteBinding5 = null;
            }
            ViewKt.setViewVisibleOrInvisible(popupReleaseNoteBinding5.carouselBinding.pageIndicator, this.imageList.size() > 1);
            PopupReleaseNoteBinding popupReleaseNoteBinding6 = this.binding;
            if (popupReleaseNoteBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                popupReleaseNoteBinding6 = null;
            }
            popupReleaseNoteBinding6.titleText.setText(this.titleList.get(0));
            PopupReleaseNoteBinding popupReleaseNoteBinding7 = this.binding;
            if (popupReleaseNoteBinding7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                popupReleaseNoteBinding7 = null;
            }
            popupReleaseNoteBinding7.contentText.fitContentHeight(false);
            PopupReleaseNoteBinding popupReleaseNoteBinding8 = this.binding;
            if (popupReleaseNoteBinding8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                popupReleaseNoteBinding8 = null;
            }
            popupReleaseNoteBinding8.contentText.setRichText(this.contentList.get(0));
            PopupReleaseNoteBinding popupReleaseNoteBinding9 = this.binding;
            if (popupReleaseNoteBinding9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                popupReleaseNoteBinding9 = null;
            }
            popupReleaseNoteBinding9.carouselBinding.imagePager.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.onyx.galaxy.note.message.dialog.ReleaseNotePopup$initView$2
                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public void onPageSelected(int position) {
                    PopupReleaseNoteBinding popupReleaseNoteBinding10;
                    List list;
                    PopupReleaseNoteBinding popupReleaseNoteBinding11;
                    List list2;
                    PopupReleaseNoteBinding popupReleaseNoteBinding12;
                    List list3;
                    PopupReleaseNoteBinding popupReleaseNoteBinding13;
                    List list4;
                    popupReleaseNoteBinding10 = ReleaseNotePopup.this.binding;
                    PopupReleaseNoteBinding popupReleaseNoteBinding14 = null;
                    if (popupReleaseNoteBinding10 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        popupReleaseNoteBinding10 = null;
                    }
                    TextView textView = popupReleaseNoteBinding10.carouselBinding.pageText;
                    StringBuilder sb = new StringBuilder();
                    sb.append(position + 1);
                    sb.append('/');
                    list = ReleaseNotePopup.this.imageList;
                    sb.append(list.size());
                    textView.setText(sb.toString());
                    popupReleaseNoteBinding11 = ReleaseNotePopup.this.binding;
                    if (popupReleaseNoteBinding11 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        popupReleaseNoteBinding11 = null;
                    }
                    PageIndicatorView pageIndicatorView = popupReleaseNoteBinding11.carouselBinding.pageIndicator;
                    list2 = ReleaseNotePopup.this.imageList;
                    pageIndicatorView.setIndicatorIndex(position, list2.size());
                    popupReleaseNoteBinding12 = ReleaseNotePopup.this.binding;
                    if (popupReleaseNoteBinding12 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        popupReleaseNoteBinding12 = null;
                    }
                    TintTextView tintTextView = popupReleaseNoteBinding12.titleText;
                    list3 = ReleaseNotePopup.this.titleList;
                    tintTextView.setText((CharSequence) list3.get(position));
                    popupReleaseNoteBinding13 = ReleaseNotePopup.this.binding;
                    if (popupReleaseNoteBinding13 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        popupReleaseNoteBinding14 = popupReleaseNoteBinding13;
                    }
                    NotificationRichTextView notificationRichTextView = popupReleaseNoteBinding14.contentText;
                    list4 = ReleaseNotePopup.this.contentList;
                    notificationRichTextView.setRichText((String) list4.get(position));
                }
            });
            PopupReleaseNoteBinding popupReleaseNoteBinding10 = this.binding;
            if (popupReleaseNoteBinding10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                popupReleaseNoteBinding10 = null;
            }
            popupReleaseNoteBinding10.carouselBinding.imagePager.setOffscreenPageLimit(Math.max(1, this.imageList.size() / 2));
            ReleaseNoteAdapter releaseNoteAdapter = new ReleaseNoteAdapter();
            PopupReleaseNoteBinding popupReleaseNoteBinding11 = this.binding;
            if (popupReleaseNoteBinding11 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                popupReleaseNoteBinding2 = popupReleaseNoteBinding11;
            }
            popupReleaseNoteBinding2.carouselBinding.imagePager.setAdapter(releaseNoteAdapter);
            releaseNoteAdapter.submitList(this.imageList);
        }
    }

    /* renamed from: t */
    public final boolean m50593t() {
        List<String> imageList = getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getSwiper().getImageList();
        List<String> titleList = getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getSwiper().getTitleList();
        List<String> contentList = getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getSwiper().getContentList();
        List<String> list = imageList;
        this.imageList.addAll(list);
        this.titleList.addAll(titleList);
        this.contentList.addAll(contentList);
        return (list.isEmpty() ^ true) && imageList.size() == titleList.size() && imageList.size() == contentList.size();
    }
}
