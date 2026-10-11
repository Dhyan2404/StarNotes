package com.onyx.galaxy.note.p048ui.dialog;

import android.app.Activity;
import android.app.Dialog;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.TextViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.galaxy.note.p048ui.action.BaseUiAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BM\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u000f\u001a\u00020\u0006\u0012\u0006\u0010\u0011\u001a\u00020\n\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u0012\u0014\b\u0002\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\n0\u0015¢\u0006\u0004\b\u001c\u0010\u001dJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u000f\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\bR\u0014\u0010\u0011\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\fR\u0014\u0010\u0014\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R \u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\n0\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/dialog/InputDialogAction;", "Lcom/onyx/galaxy/note/ui/action/BaseUiAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", C6997f.f39671c, "I", "titleResId", "", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "enableCustomRule", C6999h.f39688c, "maxLengthResId", "i", "displayMaxLengthView", "j", Constants.STRING_SIG, "originText", "Lkotlin/Function1;", "", C4921e.f26537n, "Lkotlin/jvm/functions/Function1;", "charFilter", "Landroid/app/Activity;", "activityContext", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/app/Activity;IZIZLjava/lang/String;Lkotlin/jvm/functions/Function1;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class InputDialogAction extends BaseUiAction<String> {

    /* renamed from: f, reason: from kotlin metadata */
    public final int titleResId;

    /* renamed from: g, reason: from kotlin metadata */
    public final boolean enableCustomRule;

    /* renamed from: h, reason: from kotlin metadata */
    public final int maxLengthResId;

    /* renamed from: i, reason: from kotlin metadata */
    public final boolean displayMaxLengthView;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final String originText;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Function1<Character, Boolean> charFilter;

    /* renamed from: com.onyx.galaxy.note.ui.dialog.InputDialogAction$a */
    /* loaded from: classes9.dex */
    public static final class C12776a<T, R> implements Function {
        public C12776a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull BaseUiAction<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InputDialogAction.this.m51318l();
        }
    }

    public /* synthetic */ InputDialogAction(Activity activity, int i, boolean z, int i2, boolean z2, String str, Function1 function1, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(activity, i, z, i2, z2, str, (i3 & 64) != 0 ? new Function1<Character, Boolean>() { // from class: com.onyx.galaxy.note.ui.dialog.InputDialogAction.1
            @NotNull
            public final Boolean invoke(char c) {
                return Boolean.TRUE;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Character ch) {
                return invoke(ch.charValue());
            }
        } : function1);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<String> create() {
        Observable flatMap = createObservable().flatMap(new C12776a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<String> m51318l() {
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        new CommonDialog.Builder(getContext()).setTitle(this.titleResId).setEditContentHide(false).setConfirmDismiss(false).setEditTextMaxLength(ResManager.INSTANCE.getInteger(this.maxLengthResId), this.enableCustomRule).setEditMaxLengthVisible(this.displayMaxLengthView).setEditTextContent(this.originText).setEditCharFilter(this.charFilter).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.ui.dialog.InputDialogAction$showInputDialog$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(CommonDialog commonDialog, String str) {
                invoke2(commonDialog, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CommonDialog dialog, @NotNull String text) {
                Intrinsics.checkNotNullParameter(dialog, "dialog");
                Intrinsics.checkNotNullParameter(text, "text");
                if (TextViewKt.checkInputEmpty$default(dialog.getInputEdit(), 0, 1, null)) {
                    return;
                }
                RxjavaKt.done(create, text);
                dialog.dismiss();
            }
        }).setCancelCallback(new Function1<Dialog, Unit>() { // from class: com.onyx.galaxy.note.ui.dialog.InputDialogAction$showInputDialog$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Dialog dialog) {
                invoke2(dialog);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Dialog dialog) {
                create.onComplete();
            }
        }).create().show();
        return create;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public InputDialogAction(@NotNull Activity activityContext, int i, boolean z, int i2, boolean z2, @NotNull String originText, @NotNull Function1<? super Character, Boolean> charFilter) {
        super(activityContext);
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(originText, "originText");
        Intrinsics.checkNotNullParameter(charFilter, "charFilter");
        this.titleResId = i;
        this.enableCustomRule = z;
        this.maxLengthResId = i2;
        this.displayMaxLengthView = z2;
        this.originText = originText;
        this.charFilter = charFilter;
    }
}
