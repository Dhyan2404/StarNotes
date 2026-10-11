package com.onyx.galaxy.note.utils;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.webkit.WebView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ScreenUtils;
import com.onyx.android.sdk.base.extension.Activity;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.PackageUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.couchbase.utils.CouchDirUtils;
import com.onyx.android.sdk.data.utils.SecurityUtils;
import com.onyx.android.sdk.device.DeviceFactory;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u001e\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b<\u0010=J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0005\u0010\u0006J+\u0010\f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u0012\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\tH\u0000¢\u0006\u0004\b\u0010\u0010\u0011J-\u0010\f\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0013\u001a\u00020\u0004¢\u0006\u0004\b\f\u0010\u0014J\u0006\u0010\u0015\u001a\u00020\tJ\u000e\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0016J\u000e\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0019J\u0006\u0010\u001c\u001a\u00020\tJ\u0006\u0010\u001d\u001a\u00020\tJ\u0012\u0010\u001f\u001a\u00020\t2\b\u0010\u001e\u001a\u0004\u0018\u00010\tH\u0002R\u0017\u0010$\u001a\u00020 8\u0006¢\u0006\f\n\u0004\b\u001f\u0010!\u001a\u0004\b\"\u0010#R\u0014\u0010%\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010'\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b'\u0010&R\u0014\u0010(\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b(\u0010&R\u0014\u0010)\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b)\u0010&R\u0014\u0010*\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b*\u0010&R\u0014\u0010+\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b+\u0010&R\u0014\u0010,\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b,\u0010&R\u0014\u0010-\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b-\u0010&R\u0014\u0010.\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b.\u0010&R\u0014\u0010/\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b/\u0010&R\u0014\u00100\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b0\u0010&R\u0014\u00101\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b1\u0010&R\u0014\u00102\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b2\u0010&R\u0014\u00103\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b3\u0010&R\u0014\u00104\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b4\u0010&R(\u0010;\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:¨\u0006>"}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/LogcatGenerator;", "", "Landroid/content/Context;", "context", "Ljava/io/File;", "generateLogcatFile$note_overseasRelease", "(Landroid/content/Context;)Ljava/io/File;", "generateLogcatFile", "", "", "commandSet", "filePrefix", "generateExceptionFile", "(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;", RequestParameters.PREFIX, "suffix", "getFileNameBasedOnDate$note_overseasRelease", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "getFileNameBasedOnDate", "targetFile", "(Landroid/content/Context;[Ljava/lang/String;Ljava/io/File;)Ljava/io/File;", "generateLaunchLog", "Landroid/webkit/WebView;", "webView", "generateWebViewCrashLog", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "syncNoteModel", "generateDeletedNoteLog", "generateDeviceInfoLog", "logDeviceUserInfo", "title", "a", "Ljava/text/SimpleDateFormat;", "Ljava/text/SimpleDateFormat;", "getDATE_FORMAT_YYYY_MM_DD_HHMMSS", "()Ljava/text/SimpleDateFormat;", "DATE_FORMAT_YYYY_MM_DD_HHMMSS", "OUTPUT_FILE_LOGCAT_PREFIX", Constants.STRING_SIG, "COMMAND_LOGCAT", "COMMAND_LOGCAT_ALL", "COMMAND_CAT", "DIR_PROC", "VERSION", "PROGRAM_EXEC_CAT_LINUX_VERSION", "LOGCAT_GET_NOTE", "LOGCAT_FORMAT_SET", "TAG_FORMAT_TAG", "TAG_FORMAT_TIME", "TAG_FORMAT_THREAD_TIME", "OUTPUT_FILE_TXT_EXTENSION", "SEPARATOR_STAR", "PROGRAM_EXEC_LOGCAT_GET_NOTE", "b", "[Ljava/lang/String;", "getCommandLogcatSet", "()[Ljava/lang/String;", "setCommandLogcatSet", "([Ljava/lang/String;)V", "commandLogcatSet", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LogcatGenerator {

    @NotNull
    public static final String COMMAND_CAT = "/system/bin/cat ";

    @NotNull
    public static final String COMMAND_LOGCAT = "/system/bin/logcat -b system -b main ";

    @NotNull
    public static final String COMMAND_LOGCAT_ALL = "/system/bin/logcat -b system -b main -b crash -b events ";

    @NotNull
    public static final String DIR_PROC = "/proc/";

    @NotNull
    public static final String LOGCAT_FORMAT_SET = "-v ";

    @NotNull
    public static final String LOGCAT_GET_NOTE = "-d ";

    @NotNull
    public static final String OUTPUT_FILE_LOGCAT_PREFIX = "logcat_";

    @NotNull
    public static final String OUTPUT_FILE_TXT_EXTENSION = ".txt";

    @NotNull
    public static final String SEPARATOR_STAR = "\r\n***********************************\r\n\r\n";

    @NotNull
    public static final String TAG_FORMAT_TAG = "tag ";

    @NotNull
    public static final String TAG_FORMAT_THREAD_TIME = "threadtime ";

    @NotNull
    public static final String TAG_FORMAT_TIME = "time ";

    @NotNull
    public static final String VERSION = "version";

    @NotNull
    public static final LogcatGenerator INSTANCE = new LogcatGenerator();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_YYYY_MM_DD_HHMMSS = new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss", Locale.getDefault());

    @NotNull
    public static final String PROGRAM_EXEC_LOGCAT_GET_NOTE = "/system/bin/logcat -b system -b main -b crash -b events -d -v threadtime ";

    @NotNull
    public static final String PROGRAM_EXEC_CAT_LINUX_VERSION = "/system/bin/cat /proc/version";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static String[] commandLogcatSet = {PROGRAM_EXEC_LOGCAT_GET_NOTE, PROGRAM_EXEC_CAT_LINUX_VERSION};

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0029, code lost:
    
        r2 = kotlin.text.StringsKt___StringsKt.lastOrNull(r2);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m51976a(java.lang.String r3) {
        /*
            r2 = this;
            java.lang.String r2 = com.onyx.android.sdk.base.extension.StringKt.trim(r3)
            boolean r3 = com.onyx.android.sdk.base.extension.StringKt.isNotBlank(r2)
            if (r3 != 0) goto Ld
            java.lang.String r2 = ""
            return r2
        Ld:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r0 = "****"
            r3.<init>(r0)
            java.lang.Character r0 = kotlin.text.StringsKt.firstOrNull(r2)
            if (r0 == 0) goto L22
            char r0 = r0.charValue()
            r1 = 0
            r3.insert(r1, r0)
        L22:
            int r0 = r2.length()
            r1 = 1
            if (r0 <= r1) goto L36
            java.lang.Character r2 = kotlin.text.StringsKt.lastOrNull(r2)
            if (r2 == 0) goto L36
            char r2 = r2.charValue()
            r3.append(r2)
        L36:
            java.lang.String r2 = r3.toString()
            java.lang.String r3 = "toString(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.utils.LogcatGenerator.m51976a(java.lang.String):java.lang.String");
    }

    @NotNull
    public final String generateDeletedNoteLog(@NotNull SyncNoteModel syncNoteModel) {
        Intrinsics.checkNotNullParameter(syncNoteModel, "syncNoteModel");
        return "title:" + m51976a(syncNoteModel.getTitle()) + ";uniqueId:" + syncNoteModel.getUniqueId() + '}';
    }

    @NotNull
    public final String generateDeviceInfoLog() {
        return "deviceInfo device brand:" + Build.BRAND + " model:" + Build.MODEL + " screenXDpi:" + ScreenUtils.getScreenXDpi() + " screenYDpi:" + ScreenUtils.getScreenYDpi() + " screenDensityDpi:" + ScreenUtils.getScreenDensityDpi() + " screenDensity:" + ScreenUtils.getScreenDensity() + " screenWidth:" + ScreenUtils.getScreenWidth() + " screenHeight:" + ScreenUtils.getScreenHeight();
    }

    @NotNull
    public final File generateExceptionFile(@NotNull Context context, @NotNull String[] commandSet, @NotNull String filePrefix) throws IOException {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(commandSet, "commandSet");
        Intrinsics.checkNotNullParameter(filePrefix, "filePrefix");
        File externalFilesDir = ResManager.INSTANCE.getAppContext().getExternalFilesDir("log");
        Intrinsics.checkNotNull(externalFilesDir);
        return generateExceptionFile(context, commandSet, new File(externalFilesDir, getFileNameBasedOnDate$note_overseasRelease(filePrefix, OUTPUT_FILE_TXT_EXTENSION)));
    }

    @NotNull
    public final String generateLaunchLog() {
        return "time=" + DateTimeUtil.INSTANCE.getCurrentTime() + " device=" + SecurityUtils.INSTANCE.getAndroidId() + " version=" + PackageUtils.INSTANCE.getAppVersionNameAndCode() + " git=" + ContextKt.getMetaData$default(ResManager.INSTANCE.getAppContext(), Constant.DEV_VERSION_TAG, null, 2, null);
    }

    @NotNull
    public final File generateLogcatFile$note_overseasRelease(@NotNull Context context) throws IOException {
        Intrinsics.checkNotNullParameter(context, "context");
        return generateExceptionFile(context, commandLogcatSet, OUTPUT_FILE_LOGCAT_PREFIX);
    }

    @NotNull
    public final String generateWebViewCrashLog(@NotNull WebView webView) {
        Intrinsics.checkNotNullParameter(webView, "webView");
        String currentTime = DateTimeUtil.INSTANCE.getCurrentTime();
        String simpleName = webView.getContext().getClass().getSimpleName();
        String simpleName2 = Activity.INSTANCE.getFrontActivity().getClass().getSimpleName();
        String userAgentString = webView.getSettings().getUserAgentString();
        String url = webView.getUrl();
        if (url == null) {
            url = "";
        }
        return "time=" + currentTime + " context=" + simpleName + " activity=" + simpleName2 + " kernel=" + userAgentString + " url=" + url;
    }

    @NotNull
    public final String[] getCommandLogcatSet() {
        return commandLogcatSet;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_YYYY_MM_DD_HHMMSS() {
        return DATE_FORMAT_YYYY_MM_DD_HHMMSS;
    }

    @NotNull
    public final String getFileNameBasedOnDate$note_overseasRelease(@NotNull String prefix, @NotNull String suffix) {
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        return prefix + DATE_FORMAT_YYYY_MM_DD_HHMMSS.format(new Date()) + suffix;
    }

    @NotNull
    public final String logDeviceUserInfo() {
        try {
            Paths paths = Paths.INSTANCE;
            File[] listFiles = paths.asFile(paths.toPath(CouchDirUtils.INSTANCE.getCouchDirPath())).listFiles();
            String joinToString$default = listFiles != null ? ArraysKt___ArraysKt.joinToString$default(listFiles, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, LogcatGenerator$logDeviceUserInfo$userIds$1.INSTANCE, 31, (Object) null) : null;
            String syncUserId = AccountDataBundle.INSTANCE.getSyncUserId();
            String str = "device(" + DeviceFactory.INSTANCE.getCurrentDevice().getSystem() + ") user Ids:" + joinToString$default + ",currentUserId:" + syncUserId;
            LogUtils.wTag("UserLog", str);
            return str;
        } catch (Exception unused) {
            return "";
        }
    }

    public final void setCommandLogcatSet(@NotNull String[] strArr) {
        Intrinsics.checkNotNullParameter(strArr, "<set-?>");
        commandLogcatSet = strArr;
    }

    @NotNull
    public final File generateExceptionFile(@Nullable Context context, @NotNull String[] commandSet, @NotNull File targetFile) throws IOException {
        Intrinsics.checkNotNullParameter(commandSet, "commandSet");
        Intrinsics.checkNotNullParameter(targetFile, "targetFile");
        for (String str : commandSet) {
            ShellUtils.INSTANCE.execCommand(str + " >> " + targetFile.getAbsolutePath(), false, true);
            FileUtils.INSTANCE.appendContentToFile(SEPARATOR_STAR, targetFile);
        }
        Log.i("success:" + targetFile.getName(), "" + targetFile.length());
        return targetFile;
    }
}
