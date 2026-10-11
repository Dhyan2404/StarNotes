package com.onyx.android.sdk.base.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Debug;
import android.os.Process;
import androidx.appcompat.widget.ActivityChooserModel;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b \u0010!J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u000e\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\u0007\u001a\u00020\u0002J\u0006\u0010\t\u001a\u00020\bJ\u0006\u0010\u000b\u001a\u00020\nJ\u0006\u0010\f\u001a\u00020\bJ\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000fJ\u000e\u0010\u000b\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u000fJ\u0018\u0010\u0016\u001a\u00020\u00022\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0015\u001a\u00020\u0013J\u000e\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000fJ\u000e\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000fJ\u000e\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0010\u001a\u00020\u000fJ\b\u0010\u001b\u001a\u00020\u0002H\u0002R\u0014\u0010\u001d\u001a\u00020\u001c8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\u00020\u001c8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001f\u0010\u001e¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/MemoryUtils;", "", "", "printMemoryInfo", "printJavaMemoryInfo", "Ljava/lang/Runtime;", "r", "printSimpleJavaMemoryInfo", "", "getNativeHeapAllocatedSize", "Landroid/os/Debug$MemoryInfo;", "getMemoryInfo", "getTraceMemory", "", "getTraceMemoryRatio", "Landroid/content/Context;", "context", "getTotalMemory", "Landroid/app/ActivityManager$MemoryInfo;", "", RequestParameters.PREFIX, ExtensionNamespaceContext.EXSLT_STRING_PREFIX, "printStringMemoryInfo", "getApplicationName", "getCurrentProcessName", "Landroid/app/ActivityManager;", "getActivityManager", "a", "", "MB", "I", "KB", Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMemoryUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemoryUtils.kt\ncom/onyx/android/sdk/base/utils/MemoryUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,153:1\n731#2,9:154\n37#3,2:163\n*S KotlinDebug\n*F\n+ 1 MemoryUtils.kt\ncom/onyx/android/sdk/base/utils/MemoryUtils\n*L\n108#1:154,9\n109#1:163,2\n*E\n"})
/* loaded from: classes7.dex */
public final class MemoryUtils {

    @NotNull
    public static final MemoryUtils INSTANCE = new MemoryUtils();
    public static final int KB = 1024;
    public static final int MB = 1048576;

