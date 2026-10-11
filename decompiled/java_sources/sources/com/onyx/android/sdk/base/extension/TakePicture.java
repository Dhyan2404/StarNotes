package com.onyx.android.sdk.base.extension;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.annotation.CallSuper;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.v6l;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\b\u0016\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0017J\u001a\u0010\u000b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\b2\b\u0010\n\u001a\u0004\u0018\u00010\u0003H\u0016R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/base/extension/TakePicture;", "Landroidx/activity/result/contract/ActivityResultContract;", "Landroid/net/Uri;", "Landroid/content/Intent;", "Landroid/content/Context;", "context", "input", "createIntent", "", "resultCode", v6l.f87196g, "parseResult", "a", "Landroid/net/Uri;", "uri", Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public class TakePicture extends ActivityResultContract<Uri, Intent> {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public Uri uri;

    @Override // androidx.activity.result.contract.ActivityResultContract
    @CallSuper
    @NotNull
    public Intent createIntent(@NotNull Context context, @NotNull Uri input) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(input, "input");
        this.uri = input;
        Intent putExtra = new Intent("android.media.action.IMAGE_CAPTURE").putExtra(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_OUTPUT_STRING, input);
        Intrinsics.checkNotNullExpressionValue(putExtra, "putExtra(...)");
        return putExtra;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.activity.result.contract.ActivityResultContract
    @NotNull
    public Intent parseResult(int resultCode, @Nullable Intent intent) {
        if (resultCode != -1) {
            return new Intent();
        }
        if (intent == null) {
            intent = new Intent();
        }
        intent.setData(this.uri);
        return intent;
    }
}
