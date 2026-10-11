package com.onegravity.rteditor.api;

import android.app.DialogFragment;
import android.content.Intent;
import android.widget.Toast;
import com.sunia.HTREnginev2.v6l;
import com.sunia.commonv2.global.HWREngineConstant;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u001c\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\u0010\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\u0012\u0010\u0011\u001a\u00020\u000b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u001a\u0010\u0014\u001a\u00020\u000b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\bH\u0016¨\u0006\u0018"}, m61528d2 = {"Lcom/onegravity/rteditor/api/DefaultProxyImpl;", "Lcom/onegravity/rteditor/api/RTProxy;", "()V", "makeText", "Landroid/widget/Toast;", "text", "", "duration", "", HWREngineConstant.Constant.RES_ID, "openDialogFragment", "", "fragmentTag", "", "fragment", "Landroid/app/DialogFragment;", "removeFragment", "runOnUiThread", "action", "Ljava/lang/Runnable;", "startActivityForResult", v6l.f87196g, "Landroid/content/Intent;", "requestCode", "sdk-rteditor_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DefaultProxyImpl implements RTProxy {
    @Override // com.onegravity.rteditor.api.RTProxy
    @Nullable
    public Toast makeText(int resId, int duration) {
        return null;
    }

    @Override // com.onegravity.rteditor.api.RTProxy
    public void openDialogFragment(@Nullable String fragmentTag, @Nullable DialogFragment fragment) {
    }

    @Override // com.onegravity.rteditor.api.RTProxy
    public void removeFragment(@Nullable String fragmentTag) {
    }

    @Override // com.onegravity.rteditor.api.RTProxy
    public void runOnUiThread(@Nullable Runnable action) {
    }

    @Override // com.onegravity.rteditor.api.RTProxy
    public void startActivityForResult(@Nullable Intent intent, int requestCode) {
    }

    @Override // com.onegravity.rteditor.api.RTProxy
    @Nullable
    public Toast makeText(@Nullable CharSequence text, int duration) {
        return null;
    }
}
