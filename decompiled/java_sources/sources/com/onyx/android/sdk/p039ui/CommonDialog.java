package com.onyx.android.sdk.p039ui;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.Spannable;
import android.text.Spanned;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import androidx.annotation.ColorRes;
import androidx.annotation.StringRes;
import androidx.fragment.app.C1126e;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.p039ui.databinding.DialogCommonBinding;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u00182\u00020\u0001:\u0002\u0019\u0018B\u0011\b\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\bJ\b\u0010\n\u001a\u00020\u0004H\u0016J\b\u0010\u000b\u001a\u00020\u0004H\u0016J\u0010\u0010\u000e\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\fJ\b\u0010\u000f\u001a\u00020\u0004H\u0002R\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/CommonDialog;", "Landroid/app/Dialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "Landroid/view/View;", "getConfirmBtn", "Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;", "getInputEdit", "show", "dismiss", "", "delay", "dismissWithDelay", "a", "Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;", "e", "Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;", "binging", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Companion", "Builder", "sdk-ui_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCommonDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonDialog.kt\ncom/onyx/android/sdk/ui/CommonDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,439:1\n260#2:440\n193#2,3:441\n*S KotlinDebug\n*F\n+ 1 CommonDialog.kt\ncom/onyx/android/sdk/ui/CommonDialog\n*L\n68#1:440\n100#1:441,3\n*E\n"})
/* loaded from: classes17.dex */
public final class CommonDialog extends Dialog {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int DIALOG_TYPE_LOADING = 1;
    public static final int DIALOG_TYPE_TEXT = 0;

    /* renamed from: e, reason: from kotlin metadata */
    public DialogCommonBinding binging;

