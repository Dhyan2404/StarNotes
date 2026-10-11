package com.onyx.galaxy.note.account.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u001d\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/viewmodel/LoginLoadingDialogViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "", "text", "", "updateTitle", "Landroidx/lifecycle/MutableLiveData;", "i", "Landroidx/lifecycle/MutableLiveData;", "getHintText", "()Landroidx/lifecycle/MutableLiveData;", "hintText", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LoginLoadingDialogViewModel extends BaseViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<String> hintText = new MutableLiveData<>(ResManager.INSTANCE.getString(C10651R.string.logging));

    @NotNull
    public final MutableLiveData<String> getHintText() {
        return this.hintText;
    }

    public final void updateTitle(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        this.hintText.setValue(text);
    }
}
