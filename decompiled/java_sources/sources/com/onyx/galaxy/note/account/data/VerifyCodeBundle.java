package com.onyx.galaxy.note.account.data;

import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.config.cloudnote.SupportAppName;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.model.VerifyCodeModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b%\u0010&J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J \u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\f\u001a\u00020\u0004J\u0006\u0010\r\u001a\u00020\tJ\u0006\u0010\u000e\u001a\u00020\tR\u001a\u0010\u0013\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0016\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b\u0014\u0010\u0010\u001a\u0004\b\u0015\u0010\u0012R\u001a\u0010\u0019\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b\u0017\u0010\u0010\u001a\u0004\b\u0018\u0010\u0012R\u0017\u0010\u001f\u001a\u00020\u001a8\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR \u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020!0 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006'"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;", "", "", "key", "", "getLeftTime", "countDownInSecond", "", "forceAdd", "", "addTimer", "release", "getWechatRefreshTime", "startWechatTimer", "releaseWechatTimer", "a", Constants.STRING_SIG, "getKEY_WECHAT", "()Ljava/lang/String;", "KEY_WECHAT", "b", "getKEY_PHONE_VERIFY", "KEY_PHONE_VERIFY", "c", "getKEY_EMAIL_VERIFY", "KEY_EMAIL_VERIFY", "Lorg/greenrobot/eventbus/EventBus;", "d", "Lorg/greenrobot/eventbus/EventBus;", "getEventBus", "()Lorg/greenrobot/eventbus/EventBus;", "eventBus", "", "Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;", "e", "Ljava/util/Map;", "modelMap", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class VerifyCodeBundle {

    @NotNull
    public static final VerifyCodeBundle INSTANCE = new VerifyCodeBundle();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String KEY_WECHAT = SupportAppName.WECHAT;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final String KEY_PHONE_VERIFY = "phone_verify";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final String KEY_EMAIL_VERIFY = "email_verify";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final EventBus eventBus = new EventBus();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static final Map<String, VerifyCodeModel> modelMap = new LinkedHashMap();

    public static /* synthetic */ void addTimer$default(VerifyCodeBundle verifyCodeBundle, String str, long j, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        verifyCodeBundle.addTimer(str, j, z);
    }

    public final void addTimer(@NotNull String key, long countDownInSecond, boolean forceAdd) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (forceAdd || !modelMap.containsKey(key)) {
            release(key);
            modelMap.put(key, new VerifyCodeModel(key, countDownInSecond));
        }
    }

    @NotNull
    public final EventBus getEventBus() {
        return eventBus;
    }

    @NotNull
    public final String getKEY_EMAIL_VERIFY() {
        return KEY_EMAIL_VERIFY;
    }

    @NotNull
    public final String getKEY_PHONE_VERIFY() {
        return KEY_PHONE_VERIFY;
    }

    @NotNull
    public final String getKEY_WECHAT() {
        return KEY_WECHAT;
    }

    public final long getLeftTime(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Map<String, VerifyCodeModel> map = modelMap;
        if (!map.containsKey(key)) {
            return 0L;
        }
        VerifyCodeModel verifyCodeModel = map.get(key);
        Intrinsics.checkNotNull(verifyCodeModel);
        return verifyCodeModel.getLeftTime();
    }

    public final long getWechatRefreshTime() {
        return ResManager.INSTANCE.getLong(C10651R.integer.user_wechat_invalidate_time);
    }

    public final void release(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Map<String, VerifyCodeModel> map = modelMap;
        if (map.containsKey(key)) {
            VerifyCodeModel verifyCodeModel = map.get(key);
            Intrinsics.checkNotNull(verifyCodeModel);
            verifyCodeModel.release();
            map.remove(key);
        }
    }

    public final void releaseWechatTimer() {
        release(KEY_WECHAT);
    }

    public final void startWechatTimer() {
        addTimer$default(this, KEY_WECHAT, getWechatRefreshTime(), false, 4, null);
    }
}
