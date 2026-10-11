package com.onyx.galaxy.note.category.viewmodel;

import android.content.Context;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.MutableLiveData;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.PopupExtKt;
import com.onyx.android.sdk.base.extension.StringMap;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.utils.QuotaManager;
import com.onyx.android.sdk.data.common.data.MessageTemplate;
import com.onyx.android.sdk.data.common.data.MessageTemplateKt;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.sync.bean.NoteUsageInfo;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.note.CheckInAction;
import com.onyx.galaxy.note.category.view.dialog.DialogNoteCountRegisterGuide;
import com.onyx.galaxy.note.category.viewmodel.NoteQuotaViewModel;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.common.constant.GuideInfoConst;
import com.onyx.galaxy.note.common.data.NavigationType;
import com.onyx.galaxy.note.databinding.LayoutNoteQuotaWarningBinding;
import com.onyx.galaxy.note.p048ui.dialog.QuotaNotEnoughPopup;
import com.onyx.galaxy.note.utils.Navigator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u0000 32\u00020\u0001:\u00013B\u0007¢\u0006\u0004\b1\u00102J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\u000e\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fJ\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bJ\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0014\u001a\u00020\u0013J\u0006\u0010\u0015\u001a\u00020\u0011J\u0006\u0010\u0016\u001a\u00020\u0011J\u0006\u0010\u0017\u001a\u00020\u0004J\u0018\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0018H\u0002R\u001d\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00180\u001c8\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\"\u0010)\u001a\u00020\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\"\u00100\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/¨\u00064"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;", "binding", "", "checkLeftNoteQuota", "showLeftQuotaDialog", "updateLeftQuotaDialog", "Landroid/view/View;", "parentView", "", "checkNoteQuotaUsedOut", "Landroid/content/Context;", "context", "checkGuideRegister", "showNoteQuotaNotEnoughDialog", "showJoinVipDialog", "", "getConsumedNoteQuota", "", "getLeftNoteQuota", "getQuotaLockVisibility", "getSettingsButtonVisibility", "checkIn", "", "templateName", MessageTemplateKt.KEY_STATISTIC_TYPE, C6997f.f39671c, "Landroidx/lifecycle/MutableLiveData;", "i", "Landroidx/lifecycle/MutableLiveData;", "getEvent", "()Landroidx/lifecycle/MutableLiveData;", NotificationCompat.CATEGORY_EVENT, "Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;", "j", "Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;", "getNoteUsageInfo", "()Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;", "setNoteUsageInfo", "(Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;)V", "noteUsageInfo", C4921e.f26537n, Constants.HASIDCALL_INDEX_SIG, "getHasLeftQuotaTipped", Constants.BOOLEAN_VALUE_SIG, "setHasLeftQuotaTipped", "(Z)V", "hasLeftQuotaTipped", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class NoteQuotaViewModel extends BaseViewModel {

    @NotNull
    public static final String EVENT_QUOTA_CHANGED = "QuotaChanged";

    @NotNull
    public static final String EVENT_SHOW_LEFT_QUOTA = "ShowLeftQuota";

    @NotNull
    public static final String EVENT_SHOW_QUOTA_USED_OUT = "ShowQuotaUsedOut";

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<String> event = new MutableLiveData<>(null);

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public NoteUsageInfo noteUsageInfo = new NoteUsageInfo();

    /* renamed from: k, reason: from kotlin metadata */
    public boolean hasLeftQuotaTipped;

    /* renamed from: g */
    public static final void m44808g(NoteQuotaViewModel this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44810f(MessageTemplateKt.KEY_FUNC_NOTE_QUOTA_RED_LINE, OnyxStatisticConstant.TRIGGER_HOMEPAGE_NOTELIMIT_OVERLAY);
    }

    /* renamed from: h */
    public static final void m44809h(LayoutNoteQuotaWarningBinding binding, NoteQuotaViewModel this$0, View view) {
        Intrinsics.checkNotNullParameter(binding, "$binding");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ViewKt.setViewVisibleOrInvisible(binding.getRoot(), false);
        this$0.hasLeftQuotaTipped = true;
    }

    public final boolean checkGuideRegister(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        boolean z = false;
        if (AccountDataBundle.INSTANCE.isAlreadyLogin()) {
            return false;
        }
        BooleanOption booleanOption = new BooleanOption(MMKVUtils.INSTANCE.get(), GuideInfoConst.KEY_HAS_SHOW_REGISTER_GUIDE, false, 4, null);
        if (booleanOption.get()) {
            return false;
        }
        QuotaManager quotaManager = QuotaManager.INSTANCE;
        long registerGuideQuota = quotaManager.getRegisterGuideQuota();
        if (registerGuideQuota <= 0) {
            return false;
        }
        int consumedNoteQuota = getConsumedNoteQuota();
        long noteCreateQuota$default = QuotaManager.getNoteCreateQuota$default(quotaManager, false, 1, null);
        long j = consumedNoteQuota;
        if (registerGuideQuota <= j && j < noteCreateQuota$default) {
            z = true;
        }
        if (z) {
            booleanOption.put(true);
            new DialogNoteCountRegisterGuide(context).show();
        }
        return z;
    }

    public final void checkIn() {
        OnyxErrorHandler.executeWithErrorHandler$default(OnyxErrorHandler.INSTANCE, new CheckInAction(), null, null, 3, null);
    }

    public final void checkLeftNoteQuota(@NotNull LayoutNoteQuotaWarningBinding binding) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.event.setValue(EVENT_QUOTA_CHANGED);
        if (AccountDataBundle.INSTANCE.isVipRole()) {
            ViewKt.setViewVisibleOrInvisible(binding.getRoot(), false);
        } else if (!this.hasLeftQuotaTipped && QuotaManager.INSTANCE.getNoteCreateQuota(false) >= 0) {
            this.event.setValue(EVENT_SHOW_LEFT_QUOTA);
        }
    }

    public final boolean checkNoteQuotaUsedOut(@NotNull View parentView) {
        Intrinsics.checkNotNullParameter(parentView, "parentView");
        if (getLeftNoteQuota() > 0) {
            return true;
        }
        showNoteQuotaNotEnoughDialog(parentView);
        return false;
    }

    /* renamed from: f */
    public final void m44810f(String templateName, String statisticType) {
        MessageTemplate parentTemplate = MessageTemplateKt.getParentTemplate(templateName);
        String str = (String) parentTemplate.get((Object) MessageTemplateKt.KEY_NAVIGATE_TYPE);
        if (str == null) {
            str = "";
        }
        StringMap stringMap = new StringMap();
        stringMap.putAll(parentTemplate);
        stringMap.put(MessageTemplateKt.KEY_STATISTIC_TYPE, statisticType);
        Navigator.INSTANCE.navigate(str, stringMap, NavigationType.MEMBER_CENTER);
    }

    public final int getConsumedNoteQuota() {
        return this.noteUsageInfo.getDocCountIncludeDustbin();
    }

    @NotNull
    public final MutableLiveData<String> getEvent() {
        return this.event;
    }

    public final boolean getHasLeftQuotaTipped() {
        return this.hasLeftQuotaTipped;
    }

    public final long getLeftNoteQuota() {
        return QuotaManager.getNoteCreateQuota$default(QuotaManager.INSTANCE, false, 1, null) - getConsumedNoteQuota();
    }

    @NotNull
    public final NoteUsageInfo getNoteUsageInfo() {
        return this.noteUsageInfo;
    }

    public final int getQuotaLockVisibility() {
        return getLeftNoteQuota() <= 0 ? 0 : 8;
    }

    public final int getSettingsButtonVisibility() {
        return getLeftNoteQuota() <= 0 ? 8 : 0;
    }

    public final void setHasLeftQuotaTipped(boolean z) {
        this.hasLeftQuotaTipped = z;
    }

    public final void setNoteUsageInfo(@NotNull NoteUsageInfo noteUsageInfo) {
        Intrinsics.checkNotNullParameter(noteUsageInfo, "<set-?>");
        this.noteUsageInfo = noteUsageInfo;
    }

    public final void showJoinVipDialog(@NotNull View parentView) {
        String replace$default;
        Intrinsics.checkNotNullParameter(parentView, "parentView");
        if (MessageTemplateKt.isMessageExpired(MessageTemplateKt.KEY_FUNC_NOTE_QUOTA_USED_OUT)) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.quota_note_used_out, false, 2, (Object) null);
            return;
        }
        int consumedNoteQuota = getConsumedNoteQuota();
        String messageTemplate = MessageTemplateKt.getMessageTemplate(MessageTemplateKt.KEY_FUNC_NOTE_QUOTA_USED_OUT, "title");
        replace$default = StringsKt__StringsJVMKt.replace$default(MessageTemplateKt.getMessageTemplate(MessageTemplateKt.KEY_FUNC_NOTE_QUOTA_USED_OUT, MessageTemplateKt.KEY_CONTENT1), MessageTemplateKt.PLACEHOLDER_CONSUMED_QUOTA, String.valueOf(consumedNoteQuota), false, 4, (Object) null);
        String messageTemplate2 = MessageTemplateKt.getMessageTemplate(MessageTemplateKt.KEY_FUNC_NOTE_QUOTA_USED_OUT, "button1");
        String messageTemplate3 = MessageTemplateKt.getMessageTemplate(MessageTemplateKt.KEY_FUNC_NOTE_QUOTA_USED_OUT, "button2");
        Context context = parentView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        PopupExtKt.showFullScreen(new QuotaNotEnoughPopup(context, messageTemplate, replace$default, messageTemplate2, messageTemplate3).onPositive(new Function1<QuotaNotEnoughPopup, Unit>() { // from class: com.onyx.galaxy.note.category.viewmodel.NoteQuotaViewModel$showJoinVipDialog$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(QuotaNotEnoughPopup quotaNotEnoughPopup) {
                invoke2(quotaNotEnoughPopup);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull QuotaNotEnoughPopup it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                it2.dismiss();
                NoteQuotaViewModel.this.m44810f(MessageTemplateKt.KEY_FUNC_NOTE_QUOTA_USED_OUT, OnyxStatisticConstant.TRIGGER_HOMEPAGE_ADD_NOTE_POPUPS);
            }
        }), parentView);
    }

    public final void showLeftQuotaDialog(@NotNull final LayoutNoteQuotaWarningBinding binding) {
        long coerceAtLeast;
        String replace$default;
        String replace$default2;
        Intrinsics.checkNotNullParameter(binding, "binding");
        if (this.hasLeftQuotaTipped || MessageTemplateKt.isMessageExpired(MessageTemplateKt.KEY_FUNC_NOTE_QUOTA_RED_LINE)) {
            return;
        }
        int consumedNoteQuota = getConsumedNoteQuota();
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(getLeftNoteQuota(), 0L);
        replace$default = StringsKt__StringsJVMKt.replace$default(MessageTemplateKt.getMessageTemplate(MessageTemplateKt.KEY_FUNC_NOTE_QUOTA_RED_LINE, MessageTemplateKt.KEY_CONTENT1), MessageTemplateKt.PLACEHOLDER_CONSUMED_QUOTA, String.valueOf(consumedNoteQuota), false, 4, (Object) null);
        replace$default2 = StringsKt__StringsJVMKt.replace$default(replace$default, "${quota}", String.valueOf(coerceAtLeast), false, 4, (Object) null);
        String messageTemplate = MessageTemplateKt.getMessageTemplate(MessageTemplateKt.KEY_FUNC_NOTE_QUOTA_RED_LINE, MessageTemplateKt.KEY_CONTENT2);
        String messageTemplate2 = MessageTemplateKt.getMessageTemplate(MessageTemplateKt.KEY_FUNC_NOTE_QUOTA_RED_LINE, "button1");
        binding.contentText1.setText(replace$default2);
        binding.contentText2.setText(messageTemplate);
        binding.confirmButton.setText(messageTemplate2);
        TintTextView confirmButton = binding.confirmButton;
        Intrinsics.checkNotNullExpressionValue(confirmButton, "confirmButton");
        com.onyx.android.sdk.extension.ViewKt.click$default(confirmButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.w0k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteQuotaViewModel.m44808g(NoteQuotaViewModel.this, view);
            }
        }, 1, null);
        TintImageView closeButton = binding.closeButton;
        Intrinsics.checkNotNullExpressionValue(closeButton, "closeButton");
        com.onyx.android.sdk.extension.ViewKt.click$default(closeButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.x0k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteQuotaViewModel.m44809h(LayoutNoteQuotaWarningBinding.this, this, view);
            }
        }, 1, null);
        ViewKt.setViewVisibleOrInvisible(binding.getRoot(), true);
    }

    public final void showNoteQuotaNotEnoughDialog(@NotNull View parentView) {
        Intrinsics.checkNotNullParameter(parentView, "parentView");
        if (QuotaManager.INSTANCE.getNoteCreateQuota(false) < 0) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.quota_no_note_quota_info, false, 2, (Object) null);
        } else {
            m44810f(MessageTemplateKt.KEY_FUNC_NOTE_CREATE_JOIN_VIP, OnyxStatisticConstant.TRIGGER_HOMEPAGE_ADD_NOTE_POPUPS);
        }
    }

    public final void updateLeftQuotaDialog(@NotNull LayoutNoteQuotaWarningBinding binding) {
        long coerceAtLeast;
        String replace$default;
        String replace$default2;
        Intrinsics.checkNotNullParameter(binding, "binding");
        int consumedNoteQuota = getConsumedNoteQuota();
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(getLeftNoteQuota(), 0L);
        replace$default = StringsKt__StringsJVMKt.replace$default(MessageTemplateKt.getMessageTemplate(MessageTemplateKt.KEY_FUNC_NOTE_QUOTA_RED_LINE, MessageTemplateKt.KEY_CONTENT1), MessageTemplateKt.PLACEHOLDER_CONSUMED_QUOTA, String.valueOf(consumedNoteQuota), false, 4, (Object) null);
        replace$default2 = StringsKt__StringsJVMKt.replace$default(replace$default, "${quota}", String.valueOf(coerceAtLeast), false, 4, (Object) null);
        binding.contentText1.setText(replace$default2);
    }
}