    @Metadata(m61527d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b3\b\u0016\u0018\u00002\u00020\u0001B\u0010\u0012\u0006\u0010_\u001a\u00020X¢\u0006\u0005\b\u008a\u0001\u0010^J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0011J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0011J@\u0010\u001e\u001a\u00020\u000028\u0010\u001d\u001a4\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u0003\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001c\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0018J-\u0010!\u001a\u00020\u00002%\u0010\u001d\u001a!\u0012\u0015\u0012\u0013\u0018\u00010 ¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u001fJ\u0016\u0010#\u001a\u00020\u00002\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\"J\u0010\u0010&\u001a\u00020\u00002\b\b\u0001\u0010%\u001a\u00020$J\u000e\u0010&\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\u001bJ\u0010\u0010)\u001a\u00020\u00002\b\b\u0001\u0010(\u001a\u00020$J\u0010\u0010+\u001a\u00020\u00002\b\b\u0001\u0010*\u001a\u00020$J\u0010\u0010+\u001a\u00020\u00002\b\u0010,\u001a\u0004\u0018\u00010\u001bJ\u0010\u0010.\u001a\u00020\u00002\b\b\u0001\u0010-\u001a\u00020$J\u0010\u0010/\u001a\u00020\u00002\b\b\u0002\u0010/\u001a\u00020\u0011J\u0010\u00100\u001a\u00020\u00002\b\b\u0002\u00100\u001a\u00020\u0011J\u0010\u00101\u001a\u00020\u00002\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bJ\u000e\u00104\u001a\u00020\u00002\u0006\u00103\u001a\u000202J\u0018\u00107\u001a\u00020\u00002\u0006\u00105\u001a\u00020$2\b\b\u0002\u00106\u001a\u00020\u0011J\u000e\u00109\u001a\u00020\u00002\u0006\u00108\u001a\u00020\u0011J\u0010\u0010;\u001a\u00020\u00002\b\b\u0001\u0010:\u001a\u00020$J\u000e\u0010=\u001a\u00020\u00002\u0006\u0010<\u001a\u00020$J\u0010\u0010?\u001a\u00020\u00002\b\b\u0001\u0010>\u001a\u00020$J\u0010\u0010A\u001a\u00020\u00002\b\b\u0001\u0010@\u001a\u00020$J\u000e\u0010C\u001a\u00020\u00002\u0006\u0010B\u001a\u00020$J\u000e\u0010E\u001a\u00020\u00002\u0006\u0010D\u001a\u00020$J\u000e\u0010G\u001a\u00020\u00002\u0006\u0010F\u001a\u00020$J\u000e\u0010I\u001a\u00020\u00002\u0006\u0010H\u001a\u00020\u0011J\u000e\u0010J\u001a\u00020\u00002\u0006\u0010H\u001a\u00020\u0011J\u000e\u0010K\u001a\u00020\u00002\u0006\u0010H\u001a\u00020\u0011J\u000e\u0010M\u001a\u00020\u00002\u0006\u0010L\u001a\u00020\u0011J\u001a\u0010P\u001a\u00020\u00002\u0012\u0010O\u001a\u000e\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020\u00110\u001fJ\u000e\u0010S\u001a\u00020\u00002\u0006\u0010R\u001a\u00020QJ\u000e\u0010V\u001a\u00020\u00002\u0006\u0010U\u001a\u00020TJ\u0006\u0010W\u001a\u00020\u0002R\"\u0010_\u001a\u00020X8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\\"\u0004\b]\u0010^RH\u0010c\u001a4\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u0003\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(`\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010bR5\u0010f\u001a!\u0012\u0015\u0012\u0013\u0018\u00010 ¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010eR\u001e\u0010i\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010hR\u0016\u0010%\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bj\u0010kR\u0018\u0010(\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010lR\u0018\u0010n\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010kR\u0018\u0010p\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010oR\u0018\u0010:\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010lR\u0018\u0010>\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bq\u0010lR\u0018\u0010@\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010lR\u0018\u0010*\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010lR\u0018\u0010,\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010kR\u0018\u0010-\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010lR\u0016\u0010<\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010uR\u0016\u0010v\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010uR\u0016\u00108\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010wR\u0016\u0010x\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010wR\u0016\u0010B\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010uR\u0016\u0010D\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010uR\u0016\u0010F\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010uR\u0016\u0010{\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010wR\u0016\u00100\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010wR\u0016\u0010/\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b}\u0010wR\u0016\u0010\u007f\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010wR\u0017\u0010\u0016\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0080\u0001\u0010wR\u0017\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0081\u0001\u0010wR\u0017\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0082\u0001\u0010wR\u0017\u0010L\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0083\u0001\u0010wR\u001b\u0010\u0086\u0001\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0085\u0001R$\u0010\u0088\u0001\u001a\u000e\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020\u00110\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0087\u0001\u0010eR\u0018\u0010U\u001a\u00020T8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0089\u0001\u0010\u0089\u0001¨\u0006\u008b\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/CommonDialog$Builder;", "", "Lcom/onyx/android/sdk/ui/CommonDialog;", "dialog", "", C6999h.f39688c, "p", "i", "r", GoogleApiAvailabilityLight.f29016b, "s", "q", C4921e.f26528e, "Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;", "binding", C6997f.f39671c, "t", "", "cancelable", "setCancelable", "isWarning", "setWarning", "isCancelOutside", "setCancelTouchOutside", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "", "editTextStr", "callback", "setConfirmCallback", "Lkotlin/Function1;", "Landroid/app/Dialog;", "setCancelCallback", "Lkotlin/Function0;", "setDismissCallback", "", "titleText", "setTitle", "title", "titleColor", "setTitleColor", "contentTextRes", "setMessage", "contentText", "progressText", "setProgressText", "hideTitle", "hideContent", "setEditTextContent", "Landroid/text/Spannable;", "spannable", "setContentSpannable", "maxLength", "enableCustomLength", "setEditTextMaxLength", "maxLengthVisible", "setEditMaxLengthVisible", "hintText", "setEditHint", "inputType", "setInputType", "cancelText", "setCancelText", "confirmText", "setConfirmText", "cancelTextColor", "setCancelColor", "confirmTextColor", "setConfirmColor", "dialogType", "setDialogType", "isHide", "setEditContentHide", "setCancelButtonHide", "setTextContentHide", "confirmDismiss", "setConfirmDismiss", "", "filter", "setEditCharFilter", "Landroid/view/View;", "view", "setView", "", "dimAmount", "setDimAmount", BaiduYunConstant.CREATE, "Landroid/content/Context;", "a", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "context", "editStr", "b", "Lkotlin/jvm/functions/Function2;", "confirmCallback", "c", "Lkotlin/jvm/functions/Function1;", "cancelCallback", "d", "Lkotlin/jvm/functions/Function0;", "dismissCallback", "e", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.INTEGER_SIG, C6998g.f39679a, "editText", "Landroid/text/Spannable;", "contentSpannable", "j", C4921e.f26537n, "l", "m", "I", "editTextMaxLength", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "enableEditCustomLength", "u", "v", "hideEditText", "w", "x", "y", "hideCancelButton", "z", "A", "B", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, SardineUtil.DEFAULT_NAMESPACE_PREFIX, "Landroid/view/View;", "contentView", "E", "charFilter", "F", Constants.CONSTRUCTOR_NAME, "sdk-ui_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    @SourceDebugExtension({"SMAP\nCommonDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonDialog.kt\ncom/onyx/android/sdk/ui/CommonDialog$Builder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,439:1\n262#2,2:440\n262#2,2:442\n304#2,2:445\n304#2,2:447\n304#2,2:449\n262#2,2:451\n262#2,2:453\n262#2,2:455\n262#2,2:457\n262#2,2:459\n304#2,2:461\n262#2,2:463\n1#3:444\n420#4:465\n502#4,5:466\n*S KotlinDebug\n*F\n+ 1 CommonDialog.kt\ncom/onyx/android/sdk/ui/CommonDialog$Builder\n*L\n318#1:440,2\n319#1:442,2\n378#1:445,2\n379#1:447,2\n380#1:449,2\n385#1:451,2\n386#1:453,2\n388#1:455,2\n389#1:457,2\n394#1:459,2\n404#1:461,2\n415#1:463,2\n422#1:465\n422#1:466,5\n*E\n"})
    /* loaded from: classes8.dex */
    public static class Builder {

        /* renamed from: A, reason: from kotlin metadata */
        public boolean cancelable;

        /* renamed from: B, reason: from kotlin metadata */
        public boolean isWarning;

        /* renamed from: C, reason: from kotlin metadata */
        public boolean confirmDismiss;

        /* renamed from: D, reason: from kotlin metadata */
        @Nullable
        public View contentView;

        /* renamed from: E, reason: from kotlin metadata */
        @NotNull
        public Function1<? super Character, Boolean> charFilter;

        /* renamed from: F, reason: from kotlin metadata */
        public float dimAmount;

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public Context context;

        /* renamed from: b, reason: from kotlin metadata */
        @Nullable
        public Function2<? super CommonDialog, ? super String, Unit> confirmCallback;

        /* renamed from: c, reason: from kotlin metadata */
        @Nullable
        public Function1<? super Dialog, Unit> cancelCallback;

        /* renamed from: d, reason: from kotlin metadata */
        @Nullable
        public Function0<Unit> dismissCallback;

        /* renamed from: e, reason: from kotlin metadata */
        @NotNull
        public String titleText;

        /* renamed from: f, reason: from kotlin metadata */
        @Nullable
        public Integer titleColor;

        /* renamed from: g, reason: from kotlin metadata */
        @Nullable
        public String editText;

        /* renamed from: h, reason: from kotlin metadata */
        @Nullable
        public Spannable contentSpannable;

        /* renamed from: i, reason: from kotlin metadata */
        @Nullable
        public Integer hintText;

        /* renamed from: j, reason: from kotlin metadata */
        @Nullable
        public Integer cancelText;

        /* renamed from: k, reason: from kotlin metadata */
        @Nullable
        public Integer confirmText;

        /* renamed from: l, reason: from kotlin metadata */
        @Nullable
        public Integer contentTextRes;

        /* renamed from: m, reason: from kotlin metadata */
        @Nullable
        public String contentText;

        /* renamed from: n, reason: from kotlin metadata */
        @Nullable
        public Integer progressText;

        /* renamed from: o, reason: from kotlin metadata */
        public int inputType;

        /* renamed from: p, reason: from kotlin metadata */
        public int editTextMaxLength;

        /* renamed from: q, reason: from kotlin metadata */
        public boolean maxLengthVisible;

        /* renamed from: r, reason: from kotlin metadata */
        public boolean enableEditCustomLength;

        /* renamed from: s, reason: from kotlin metadata */
        public int cancelTextColor;

        /* renamed from: t, reason: from kotlin metadata */
        public int confirmTextColor;

        /* renamed from: u, reason: from kotlin metadata */
        public int dialogType;

        /* renamed from: v, reason: from kotlin metadata */
        public boolean hideEditText;

        /* renamed from: w, reason: from kotlin metadata */
        public boolean hideContent;

        /* renamed from: x, reason: from kotlin metadata */
        public boolean hideTitle;

        /* renamed from: y, reason: from kotlin metadata */
        public boolean hideCancelButton;

        /* renamed from: z, reason: from kotlin metadata */
        public boolean isCancelOutside;

        public Builder(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            this.context = context;
            this.titleText = "";
            this.inputType = 1;
            this.editTextMaxLength = -1;
            this.cancelTextColor = -1;
            this.confirmTextColor = -1;
            this.hideEditText = true;
            this.cancelable = true;
            this.confirmDismiss = true;
            this.charFilter = new Function1<Character, Boolean>() { // from class: com.onyx.android.sdk.ui.CommonDialog$Builder$charFilter$1
                @NotNull
                public final Boolean invoke(char c) {
                    return Boolean.TRUE;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Boolean invoke(Character ch) {
                    return invoke(ch.charValue());
                }
            };
            this.dimAmount = 0.3f;
        }

        /* renamed from: g */
        public static final CharSequence m36368g(Builder this$0, CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNull(charSequence);
            StringBuilder sb = new StringBuilder();
            int length = charSequence.length();
            for (int i5 = 0; i5 < length; i5++) {
                char charAt = charSequence.charAt(i5);
                if (this$0.charFilter.invoke(Character.valueOf(charAt)).booleanValue()) {
                    sb.append(charAt);
                }
            }
            return sb;
        }

        public static /* synthetic */ Builder hideContent$default(Builder builder, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: hideContent");
            }
            if ((i & 1) != 0) {
                z = true;
            }
            return builder.hideContent(z);
        }

        public static /* synthetic */ Builder hideTitle$default(Builder builder, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: hideTitle");
            }
            if ((i & 1) != 0) {
                z = true;
            }
            return builder.hideTitle(z);
        }

        /* renamed from: j */
        public static final void m36369j(Builder this$0, CommonDialog dialog, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(dialog, "$dialog");
            Function1<? super Dialog, Unit> function1 = this$0.cancelCallback;
            if (function1 != null) {
                function1.invoke(dialog);
            }
            dialog.dismiss();
        }

        /* renamed from: k */
        public static final void m36370k(Builder this$0, CommonDialog dialog, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(dialog, "$dialog");
            Function2<? super CommonDialog, ? super String, Unit> function2 = this$0.confirmCallback;
            if (function2 != null) {
                DialogCommonBinding dialogCommonBinding = dialog.binging;
                if (dialogCommonBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binging");
                    dialogCommonBinding = null;
                }
                function2.invoke(dialog, String.valueOf(dialogCommonBinding.editText.getText()));
            }
            if (this$0.confirmDismiss) {
                dialog.dismiss();
            }
        }

        /* renamed from: l */
        public static final void m36371l(Builder this$0, DialogInterface dialogInterface) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Function1<? super Dialog, Unit> function1 = this$0.cancelCallback;
            if (function1 != null) {
                function1.invoke(null);
            }
        }

