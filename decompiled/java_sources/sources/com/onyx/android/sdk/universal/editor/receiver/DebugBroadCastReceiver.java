package com.onyx.android.sdk.universal.editor.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.replicator.note.proto.p036pb.ShapePBData;
import com.onyx.android.sdk.universal.editor.action.DebugAction;
import com.onyx.android.sdk.universal.editor.action.p126import.ImportFromNoteFileAction;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.v6l;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u001c\u0010\b\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\u0011\u001a\u00020\u0004H\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0014¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/receiver/DebugBroadCastReceiver;", "Landroid/content/BroadcastReceiver;", "Landroid/content/Context;", "context", "", "register", "Landroid/content/Intent;", v6l.f87196g, "onReceive", C6998g.f39679a, "c", "b", "a", "", "e", "", C6997f.f39671c, "d", C6999h.f39688c, "Landroid/content/IntentFilter;", "Landroid/content/IntentFilter;", "intentFilter", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DebugBroadCastReceiver extends BroadcastReceiver {

    @NotNull
    public static final String ACTION_CONFIG_DISTINCT_DRAFT_PAGE = "com.onyx.android.sdk.universal.config.distinctDraftPage";

    @NotNull
    public static final String ACTION_CONFIG_IMPORT_REMOVED_SHAPE = "com.onyx.android.sdk.universal.config.importRemovedShape";

    @NotNull
    public static final String ACTION_CONFIG_IMPORT_STASH_SHAPE = "com.onyx.android.sdk.universal.config.importStashShape";

    @NotNull
    public static final String ACTION_DEBUG = "com.onyx.android.sdk.universal.debug";

    @NotNull
    public static final String ACTION_TEST_CRASH = "com.onyx.android.sdk.universal.test.crash";

    @NotNull
    public static final String ACTION_TEST_LOCALIZATION = "com.onyx.android.sdk.universal.test.localization";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final IntentFilter intentFilter;

    public DebugBroadCastReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ACTION_DEBUG);
        intentFilter.addAction(ACTION_CONFIG_IMPORT_STASH_SHAPE);
        intentFilter.addAction(ACTION_CONFIG_IMPORT_REMOVED_SHAPE);
        intentFilter.addAction(ACTION_CONFIG_DISTINCT_DRAFT_PAGE);
        intentFilter.addAction(ACTION_TEST_CRASH);
        intentFilter.addAction(ACTION_TEST_LOCALIZATION);
        this.intentFilter = intentFilter;
    }

    /* renamed from: a */
    public final void m41391a(Intent intent) {
        AppConfig.INSTANCE.setEnabledDistinctDraftPage(m41395e(intent));
    }

    /* renamed from: b */
    public final void m41392b(Intent intent) {
        ShapePBData.INSTANCE.setIMPORT_DELETED_SHAPE(m41395e(intent));
    }

    /* renamed from: c */
    public final void m41393c(Intent intent) {
        ImportFromNoteFileAction.INSTANCE.setIMPORT_STASH_SHAPE(m41395e(intent));
    }

    /* renamed from: d */
    public final void m41394d() {
        ((Integer) "crash").intValue();
    }

    /* renamed from: e */
    public final boolean m41395e(Intent intent) {
        return intent.getBooleanExtra("args", true);
    }

    /* renamed from: f */
    public final String m41396f(Intent intent) {
        return intent.getStringExtra("args");
    }

    /* renamed from: g */
    public final void m41397g(Intent intent) {
        RxBaseAction.execute$default(new DebugAction(true), null, null, null, 7, null);
    }

    /* renamed from: h */
    public final void m41398h(Intent intent) {
        String m41396f = m41396f(intent);
        if (m41396f == null) {
            return;
        }
        String stringSafely = ResManager.INSTANCE.getStringSafely(m41396f);
        if (StringKt.isNotBlank(stringSafely)) {
            ToastUtils.INSTANCE.show((CharSequence) stringSafely, true);
            return;
        }
        ToastUtils.INSTANCE.show((CharSequence) ("not found string localization resource of: " + m41396f), true);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(@Nullable Context context, @Nullable Intent intent) {
        if (context == null || intent == null) {
            return;
        }
        String action = intent.getAction();
        Debug.INSTANCE.m32035d(DebugBroadCastReceiver.class, "action == " + action + ", intent = " + intent, new Object[0]);
        if (action != null) {
            switch (action.hashCode()) {
                case -504358879:
                    if (action.equals(ACTION_CONFIG_DISTINCT_DRAFT_PAGE)) {
                        m41391a(intent);
                        return;
                    }
                    return;
                case -264336732:
                    if (action.equals(ACTION_TEST_CRASH)) {
                        m41394d();
                        return;
                    }
                    return;
                case -207026919:
                    if (action.equals(ACTION_CONFIG_IMPORT_REMOVED_SHAPE)) {
                        m41392b(intent);
                        return;
                    }
                    return;
                case 108411132:
                    if (action.equals(ACTION_TEST_LOCALIZATION)) {
                        m41398h(intent);
                        return;
                    }
                    return;
                case 595311652:
                    if (action.equals(ACTION_CONFIG_IMPORT_STASH_SHAPE)) {
                        m41393c(intent);
                        return;
                    }
                    return;
                case 2086729562:
                    if (action.equals(ACTION_DEBUG)) {
                        m41397g(intent);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public final void register(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        ContextKt.registerReceiverCompat(context, this, this.intentFilter);
    }
}
