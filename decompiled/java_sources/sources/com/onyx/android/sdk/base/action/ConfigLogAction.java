package com.onyx.android.sdk.base.action;

import com.blankj.utilcode.util.LogUtils;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\fB\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/base/action/ConfigLogAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;", "e", "Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;", Constants.ELEMNAME_PARAMVARIABLE_STRING, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;)V", "ConfigLogParams", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class ConfigLogAction extends RxBaseAction<ConfigLogAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final ConfigLogParams param;

    /* renamed from: com.onyx.android.sdk.base.action.ConfigLogAction$a */
    /* loaded from: classes7.dex */
    public static final class C7107a<T> implements Consumer {
        public C7107a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ConfigLogAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ConfigLogAction.this.m31870l();
        }
    }

    public ConfigLogAction(@NotNull ConfigLogParams param) {
        Intrinsics.checkNotNullParameter(param, "param");
        this.param = param;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ConfigLogAction> create() {
        Observable<ConfigLogAction> doOnNext = Observable.just(this).observeOn(getMainUIScheduler()).doOnNext(new C7107a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: l */
    public final void m31870l() {
        LogUtils.Config config = LogUtils.getConfig();
        config.setConsoleSwitch(this.param.getEnableLogcat());
        config.setConsoleFilter(this.param.getLogcatFilterLevel());
        config.setDir(this.param.getDir());
        config.setSaveDays(this.param.getFileSaveDay());
        config.setLog2FileSwitch(this.param.getEnableSave2File());
        config.setFileFilter(this.param.getFileFilterLevel());
    }

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u000e\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\b\u0012\b\b\u0002\u0010\u0010\u001a\u00020\b\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0011¢\u0006\u0004\b\u001d\u0010\u001eR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0010\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\n\u001a\u0004\b\u000f\u0010\fR\u0017\u0010\u0016\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0019\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0013\u001a\u0004\b\u0018\u0010\u0015R\u0017\u0010\u001c\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u0013\u001a\u0004\b\u001b\u0010\u0015¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;", "", "Ljava/io/File;", "a", "Ljava/io/File;", "getDir", "()Ljava/io/File;", CouchFieldKey.KEY_DIR, "", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getEnableLogcat", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "enableLogcat", "c", "getEnableSave2File", "enableSave2File", "", "d", "I", "getFileSaveDay", "()I", "fileSaveDay", "e", "getLogcatFilterLevel", "logcatFilterLevel", C6997f.f39671c, "getFileFilterLevel", "fileFilterLevel", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/io/File;ZZIII)V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes7.dex */
    public static final class ConfigLogParams {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final File dir;

        /* renamed from: b, reason: from kotlin metadata */
        public final boolean enableLogcat;

        /* renamed from: c, reason: from kotlin metadata */
        public final boolean enableSave2File;

        /* renamed from: d, reason: from kotlin metadata */
        public final int fileSaveDay;

        /* renamed from: e, reason: from kotlin metadata */
        public final int logcatFilterLevel;

        /* renamed from: f, reason: from kotlin metadata */
        public final int fileFilterLevel;

        public ConfigLogParams(@NotNull File dir, boolean z, boolean z2, int i, int i2, int i3) {
            Intrinsics.checkNotNullParameter(dir, "dir");
            this.dir = dir;
            this.enableLogcat = z;
            this.enableSave2File = z2;
            this.fileSaveDay = i;
            this.logcatFilterLevel = i2;
            this.fileFilterLevel = i3;
        }

        @NotNull
        public final File getDir() {
            return this.dir;
        }

        public final boolean getEnableLogcat() {
            return this.enableLogcat;
        }

        public final boolean getEnableSave2File() {
            return this.enableSave2File;
        }

        public final int getFileFilterLevel() {
            return this.fileFilterLevel;
        }

        public final int getFileSaveDay() {
            return this.fileSaveDay;
        }

        public final int getLogcatFilterLevel() {
            return this.logcatFilterLevel;
        }

        public /* synthetic */ ConfigLogParams(File file, boolean z, boolean z2, int i, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this(file, (i4 & 2) != 0 ? true : z, (i4 & 4) == 0 ? z2 : true, (i4 & 8) != 0 ? 7 : i, (i4 & 16) != 0 ? 2 : i2, (i4 & 32) != 0 ? 3 : i3);
        }
    }
}
