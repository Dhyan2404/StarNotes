package com.onyx.android.sdk.p039ui;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.annotation.ColorRes;
import androidx.annotation.StringRes;
import androidx.fragment.app.C1126e;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.p039ui.NameEditDialog;
import com.onyx.android.sdk.p039ui.databinding.DialogNameEditBinding;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Arrays;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000;\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0001\u0014\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001d\u001cB\u000f\u0012\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0010\u0010\b\u001a\u00020\u00042\b\b\u0001\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\u000b\u001a\u00020\nJ\b\u0010\f\u001a\u00020\u0004H\u0016J\b\u0010\r\u001a\u00020\u0004H\u0016R\u001b\u0010\u0013\u001a\u00020\u000e8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/NameEditDialog;", "Lcom/onyx/android/sdk/ui/AutoSizeDialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "", "errorTip", "showErrorTip", "releaseTimer", "", "getEditTextContent", "onAttachedToWindow", "dismiss", "Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;", C6999h.f39688c, "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;", "binding", "com/onyx/android/sdk/ui/NameEditDialog$timerObserver$1", "i", "Lcom/onyx/android/sdk/ui/NameEditDialog$timerObserver$1;", "timerObserver", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Companion", "Builder", "sdk-ui_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNameEditDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NameEditDialog.kt\ncom/onyx/android/sdk/ui/NameEditDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,205:1\n262#2,2:206\n*S KotlinDebug\n*F\n+ 1 NameEditDialog.kt\ncom/onyx/android/sdk/ui/NameEditDialog\n*L\n37#1:206,2\n*E\n"})
/* loaded from: classes17.dex */
public final class NameEditDialog extends AutoSizeDialog {
    public static final long ERROR_TIP_HIDE_TIME = 2000;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final NameEditDialog$timerObserver$1 timerObserver;

    @Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u001e\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010+\u001a\u00020&¢\u0006\u0004\bB\u0010CJ\u0010\u0010\u0004\u001a\u00020\u00002\b\b\u0001\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00002\b\b\u0001\u0010\u0005\u001a\u00020\u0002J\u0010\u0010\b\u001a\u00020\u00002\b\b\u0001\u0010\u0007\u001a\u00020\u0002J \u0010\u000e\u001a\u00020\u00002\u0018\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\tJ\u001a\u0010\u0010\u001a\u00020\u00002\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\f0\u000fJ\u001a\u0010\u0011\u001a\u00020\u00002\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\f0\u000fJ\u0010\u0010\u0013\u001a\u00020\u00002\b\b\u0001\u0010\u0012\u001a\u00020\u0002J\u0010\u0010\u0015\u001a\u00020\u00002\b\b\u0001\u0010\u0014\u001a\u00020\u0002J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u000bJ\u0018\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00022\b\b\u0002\u0010\u001a\u001a\u00020\u0019J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0019J\u0010\u0010\u001f\u001a\u00020\u00002\b\b\u0001\u0010\u001e\u001a\u00020\u0002J\u0006\u0010 \u001a\u00020\nJ\u0010\u0010\"\u001a\u00020\f2\u0006\u0010!\u001a\u00020\nH\u0002J\u0010\u0010#\u001a\u00020\f2\u0006\u0010!\u001a\u00020\nH\u0002J\u0010\u0010$\u001a\u00020\f2\u0006\u0010!\u001a\u00020\nH\u0002J\u0010\u0010%\u001a\u00020\f2\u0006\u0010!\u001a\u00020\nH\u0002R\u0017\u0010+\u001a\u00020&8\u0006¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u0018\u0010.\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0018\u00100\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010-R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u0010-R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010-R\u0018\u00103\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u00102R\u0018\u00105\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u0010-R\u0016\u0010\u001a\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u0010\u0018\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u00107R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010-R*\u0010<\u001a\u0016\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010;R$\u0010?\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R$\u0010A\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010>¨\u0006D"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;", "", "", "title", "setTitle", "cancelStr", "setCancelText", "confirmRes", "setConfirmText", "Lkotlin/Function2;", "Lcom/onyx/android/sdk/ui/NameEditDialog;", "", "", "callback", "setConfirmCallback", "Lkotlin/Function1;", "setCancelCallback", "setDismissCallback", "editTitleRes", "setEditTitle", "editHint", "setEditHint", "content", "setEditTextContent", "maxLength", "", "isCustomLengthRule", "setMaxLength", "hideCounter", "setHideCounterDisplay", "errorTipColorRes", "setErrorTipColor", BaiduYunConstant.CREATE, "dialog", "e", "l", C4921e.f26537n, C6997f.f39671c, "Landroid/content/Context;", "a", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.INTEGER_SIG, "titleRes", "c", "cancelRes", "d", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "editTextContent", C6998g.f39679a, "hintRes", C6999h.f39688c, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "i", "I", "j", "Lkotlin/jvm/functions/Function2;", "confirmCallback", "m", "Lkotlin/jvm/functions/Function1;", "cancelCallback", GoogleApiAvailabilityLight.f29016b, "dismissCallback", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "sdk-ui_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    @SourceDebugExtension({"SMAP\nNameEditDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NameEditDialog.kt\ncom/onyx/android/sdk/ui/NameEditDialog$Builder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,205:1\n283#2,2:206\n1#3:208\n*S KotlinDebug\n*F\n+ 1 NameEditDialog.kt\ncom/onyx/android/sdk/ui/NameEditDialog$Builder\n*L\n138#1:206,2\n*E\n"})
    /* loaded from: classes8.dex */
    public static class Builder {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final Context context;