    /* renamed from: a */
    public final void m32106a() {
        Object systemService = ResManager.INSTANCE.getAppContext().getSystemService(ActivityChooserModel.f1429r);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) systemService).getMemoryInfo(memoryInfo);
        Debug debug = Debug.INSTANCE;
        debug.m32059w(MemoryUtils.class, "------ start print system memory info ------", new Object[0]);
        StringBuilder sb = new StringBuilder();
        sb.append("system.memory.availMem: ");
        long j = 1048576;
        sb.append(memoryInfo.availMem / j);
        sb.append('M');
        debug.m32059w(MemoryUtils.class, sb.toString(), new Object[0]);
        debug.m32059w(MemoryUtils.class, "system.memory.lowMemory: " + memoryInfo.lowMemory, new Object[0]);
        debug.m32059w(MemoryUtils.class, "system.memory.threshold: " + (memoryInfo.threshold / j) + 'M', new Object[0]);
        debug.m32059w(MemoryUtils.class, "system.memory.totalMem: " + (memoryInfo.totalMem / j) + 'M', new Object[0]);
        debug.m32059w(MemoryUtils.class, "------ end print system memory info ------", new Object[0]);
    }

    @NotNull
    public final ActivityManager getActivityManager(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService(ActivityChooserModel.f1429r);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        return (ActivityManager) systemService;
    }

    @NotNull
    public final String getApplicationName(@NotNull Context context) throws PackageManager.NameNotFoundException {
        Intrinsics.checkNotNullParameter(context, "context");
        PackageManager packageManager = context.getPackageManager();
        ApplicationInfo applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 0);
        Intrinsics.checkNotNullExpressionValue(applicationInfo, "getApplicationInfo(...)");
        return packageManager.getApplicationLabel(applicationInfo).toString();
    }

    @NotNull
    public final String getCurrentProcessName(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        int myPid = Process.myPid();
        Object systemService = context.getApplicationContext().getSystemService(ActivityChooserModel.f1429r);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        String processName = "";
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) systemService).getRunningAppProcesses()) {
            if (runningAppProcessInfo.pid == myPid) {
                processName = runningAppProcessInfo.processName;
                Intrinsics.checkNotNullExpressionValue(processName, "processName");
            }
        }
        return processName;
    }

    @NotNull
    public final Debug.MemoryInfo getMemoryInfo() {
        Debug.MemoryInfo memoryInfo = new Debug.MemoryInfo();
        android.os.Debug.getMemoryInfo(memoryInfo);
        return memoryInfo;
    }

    public final long getNativeHeapAllocatedSize() {
        return android.os.Debug.getNativeHeapAllocatedSize();
    }

    public final long getTotalMemory(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return getMemoryInfo(context).totalMem;
    }

    public final long getTraceMemory() {
        Runtime runtime = Runtime.getRuntime();
        return runtime.maxMemory() - (runtime.totalMemory() - runtime.freeMemory());
    }

    public final float getTraceMemoryRatio() {
        return ((float) getTraceMemory()) / ((float) Runtime.getRuntime().maxMemory());
    }

    public final void printJavaMemoryInfo() throws PackageManager.NameNotFoundException {
        Runtime runtime = Runtime.getRuntime();
        Intrinsics.checkNotNullExpressionValue(runtime, "getRuntime(...)");
        printJavaMemoryInfo(runtime);
    }

    public final void printMemoryInfo() {
        Runtime runtime = Runtime.getRuntime();
        try {
            Debug debug = Debug.INSTANCE;
            debug.m32059w(MemoryUtils.class, "--- start print memory info ---", new Object[0]);
            m32106a();
            Intrinsics.checkNotNull(runtime);
            printJavaMemoryInfo(runtime);
            debug.m32059w(MemoryUtils.class, "getNativeHeapAllocatedSize: " + (android.os.Debug.getNativeHeapAllocatedSize() / 1048576) + 'M', new Object[0]);
            Map<String, String> runtimeStats = android.os.Debug.getRuntimeStats();
            Intrinsics.checkNotNullExpressionValue(runtimeStats, "getRuntimeStats(...)");
            for (Map.Entry<String, String> entry : runtimeStats.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                Debug.INSTANCE.m32059w(MemoryUtils.class, key + ": " + value, new Object[0]);
            }
            Map<String, String> memoryStats = getMemoryInfo().getMemoryStats();
            Intrinsics.checkNotNull(memoryStats);
            for (Map.Entry<String, String> entry2 : memoryStats.entrySet()) {
                String key2 = entry2.getKey();
                String value2 = entry2.getValue();
                Debug.INSTANCE.m32059w(MemoryUtils.class, key2 + ": " + value2 + 'K', new Object[0]);
            }
            Debug.INSTANCE.m32059w(MemoryUtils.class, "--- end print memory info ---", new Object[0]);
        } catch (Throwable th) {
            Debug.INSTANCE.m32048e(th);
        }
    }

    public final void printSimpleJavaMemoryInfo() {
        Runtime runtime = Runtime.getRuntime();
        Debug debug = Debug.INSTANCE;
        StringBuilder sb = new StringBuilder();
        sb.append("Java Maximum available memory:");
        long j = 1048576;
        sb.append(runtime.maxMemory() / j);
        sb.append('M');
        debug.m32059w(MemoryUtils.class, sb.toString(), new Object[0]);
        debug.m32059w(MemoryUtils.class, "Java Remaining available memory: " + (getTraceMemory() / j) + 'M', new Object[0]);
    }

    public final void printStringMemoryInfo(@Nullable String prefix, @NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "str");
        int length = str.length();
        Debug.INSTANCE.m32059w(MemoryUtils.class, "%s charArrayLength=%s charArrayMem=%sB", prefix, Integer.valueOf(length), Long.valueOf(length * 2));
    }

    public final void printJavaMemoryInfo(@NotNull Runtime r) throws PackageManager.NameNotFoundException {
        Intrinsics.checkNotNullParameter(r, "r");
        Debug debug = Debug.INSTANCE;
        StringBuilder sb = new StringBuilder();
        sb.append("app: ");
        ResManager resManager = ResManager.INSTANCE;
        sb.append(getApplicationName(resManager.getAppContext()));
        debug.m32059w(MemoryUtils.class, sb.toString(), new Object[0]);
        debug.m32059w(MemoryUtils.class, "process: " + getCurrentProcessName(resManager.getAppContext()), new Object[0]);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Java Maximum available memory:");
        long j = (long) 1048576;
        sb2.append(r.maxMemory() / j);
        sb2.append('M');
        debug.m32059w(MemoryUtils.class, sb2.toString(), new Object[0]);
        debug.m32059w(MemoryUtils.class, "Java Current available memory:" + (r.totalMemory() / j) + 'M', new Object[0]);
        debug.m32059w(MemoryUtils.class, "Java Current free memory:" + (r.freeMemory() / j) + 'M', new Object[0]);
        debug.m32059w(MemoryUtils.class, "Java Currently used memory:" + ((r.totalMemory() - r.freeMemory()) / j) + 'M', new Object[0]);
        debug.m32059w(MemoryUtils.class, "Java Remaining available memory: " + (getTraceMemory() / j) + 'M', new Object[0]);
        debug.m32059w(MemoryUtils.class, "Java Ratio of remaining free memory: " + (getTraceMemoryRatio() * ((float) 100)) + '%', new Object[0]);
    }

    @NotNull
    public final ActivityManager.MemoryInfo getMemoryInfo(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        getActivityManager(context).getMemoryInfo(memoryInfo);
        return memoryInfo;
    }
}
