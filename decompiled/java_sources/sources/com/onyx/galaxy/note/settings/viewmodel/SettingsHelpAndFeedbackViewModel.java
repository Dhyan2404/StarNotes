package com.onyx.galaxy.note.settings.viewmodel;

import android.content.Context;
import android.net.Uri;
import androidx.lifecycle.MutableLiveData;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.settings.action.SubmitFeedbackAction;
import com.onyx.galaxy.note.settings.data.SubmitFeedbackContext;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b!\u0010\"J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bR1\u0010\u0015\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u000b \u0010*\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u000f0\u000f0\u000e8\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R%\u0010\u0019\u001a\u0010\u0012\f\u0012\n \u0010*\u0004\u0018\u00010\u00160\u00160\u000e8\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0012\u001a\u0004\b\u0018\u0010\u0014R%\u0010\u001d\u001a\u0010\u0012\f\u0012\n \u0010*\u0004\u0018\u00010\u001a0\u001a0\u000e8\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u0012\u001a\u0004\b\u001c\u0010\u0014R%\u0010 \u001a\u0010\u0012\f\u0012\n \u0010*\u0004\u0018\u00010\u001a0\u001a0\u000e8\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u0012\u001a\u0004\b\u001f\u0010\u0014¨\u0006#"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "", "checkEmail", "checkMemo", "Landroid/content/Context;", "context", "Lio/reactivex/rxjava3/core/Observable;", "submit", "", "cleanSubmitData", "Landroid/net/Uri;", "uri", "removePicture", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "i", "Landroidx/lifecycle/MutableLiveData;", "getPictureList", "()Landroidx/lifecycle/MutableLiveData;", "pictureList", "", "j", "getType", "type", "", C4921e.f26537n, "getMemo", "memo", "l", "getEmail", "email", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SettingsHelpAndFeedbackViewModel extends BaseViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<List<Uri>> pictureList = new MutableLiveData<>(new ArrayList());

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Integer> type = new MutableLiveData<>(0);

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<String> memo = new MutableLiveData<>("");

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<String> email = new MutableLiveData<>("");

    public final boolean checkEmail() {
        boolean contains$default;
        if (!StringKt.isNotBlank(this.email.getValue())) {
            return false;
        }
        String value = this.email.getValue();
        Intrinsics.checkNotNull(value);
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) value, (CharSequence) "@", false, 2, (Object) null);
        return contains$default;
    }

    public final boolean checkMemo() {
        return StringKt.isNotBlank(this.memo.getValue());
    }

    public final void cleanSubmitData() {
        this.pictureList.setValue(new ArrayList());
        this.type.setValue(0);
        this.memo.setValue("");
    }

    @NotNull
    public final MutableLiveData<String> getEmail() {
        return this.email;
    }

    @NotNull
    public final MutableLiveData<String> getMemo() {
        return this.memo;
    }

    @NotNull
    public final MutableLiveData<List<Uri>> getPictureList() {
        return this.pictureList;
    }

    @NotNull
    public final MutableLiveData<Integer> getType() {
        return this.type;
    }

    public final void removePicture(@NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        ArrayList arrayList = new ArrayList();
        List<Uri> value = this.pictureList.getValue();
        Intrinsics.checkNotNull(value);
        arrayList.addAll(value);
        arrayList.remove(uri);
        this.pictureList.setValue(arrayList);
    }

    @NotNull
    public final Observable<Boolean> submit(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Integer value = this.type.getValue();
        if (value == null) {
            value = 0;
        }
        int intValue = value.intValue();
        String value2 = this.memo.getValue();
        String str = value2 == null ? "" : value2;
        List<Uri> value3 = this.pictureList.getValue();
        if (value3 == null) {
            value3 = new ArrayList<>();
        }
        List<Uri> list = value3;
        String value4 = this.email.getValue();
        if (value4 == null) {
            value4 = "";
        }
        return new SubmitFeedbackAction(context, new SubmitFeedbackContext(intValue, str, list, value4, null, null, 48, null)).build();
    }
}