        /* renamed from: b, reason: from kotlin metadata */
        @Nullable
        public Integer titleRes;

        /* renamed from: c, reason: from kotlin metadata */
        @Nullable
        public Integer cancelRes;

        /* renamed from: d, reason: from kotlin metadata */
        @Nullable
        public Integer confirmRes;

        /* renamed from: e, reason: from kotlin metadata */
        @Nullable
        public Integer editTitleRes;

        /* renamed from: f, reason: from kotlin metadata */
        @Nullable
        public String editTextContent;

        /* renamed from: g, reason: from kotlin metadata */
        @Nullable
        public Integer hintRes;

        /* renamed from: h, reason: from kotlin metadata */
        public boolean isCustomLengthRule;

        /* renamed from: i, reason: from kotlin metadata */
        public int maxLength;

        /* renamed from: j, reason: from kotlin metadata */
        public boolean hideCounter;

        /* renamed from: k, reason: from kotlin metadata */
        @Nullable
        public Integer errorTipColorRes;

        /* renamed from: l, reason: from kotlin metadata */
        @Nullable
        public Function2<? super NameEditDialog, ? super String, Unit> confirmCallback;

        /* renamed from: m, reason: from kotlin metadata */
        @Nullable
        public Function1<? super NameEditDialog, Unit> cancelCallback;

        /* renamed from: n, reason: from kotlin metadata */
        @Nullable
        public Function1<? super NameEditDialog, Unit> dismissCallback;

        public Builder(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            this.context = context;
            this.isCustomLengthRule = true;
        }

        /* renamed from: g */
        public static final void m36409g(NameEditDialog dialog, Builder this$0, DialogInterface dialogInterface) {
            Intrinsics.checkNotNullParameter(dialog, "$dialog");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            dialog.releaseTimer();
            Function1<? super NameEditDialog, Unit> function1 = this$0.dismissCallback;
            if (function1 != null) {
                function1.invoke(dialog);
            }
        }

        /* renamed from: h */
        public static final void m36410h(Builder this$0, NameEditDialog dialog, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(dialog, "$dialog");
            Function1<? super NameEditDialog, Unit> function1 = this$0.cancelCallback;
            if (function1 != null) {
                function1.invoke(dialog);
            }
            dialog.dismiss();
        }

        /* renamed from: i */
        public static final void m36411i(Builder this$0, NameEditDialog dialog, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(dialog, "$dialog");
            Function2<? super NameEditDialog, ? super String, Unit> function2 = this$0.confirmCallback;
            if (function2 != null) {
                function2.invoke(dialog, dialog.getEditTextContent());
            }
        }

        /* renamed from: j */
        public static final void m36412j(NameEditDialog dialog, Builder this$0, DialogInterface dialogInterface) {
            Intrinsics.checkNotNullParameter(dialog, "$dialog");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            dialog.releaseTimer();
            Function1<? super NameEditDialog, Unit> function1 = this$0.dismissCallback;
            if (function1 != null) {
                function1.invoke(dialog);
            }
        }