        /* renamed from: m */
        public static final void m36372m(CommonDialog dialog, Builder this$0, DialogInterface dialogInterface) {
            Intrinsics.checkNotNullParameter(dialog, "$dialog");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            DialogCommonBinding dialogCommonBinding = dialog.binging;
            DialogCommonBinding dialogCommonBinding2 = null;
            if (dialogCommonBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binging");
                dialogCommonBinding = null;
            }
            if (ViewKt.isVisible(dialogCommonBinding.editText)) {
                DialogCommonBinding dialogCommonBinding3 = dialog.binging;
                if (dialogCommonBinding3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binging");
                } else {
                    dialogCommonBinding2 = dialogCommonBinding3;
                }
                ViewKt.hideInputKeyboard(dialogCommonBinding2.editText);
            }
            Function0<Unit> function0 = this$0.dismissCallback;
            if (function0 != null) {
                function0.invoke();
            }
        }

        public static /* synthetic */ Builder setEditTextMaxLength$default(Builder builder, int i, boolean z, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setEditTextMaxLength");
            }
            if ((i2 & 2) != 0) {
                z = false;
            }
            return builder.setEditTextMaxLength(i, z);
        }

        @NotNull
        public final CommonDialog create() {
            CommonDialog commonDialog = new CommonDialog(this.context, null);
            commonDialog.setCanceledOnTouchOutside(this.isCancelOutside);
            commonDialog.setCancelable(this.cancelable);
            m36382t(commonDialog);
            m36380r(commonDialog);
            m36376n(commonDialog);
            m36379q(commonDialog);
            m36378p(commonDialog);
            m36377o(commonDialog);
            m36381s(commonDialog);
            m36374h(commonDialog);
            m36375i(commonDialog);
            return commonDialog;
        }

        /* renamed from: f */
        public final void m36373f(DialogCommonBinding binding) {
            InputFilter inputFilter = new InputFilter() { // from class: com.sunia.HTREnginev2.b5e
                @Override // android.text.InputFilter
                public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
                    CharSequence m36368g;
                    m36368g = CommonDialog.Builder.m36368g(CommonDialog.Builder.this, charSequence, i, i2, spanned, i3, i4);
                    return m36368g;
                }
            };
            MaxLengthInputTextEdit editText = binding.editText;
            Intrinsics.checkNotNullExpressionValue(editText, "editText");
            EditTextExtsKt.addFilter(editText, inputFilter);
        }

        @NotNull
        public final Context getContext() {
            return this.context;
        }

        /* renamed from: h */
        public final void m36374h(CommonDialog dialog) {
            if (this.contentView != null) {
                DialogCommonBinding dialogCommonBinding = dialog.binging;
                DialogCommonBinding dialogCommonBinding2 = null;
                if (dialogCommonBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binging");
                    dialogCommonBinding = null;
                }
                TintTextView tvContent = dialogCommonBinding.tvContent;
                Intrinsics.checkNotNullExpressionValue(tvContent, "tvContent");
                tvContent.setVisibility(8);
                DialogCommonBinding dialogCommonBinding3 = dialog.binging;
                if (dialogCommonBinding3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binging");
                    dialogCommonBinding3 = null;
                }
                TintConstraintLayout clEditContainer = dialogCommonBinding3.clEditContainer;
                Intrinsics.checkNotNullExpressionValue(clEditContainer, "clEditContainer");
                clEditContainer.setVisibility(8);
                DialogCommonBinding dialogCommonBinding4 = dialog.binging;
                if (dialogCommonBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binging");
                } else {
                    dialogCommonBinding2 = dialogCommonBinding4;
                }
                dialogCommonBinding2.contentContainer.addView(this.contentView);
            }
        }

        @NotNull
        public final Builder hideContent(boolean hideContent) {
            this.hideContent = hideContent;
            return this;
        }

        @NotNull
        public final Builder hideTitle(boolean hideTitle) {
            this.hideTitle = hideTitle;
            return this;
        }

        /* renamed from: i */
        public final void m36375i(final CommonDialog dialog) {
            DialogCommonBinding dialogCommonBinding = dialog.binging;
            DialogCommonBinding dialogCommonBinding2 = null;
            if (dialogCommonBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binging");
                dialogCommonBinding = null;
            }
            dialogCommonBinding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.c5e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CommonDialog.Builder.m36369j(CommonDialog.Builder.this, dialog, view);
                }
            });
            DialogCommonBinding dialogCommonBinding3 = dialog.binging;
            if (dialogCommonBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binging");
                dialogCommonBinding3 = null;
            }
            dialogCommonBinding3.tvConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.d5e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CommonDialog.Builder.m36370k(CommonDialog.Builder.this, dialog, view);
                }
            });
            if (this.maxLengthVisible) {
                DialogCommonBinding dialogCommonBinding4 = dialog.binging;
                if (dialogCommonBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binging");
                } else {
                    dialogCommonBinding2 = dialogCommonBinding4;
                }
                dialogCommonBinding2.editText.setTextChangeCallback(new Function2<Integer, Integer, Unit>() { // from class: com.onyx.android.sdk.ui.CommonDialog$Builder$initDialogListener$3
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Integer num, Integer num2) {
                        invoke(num.intValue(), num2.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(int i, int i2) {
                        int colorById;
                        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                        String format = String.format(ResManager.INSTANCE.getStringSafely(C8037R.string.exit_length_display), Arrays.copyOf(new Object[]{Integer.valueOf(i), Integer.valueOf(i2)}, 2));
                        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                        if (i == i2) {
                            colorById = ThemeUtils.getColorById(C7996R.color.theme_error_color_01);
                        } else {
                            colorById = ThemeUtils.getColorById(C7996R.color.theme_text_color_02);
                        }
                        DialogCommonBinding dialogCommonBinding5 = CommonDialog.this.binging;
                        DialogCommonBinding dialogCommonBinding6 = null;
                        if (dialogCommonBinding5 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binging");
                            dialogCommonBinding5 = null;
                        }
                        dialogCommonBinding5.tvEditLengthDisplay.setTextColor(colorById);
                        DialogCommonBinding dialogCommonBinding7 = CommonDialog.this.binging;
                        if (dialogCommonBinding7 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binging");
                        } else {
                            dialogCommonBinding6 = dialogCommonBinding7;
                        }
                        dialogCommonBinding6.tvEditLengthDisplay.setText(format);
                    }
                });
            }
            dialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.sunia.HTREnginev2.e5e
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    CommonDialog.Builder.m36371l(CommonDialog.Builder.this, dialogInterface);
                }
            });
            dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.sunia.HTREnginev2.f5e
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    CommonDialog.Builder.m36372m(CommonDialog.this, this, dialogInterface);
                }
            });
        }

        /* renamed from: n */
        public final void m36376n(CommonDialog dialog) {
            DialogCommonBinding dialogCommonBinding = null;
            if (this.dialogType == 0) {
                DialogCommonBinding dialogCommonBinding2 = dialog.binging;
                if (dialogCommonBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binging");
                    dialogCommonBinding2 = null;
                }
                LinearLayout loadingContainer = dialogCommonBinding2.loadingContainer;
                Intrinsics.checkNotNullExpressionValue(loadingContainer, "loadingContainer");
                loadingContainer.setVisibility(8);
                DialogCommonBinding dialogCommonBinding3 = dialog.binging;
                if (dialogCommonBinding3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binging");
                } else {
                    dialogCommonBinding = dialogCommonBinding3;
                }
                TintLinearLayout textContainer = dialogCommonBinding.textContainer;
                Intrinsics.checkNotNullExpressionValue(textContainer, "textContainer");
                textContainer.setVisibility(0);
                return;
            }
            DialogCommonBinding dialogCommonBinding4 = dialog.binging;
            if (dialogCommonBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binging");
                dialogCommonBinding4 = null;
            }
            LinearLayout loadingContainer2 = dialogCommonBinding4.loadingContainer;
            Intrinsics.checkNotNullExpressionValue(loadingContainer2, "loadingContainer");
            loadingContainer2.setVisibility(0);
            DialogCommonBinding dialogCommonBinding5 = dialog.binging;
            if (dialogCommonBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binging");
            } else {
                dialogCommonBinding = dialogCommonBinding5;
            }
            TintLinearLayout textContainer2 = dialogCommonBinding.textContainer;
            Intrinsics.checkNotNullExpressionValue(textContainer2, "textContainer");
            textContainer2.setVisibility(8);
        }

        /* renamed from: o */
        public final void m36377o(CommonDialog dialog) {
            String str = this.editText;
            DialogCommonBinding dialogCommonBinding = null;
            if (str != null) {
                DialogCommonBinding dialogCommonBinding2 = dialog.binging;
                if (dialogCommonBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binging");
                    dialogCommonBinding2 = null;
                }
                dialogCommonBinding2.editText.setText(str);
            }
            Integer num = this.hintText;
            if (num != null) {
                int intValue = num.intValue();
                DialogCommonBinding dialogCommonBinding3 = dialog.binging;
                if (dialogCommonBinding3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binging");
                    dialogCommonBinding3 = null;
                }
                dialogCommonBinding3.editText.setHint(intValue);
            }
            if (this.editTextMaxLength != -1) {
                DialogCommonBinding dialogCommonBinding4 = dialog.binging;
                if (dialogCommonBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binging");
                    dialogCommonBinding4 = null;
                }
                dialogCommonBinding4.editText.setMaxLength(Integer.valueOf(this.editTextMaxLength), this.enableEditCustomLength);
            }
            DialogCommonBinding dialogCommonBinding5 = dialog.binging;
            if (dialogCommonBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binging");
                dialogCommonBinding5 = null;
            }
            dialogCommonBinding5.editText.setInputType(this.inputType);
            DialogCommonBinding dialogCommonBinding6 = dialog.binging;
            if (dialogCommonBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binging");
                dialogCommonBinding6 = null;
            }
            m36373f(dialogCommonBinding6);
            DialogCommonBinding dialogCommonBinding7 = dialog.binging;
            if (dialogCommonBinding7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binging");
                dialogCommonBinding7 = null;
            }
            TintTextView tvEditLengthDisplay = dialogCommonBinding7.tvEditLengthDisplay;
            Intrinsics.checkNotNullExpressionValue(tvEditLengthDisplay, "tvEditLengthDisplay");
            tvEditLengthDisplay.setVisibility(this.maxLengthVisible ? 0 : 8);
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String stringSafely = ResManager.INSTANCE.getStringSafely(C8037R.string.exit_length_display);
            Object[] objArr = new Object[2];
            DialogCommonBinding dialogCommonBinding8 = dialog.binging;
            if (dialogCommonBinding8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binging");
                dialogCommonBinding8 = null;
            }
            objArr[0] = Integer.valueOf(dialogCommonBinding8.editText.getLengthDisplay());
            DialogCommonBinding dialogCommonBinding9 = dialog.binging;
            if (dialogCommonBinding9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binging");
                dialogCommonBinding9 = null;
            }
            objArr[1] = Integer.valueOf(dialogCommonBinding9.editText.getMaxLengthDisplay());
            String format = String.format(stringSafely, Arrays.copyOf(objArr, 2));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            DialogCommonBinding dialogCommonBinding10 = dialog.binging;
            if (dialogCommonBinding10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binging");
            } else {
                dialogCommonBinding = dialogCommonBinding10;
            }
            dialogCommonBinding.tvEditLengthDisplay.setText(format);
        }

        /* renamed from: p */
        public final void m36378p(CommonDialog dialog) {
            Integer num = this.contentTextRes;
            DialogCommonBinding dialogCommonBinding = null;
            if (num != null) {
                int intValue = num.intValue();
                DialogCommonBinding dialogCommonBinding2 = dialog.binging;
                if (dialogCommonBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binging");
                    dialogCommonBinding2 = null;
                }
                dialogCommonBinding2.tvContent.setText(intValue);
            }
            String str = this.contentText;
            if (str != null) {
                DialogCommonBinding dialogCommonBinding3 = dialog.binging;
                if (dialogCommonBinding3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binging");
                    dialogCommonBinding3 = null;
                }
                dialogCommonBinding3.tvContent.setText(str);
            }
            Integer num2 = this.cancelText;
            if (num2 != null) {
                int intValue2 = num2.intValue();
                DialogCommonBinding dialogCommonBinding4 = dialog.binging;
                if (dialogCommonBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binging");
                    dialogCommonBinding4 = null;
                }
                dialogCommonBinding4.tvCancel.setText(intValue2);
            }
            Integer num3 = this.confirmText;
            if (num3 != null) {
                int intValue3 = num3.intValue();
                DialogCommonBinding dialogCommonBinding5 = dialog.binging;
                if (dialogCommonBinding5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binging");
                    dialogCommonBinding5 = null;
                }
                dialogCommonBinding5.tvConfirm.setText(intValue3);
            }
            if (this.contentSpannable != null) {
                DialogCommonBinding dialogCommonBinding6 = dialog.binging;
                if (dialogCommonBinding6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binging");
                    dialogCommonBinding6 = null;
                }
                dialogCommonBinding6.tvContent.setText(this.contentSpannable);
            }
            Integer num4 = this.progressText;
            if (num4 != null) {
                int intValue4 = num4.intValue();
                DialogCommonBinding dialogCommonBinding7 = dialog.binging;
                if (dialogCommonBinding7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binging");
                    dialogCommonBinding7 = null;
                }
                dialogCommonBinding7.tvProgress.setText(intValue4);
            }
            if (this.cancelTextColor != -1) {
                DialogCommonBinding dialogCommonBinding8 = dialog.binging;
                if (dialogCommonBinding8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binging");
                    dialogCommonBinding8 = null;
                }
                dialogCommonBinding8.tvCancel.setTextColor(this.cancelTextColor);
            }
            if (this.confirmTextColor != -1) {
                DialogCommonBinding dialogCommonBinding9 = dialog.binging;
                if (dialogCommonBinding9 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binging");
                } else {
                    dialogCommonBinding = dialogCommonBinding9;
                }
                dialogCommonBinding.tvConfirm.setTextColor(this.confirmTextColor);
            }
        }

        /* renamed from: q */
        public final void m36379q(CommonDialog dialog) {
            DialogCommonBinding dialogCommonBinding = dialog.binging;
            DialogCommonBinding dialogCommonBinding2 = null;
            if (dialogCommonBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binging");
                dialogCommonBinding = null;
            }
            MediumTextView tvTitle = dialogCommonBinding.tvTitle;
            Intrinsics.checkNotNullExpressionValue(tvTitle, "tvTitle");
            tvTitle.setVisibility(this.hideTitle ? 8 : 0);
            DialogCommonBinding dialogCommonBinding3 = dialog.binging;
            if (dialogCommonBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binging");
                dialogCommonBinding3 = null;
            }
            dialogCommonBinding3.tvTitle.setText(this.titleText);
            Integer num = this.titleColor;
            if (num != null) {
                int intValue = num.intValue();
                DialogCommonBinding dialogCommonBinding4 = dialog.binging;
                if (dialogCommonBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binging");
                } else {
                    dialogCommonBinding2 = dialogCommonBinding4;
                }
                dialogCommonBinding2.tvTitle.setTextColor(this.context.getColor(intValue));
            }
        }

        /* renamed from: r */
        public final void m36380r(CommonDialog dialog) {
            DialogCommonBinding dialogCommonBinding = dialog.binging;
            DialogCommonBinding dialogCommonBinding2 = null;
            if (dialogCommonBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binging");
                dialogCommonBinding = null;
            }
            TintTextView tvContent = dialogCommonBinding.tvContent;
            Intrinsics.checkNotNullExpressionValue(tvContent, "tvContent");
            tvContent.setVisibility(this.hideContent ? 8 : 0);
            DialogCommonBinding dialogCommonBinding3 = dialog.binging;
            if (dialogCommonBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binging");
                dialogCommonBinding3 = null;
            }
            TintConstraintLayout clEditContainer = dialogCommonBinding3.clEditContainer;
            Intrinsics.checkNotNullExpressionValue(clEditContainer, "clEditContainer");
            clEditContainer.setVisibility(this.hideEditText ? 8 : 0);
            DialogCommonBinding dialogCommonBinding4 = dialog.binging;
            if (dialogCommonBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binging");
            } else {
                dialogCommonBinding2 = dialogCommonBinding4;
            }
            MediumTextView tvCancel = dialogCommonBinding2.tvCancel;
            Intrinsics.checkNotNullExpressionValue(tvCancel, "tvCancel");
            tvCancel.setVisibility(this.hideCancelButton ? 8 : 0);
        }

        /* renamed from: s */
        public final void m36381s(CommonDialog dialog) {
            DialogCommonBinding dialogCommonBinding = dialog.binging;
            DialogCommonBinding dialogCommonBinding2 = null;
            if (dialogCommonBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binging");
                dialogCommonBinding = null;
            }
            TintImageView ivWarning = dialogCommonBinding.ivWarning;
            Intrinsics.checkNotNullExpressionValue(ivWarning, "ivWarning");
            ivWarning.setVisibility(this.isWarning ? 0 : 8);
            if (this.isWarning) {
                DialogCommonBinding dialogCommonBinding3 = dialog.binging;
                if (dialogCommonBinding3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binging");
                    dialogCommonBinding3 = null;
                }
                dialogCommonBinding3.tvTitle.setTextColor(ThemeUtils.getColorById(C7996R.color.theme_error_color_01));
                DialogCommonBinding dialogCommonBinding4 = dialog.binging;
                if (dialogCommonBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binging");
                    dialogCommonBinding4 = null;
                }
                dialogCommonBinding4.tvConfirm.setBackgroundResource(C8037R.drawable.theme_ripple_dialog_error_stroke_bg);
                DialogCommonBinding dialogCommonBinding5 = dialog.binging;
                if (dialogCommonBinding5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binging");
                } else {
                    dialogCommonBinding2 = dialogCommonBinding5;
                }
                dialogCommonBinding2.tvConfirm.setTextColor(ThemeUtils.getColorById(C7996R.color.theme_error_color_01));
            }
        }

        @NotNull
        public final Builder setCancelButtonHide(boolean isHide) {
            this.hideCancelButton = isHide;
            return this;
        }

        @NotNull
        public final Builder setCancelCallback(@Nullable Function1<? super Dialog, Unit> callback) {
            this.cancelCallback = callback;
            return this;
        }

        @NotNull
        public final Builder setCancelColor(int cancelTextColor) {
            this.cancelTextColor = cancelTextColor;
            return this;
        }

        @NotNull
        public final Builder setCancelText(@StringRes int cancelText) {
            this.cancelText = Integer.valueOf(cancelText);
            return this;
        }

        @NotNull
        public final Builder setCancelTouchOutside(boolean isCancelOutside) {
            this.isCancelOutside = isCancelOutside;
            return this;
        }

        @NotNull
        public final Builder setCancelable(boolean cancelable) {
            this.cancelable = cancelable;
            return this;
        }

        @NotNull
        public final Builder setConfirmCallback(@Nullable Function2<? super CommonDialog, ? super String, Unit> callback) {
            this.confirmCallback = callback;
            return this;
        }

        @NotNull
        public final Builder setConfirmColor(int confirmTextColor) {
            this.confirmTextColor = confirmTextColor;
            return this;
        }

        @NotNull
        public final Builder setConfirmDismiss(boolean confirmDismiss) {
            this.confirmDismiss = confirmDismiss;
            return this;
        }

        @NotNull
        public final Builder setConfirmText(@StringRes int confirmText) {
            this.confirmText = Integer.valueOf(confirmText);
            return this;
        }

        @NotNull
        public final Builder setContentSpannable(@NotNull Spannable spannable) {
            Intrinsics.checkNotNullParameter(spannable, "spannable");
            this.contentSpannable = spannable;
            return this;
        }

        public final void setContext(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "<set-?>");
            this.context = context;
        }

        @NotNull
        public final Builder setDialogType(int dialogType) {
            this.dialogType = dialogType;
            return this;
        }

        @NotNull
        public final Builder setDimAmount(float dimAmount) {
            this.dimAmount = dimAmount;
            return this;
        }

        @NotNull
        public final Builder setDismissCallback(@Nullable Function0<Unit> callback) {
            this.dismissCallback = callback;
            return this;
        }

        @NotNull
        public final Builder setEditCharFilter(@NotNull Function1<? super Character, Boolean> filter) {
            Intrinsics.checkNotNullParameter(filter, "filter");
            this.charFilter = filter;
            return this;
        }

        @NotNull
        public final Builder setEditContentHide(boolean isHide) {
            this.hideEditText = isHide;
            return this;
        }

        @NotNull
        public final Builder setEditHint(@StringRes int hintText) {
            this.hintText = Integer.valueOf(hintText);
            return this;
        }

        @NotNull
        public final Builder setEditMaxLengthVisible(boolean maxLengthVisible) {
            this.maxLengthVisible = maxLengthVisible;
            return this;
        }

        @NotNull
        public final Builder setEditTextContent(@Nullable String editTextStr) {
            if (editTextStr == null) {
                editTextStr = "";
            }
            this.editText = editTextStr;
            return this;
        }

        @NotNull
        public final Builder setEditTextMaxLength(int maxLength, boolean enableCustomLength) {
            this.editTextMaxLength = maxLength;
            this.enableEditCustomLength = enableCustomLength;
            return this;
        }

        @NotNull
        public final Builder setInputType(int inputType) {
            this.inputType = inputType;
            return this;
        }

        @NotNull
        public final Builder setMessage(@StringRes int contentTextRes) {
            this.contentTextRes = Integer.valueOf(contentTextRes);
            return this;
        }

        @NotNull
        public final Builder setProgressText(@StringRes int progressText) {
            this.progressText = Integer.valueOf(progressText);
            return this;
        }

        @NotNull
        public final Builder setTextContentHide(boolean isHide) {
            this.hideContent = isHide;
            return this;
        }

        @NotNull
        public final Builder setTitle(@StringRes int titleText) {
            this.titleText = ResManager.INSTANCE.getStringSafely(titleText);
            return this;
        }

        @NotNull
        public final Builder setTitleColor(@ColorRes int titleColor) {
            this.titleColor = Integer.valueOf(titleColor);
            return this;
        }

        @NotNull
        public final Builder setView(@NotNull View view) {
            Intrinsics.checkNotNullParameter(view, "view");
            this.contentView = view;
            return this;
        }

        @NotNull
        public final Builder setWarning(boolean isWarning) {
            this.isWarning = isWarning;
            return this;
        }

        /* renamed from: t */
        public final void m36382t(CommonDialog dialog) {
            Window window;
            if (dialog == null || (window = dialog.getWindow()) == null) {
                return;
            }
            window.setDimAmount(this.dimAmount);
        }

        @NotNull
        public final Builder setMessage(@Nullable String contentText) {
            this.contentText = contentText;
            return this;
        }

        @NotNull
        public final Builder setTitle(@NotNull String title) {
            Intrinsics.checkNotNullParameter(title, "title");
            this.titleText = title;
            return this;
        }
    }

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\b\u0003\u0010\n\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/CommonDialog$Companion;", "", "()V", "DIALOG_TYPE_LOADING", "", "DIALOG_TYPE_TEXT", "createLoadingDialog", "Lcom/onyx/android/sdk/ui/CommonDialog;", "context", "Landroid/content/Context;", "textResId", "sdk-ui_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ CommonDialog createLoadingDialog$default(Companion companion, Context context, int i, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                i = C8037R.string.dialog_loading;
            }
            return companion.createLoadingDialog(context, i);
        }

        @NotNull
        public final CommonDialog createLoadingDialog(@NotNull Context context, @StringRes int textResId) {
            Intrinsics.checkNotNullParameter(context, "context");
            return new Builder(context).setDialogType(1).setProgressText(textResId).setCancelable(false).create();
        }

        public Companion() {
        }
    }

    public /* synthetic */ CommonDialog(Context context, DefaultConstructorMarker defaultConstructorMarker) {
        this(context);
    }

    public static /* synthetic */ void dismissWithDelay$default(CommonDialog commonDialog, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 500;
        }
        commonDialog.dismissWithDelay(j);
    }

    /* renamed from: a */
    public final void m36362a() {
        DialogCommonBinding inflate = DialogCommonBinding.inflate(LayoutInflater.from(getContext()));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binging = inflate;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binging");
            inflate = null;
        }
        setContentView(inflate.getRoot());
        Window window = getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            Intrinsics.checkNotNull(attributes, "null cannot be cast to non-null type android.view.WindowManager.LayoutParams");
            attributes.width = -2;
            attributes.height = -2;
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        DialogCommonBinding dialogCommonBinding = this.binging;
        if (dialogCommonBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binging");
            dialogCommonBinding = null;
        }
        Drawable background = dialogCommonBinding.ivLoadingAnim.getBackground();
        if (background instanceof AnimationDrawable) {
            ((AnimationDrawable) background).stop();
        }
    }

    public final void dismissWithDelay(long delay) {
        DialogCommonBinding dialogCommonBinding = this.binging;
        if (dialogCommonBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binging");
            dialogCommonBinding = null;
        }
        View root = dialogCommonBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        root.postDelayed(new Runnable() { // from class: com.onyx.android.sdk.ui.CommonDialog$dismissWithDelay$$inlined$postDelayed$1
            @Override // java.lang.Runnable
            public final void run() {
                CommonDialog.this.dismiss();
            }
        }, delay);
    }

    @NotNull
    public final View getConfirmBtn() {
        DialogCommonBinding dialogCommonBinding = this.binging;
        if (dialogCommonBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binging");
            dialogCommonBinding = null;
        }
        MediumTextView tvConfirm = dialogCommonBinding.tvConfirm;
        Intrinsics.checkNotNullExpressionValue(tvConfirm, "tvConfirm");
        return tvConfirm;
    }

    @NotNull
    public final MaxLengthInputTextEdit getInputEdit() {
        DialogCommonBinding dialogCommonBinding = this.binging;
        if (dialogCommonBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binging");
            dialogCommonBinding = null;
        }
        MaxLengthInputTextEdit editText = dialogCommonBinding.editText;
        Intrinsics.checkNotNullExpressionValue(editText, "editText");
        return editText;
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063339, this, savedInstanceState);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        DialogCommonBinding dialogCommonBinding = this.binging;
        DialogCommonBinding dialogCommonBinding2 = null;
        if (dialogCommonBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binging");
            dialogCommonBinding = null;
        }
        if (ViewKt.isVisible(dialogCommonBinding.clEditContainer)) {
            DialogCommonBinding dialogCommonBinding3 = this.binging;
            if (dialogCommonBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binging");
            } else {
                dialogCommonBinding2 = dialogCommonBinding3;
            }
            dialogCommonBinding2.editText.requestFocus();
        }
    }

    public CommonDialog(Context context) {
        super(context, C8037R.style.commonDialog);
        m36362a();
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
            window.setDimAmount(0.3f);
        }
    }
}
