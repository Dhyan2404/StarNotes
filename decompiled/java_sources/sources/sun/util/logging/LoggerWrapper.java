package sun.util.logging;

import android.util.Log;
import java.backport.function.Supplier;
import java.util.ResourceBundle;
import sun.util.logging.NeoPlatformLogger;

/* loaded from: classes16.dex */
public class LoggerWrapper implements NeoPlatformLogger.Bridge {
    private String name;

    public LoggerWrapper(String str) {
        this.name = str;
    }

    private String getSource(String str, String str2) {
        return String.format("(%1s.%2s)", str, str2);
    }

    @Override // sun.util.logging.NeoPlatformLogger.Bridge
    public String getName() {
        return this.name;
    }

    @Override // sun.util.logging.NeoPlatformLogger.Bridge
    public boolean isEnabled() {
        return true;
    }

    @Override // sun.util.logging.NeoPlatformLogger.Bridge
    public boolean isLoggable(NeoPlatformLogger.Level level) {
        return level.intValue() < 8;
    }

    @Override // sun.util.logging.NeoPlatformLogger.Bridge
    public void log(NeoPlatformLogger.Level level, String str) {
        Log.println(level.intValue(), this.name, str);
    }

    @Override // sun.util.logging.NeoPlatformLogger.Bridge
    public void logp(NeoPlatformLogger.Level level, String str, String str2, String str3) {
        Log.println(level.intValue(), this.name, getSource(str, str2) + '\n' + str3);
    }

    @Override // sun.util.logging.NeoPlatformLogger.Bridge
    public void logrb(NeoPlatformLogger.Level level, String str, String str2, ResourceBundle resourceBundle, String str3, Object... objArr) {
        Log.println(level.intValue(), this.name, getSource(str, str2) + '\n' + String.format(str3, objArr));
    }

    @Override // sun.util.logging.NeoPlatformLogger.Bridge
    public void log(NeoPlatformLogger.Level level, String str, Throwable th) {
        Log.println(level.intValue(), this.name, str + '\n' + Log.getStackTraceString(th));
    }

    @Override // sun.util.logging.NeoPlatformLogger.Bridge
    public void logp(NeoPlatformLogger.Level level, String str, String str2, Supplier<String> supplier) {
        Log.println(level.intValue(), this.name, getSource(str, str2) + '\n' + supplier.get());
    }

    @Override // sun.util.logging.NeoPlatformLogger.Bridge
    public void logrb(NeoPlatformLogger.Level level, String str, String str2, ResourceBundle resourceBundle, String str3, Throwable th) {
        Log.println(level.intValue(), this.name, getSource(str, str2) + '\n' + str3 + '\n' + Log.getStackTraceString(th));
    }

    @Override // sun.util.logging.NeoPlatformLogger.Bridge
    public void log(NeoPlatformLogger.Level level, String str, Object... objArr) {
        Log.println(level.intValue(), this.name, String.format(str, objArr));
    }

    @Override // sun.util.logging.NeoPlatformLogger.Bridge
    public void logp(NeoPlatformLogger.Level level, String str, String str2, String str3, Object... objArr) {
        Log.println(level.intValue(), this.name, getSource(str, str2) + '\n' + String.format(str3, objArr));
    }

    @Override // sun.util.logging.NeoPlatformLogger.Bridge
    public void logrb(NeoPlatformLogger.Level level, ResourceBundle resourceBundle, String str, Object... objArr) {
        Log.println(level.intValue(), this.name, String.format(str, objArr));
    }

    @Override // sun.util.logging.NeoPlatformLogger.Bridge
    public void log(NeoPlatformLogger.Level level, Supplier<String> supplier) {
        Log.println(level.intValue(), this.name, supplier.get());
    }

    @Override // sun.util.logging.NeoPlatformLogger.Bridge
    public void logp(NeoPlatformLogger.Level level, String str, String str2, String str3, Throwable th) {
        Log.println(level.intValue(), this.name, getSource(str, str2) + '\n' + str3 + '\n' + Log.getStackTraceString(th));
    }

    @Override // sun.util.logging.NeoPlatformLogger.Bridge
    public void logrb(NeoPlatformLogger.Level level, ResourceBundle resourceBundle, String str, Throwable th) {
        Log.println(level.intValue(), this.name, str + '\n' + Log.getStackTraceString(th));
    }

    @Override // sun.util.logging.NeoPlatformLogger.Bridge
    public void log(NeoPlatformLogger.Level level, Throwable th, Supplier<String> supplier) {
        Log.println(level.intValue(), this.name, supplier.get());
    }

    @Override // sun.util.logging.NeoPlatformLogger.Bridge
    public void logp(NeoPlatformLogger.Level level, String str, String str2, Throwable th, Supplier<String> supplier) {
        Log.println(level.intValue(), this.name, getSource(str, str2) + '\n' + supplier.get() + '\n' + Log.getStackTraceString(th));
    }
}