        public static /* synthetic */ Builder setMaxLength$default(Builder builder, int i, boolean z, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setMaxLength");
            }
            if ((i2 & 2) != 0) {
                z = true;
            }
            return builder.setMaxLength(i, z);
        }

        @NotNull
        public final NameEditDialog create() {
            NameEditDialog nameEditDialog = new NameEditDialog(this.context);
            m36413e(nameEditDialog);
            m36415k(nameEditDialog);
            m36414f(nameEditDialog);
            return nameEditDialog;
        }

        /* renamed from: e */
        public final void m36413e(final NameEditDialog dialog) {
            if (this.maxLength > 0) {
                dialog.getBinding().tieName.setMaxLength(Integer.valueOf(this.maxLength), this.isCustomLengthRule);
            }
            TintTextView tvCounter = dialog.getBinding().tvCounter;
            Intrinsics.checkNotNullExpressionValue(tvCounter, "tvCounter");
            tvCounter.setVisibility(this.hideCounter ? 4 : 0);
            if (this.hideCounter) {
                return;
            }
            m36416l(dialog);
            dialog.getBinding().tieName.setTextChangeCallback(new Function2<Integer, Integer, Unit>() { // from class: com.onyx.android.sdk.ui.NameEditDialog$Builder$setEditTextParams$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Integer num, Integer num2) {
                    invoke(num.intValue(), num2.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(int i, int i2) {
                    NameEditDialog.Builder.this.m36416l(dialog);
                }
            });
        }

        /* renamed from: f */
        public final void m36414f(final NameEditDialog dialog) {
            dialog.getBinding().tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.grj
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    NameEditDialog.Builder.m36410h(NameEditDialog.Builder.this, dialog, view);
                }
            });
            dialog.getBinding().tvConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.hrj
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    NameEditDialog.Builder.m36411i(NameEditDialog.Builder.this, dialog, view);
                }
            });
            dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.sunia.HTREnginev2.irj
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    NameEditDialog.Builder.m36412j(NameEditDialog.this, this, dialogInterface);
                }
            });
            dialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.sunia.HTREnginev2.jrj
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    NameEditDialog.Builder.m36409g(NameEditDialog.this, this, dialogInterface);
                }
            });
        }

        @NotNull
        public final Context getContext() {
            return this.context;
        }

        /* renamed from: k */
        public final void m36415k(NameEditDialog dialog) {
            Integer num = this.titleRes;
            if (num != null) {
                dialog.getBinding().tvTitle.setText(num.intValue());
            }
            Integer num2 = this.editTitleRes;
            if (num2 != null) {
                dialog.getBinding().tvEditTitle.setText(num2.intValue());
            }
            String str = this.editTextContent;
            if (str != null) {
                dialog.getBinding().tieName.setText(str);
                dialog.getBinding().tieName.setSelection(str.length());
            }
            if (this.editTitleRes == null) {
                dialog.getBinding().tvEditTitle.setVisibility(4);
            } else {
                dialog.getBinding().tvEditTitle.setVisibility(0);
            }
            Integer num3 = this.cancelRes;
            if (num3 != null) {
                dialog.getBinding().tvCancel.setText(num3.intValue());
            }
            Integer num4 = this.confirmRes;
            if (num4 != null) {
                dialog.getBinding().tvConfirm.setText(num4.intValue());
            }
            Integer num5 = this.errorTipColorRes;
            if (num5 != null) {
                dialog.getBinding().tvErrorTips.setTextColorById(num5.intValue());
            }
            Integer num6 = this.hintRes;
            if (num6 != null) {
                dialog.getBinding().tieName.setHint(ResManager.INSTANCE.getStringSafely(num6.intValue()));
            }
        }

        /* renamed from: l */
        public final void m36416l(NameEditDialog dialog) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format(ResManager.INSTANCE.getStringSafely(C8037R.string.exit_length_display), Arrays.copyOf(new Object[]{Integer.valueOf(dialog.getBinding().tieName.getLengthDisplay()), Integer.valueOf(dialog.getBinding().tieName.getMaxLengthDisplay())}, 2));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            dialog.getBinding().tvCounter.setText(format);
        }

        @NotNull
        public final Builder setCancelCallback(@NotNull Function1<? super NameEditDialog, Unit> callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.cancelCallback = callback;
            return this;
        }

        @NotNull
        public final Builder setCancelText(@StringRes int cancelStr) {
            this.cancelRes = Integer.valueOf(cancelStr);
            return this;
        }

        @NotNull
        public final Builder setConfirmCallback(@NotNull Function2<? super NameEditDialog, ? super String, Unit> callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.confirmCallback = callback;
            return this;
        }

        @NotNull
        public final Builder setConfirmText(@StringRes int confirmRes) {
            this.confirmRes = Integer.valueOf(confirmRes);
            return this;
        }

        @NotNull
        public final Builder setDismissCallback(@NotNull Function1<? super NameEditDialog, Unit> callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.dismissCallback = callback;
            return this;
        }

        @NotNull
        public final Builder setEditHint(@StringRes int editHint) {
            this.hintRes = Integer.valueOf(editHint);
            return this;
        }

        @NotNull
        public final Builder setEditTextContent(@NotNull String content) {
            Intrinsics.checkNotNullParameter(content, "content");
            this.editTextContent = content;
            return this;
        }

        @NotNull
        public final Builder setEditTitle(@StringRes int editTitleRes) {
            this.editTitleRes = Integer.valueOf(editTitleRes);
            return this;
        }

        @NotNull
        public final Builder setErrorTipColor(@ColorRes int errorTipColorRes) {
            this.errorTipColorRes = Integer.valueOf(errorTipColorRes);
            return this;
        }

        @NotNull
        public final Builder setHideCounterDisplay(boolean hideCounter) {
            this.hideCounter = hideCounter;
            return this;
        }

        @NotNull
        public final Builder setMaxLength(int maxLength, boolean isCustomLengthRule) {
            this.maxLength = maxLength;
            this.isCustomLengthRule = isCustomLengthRule;
            return this;
        }

        @NotNull
        public final Builder setTitle(@StringRes int title) {
            this.titleRes = Integer.valueOf(title);
            return this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.onyx.android.sdk.ui.NameEditDialog$timerObserver$1] */
    public NameEditDialog(@NotNull final Context context) {
        super(context);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogNameEditBinding>() { // from class: com.onyx.android.sdk.ui.NameEditDialog$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogNameEditBinding invoke() {
                DialogNameEditBinding inflate = DialogNameEditBinding.inflate(LayoutInflater.from(context));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
        this.timerObserver = new RxTimerUtil.TimerObserver() { // from class: com.onyx.android.sdk.ui.NameEditDialog$timerObserver$1
            @Override // io.reactivex.rxjava3.core.Observer
            public /* bridge */ /* synthetic */ void onNext(Long l) {
                onNext(l.longValue());
            }

            public void onNext(long t) {
                NameEditDialog.this.getBinding().tvErrorTips.setText("");
                TintTextView tvErrorTips = NameEditDialog.this.getBinding().tvErrorTips;
                Intrinsics.checkNotNullExpressionValue(tvErrorTips, "tvErrorTips");
                tvErrorTips.setVisibility(8);
            }
        };
    }

    @Override // com.onyx.android.sdk.p039ui.AutoSizeDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        ViewKt.hideInputKeyboard(getBinding().tieName);
        super.dismiss();
    }

    @NotNull
    public final DialogNameEditBinding getBinding() {
        return (DialogNameEditBinding) this.binding.getValue();
    }

    @NotNull
    public final String getEditTextContent() {
        return String.valueOf(getBinding().tieName.getText());
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getBinding().tieName.requestFocus();
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063338, this, savedInstanceState);
    }

    public final void releaseTimer() {
        RxTimerUtil.INSTANCE.cancel(this.timerObserver);
    }

    public final void showErrorTip(@StringRes int errorTip) {
        RxTimerUtil rxTimerUtil = RxTimerUtil.INSTANCE;
        rxTimerUtil.cancel(this.timerObserver);
        TintTextView tvErrorTips = getBinding().tvErrorTips;
        Intrinsics.checkNotNullExpressionValue(tvErrorTips, "tvErrorTips");
        tvErrorTips.setVisibility(0);
        getBinding().tvErrorTips.setText(errorTip);
        rxTimerUtil.timer(2000L, this.timerObserver);
    }
}
