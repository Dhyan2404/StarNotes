package com.sunia.HTREnginev2;

import android.util.Log;
import xcrash.ILogger;

/* loaded from: classes16.dex */
public class tze implements ILogger {
    @Override // xcrash.ILogger
    /* renamed from: d */
    public void mo57485d(String str, String str2) {
        Log.d(str, str2);
    }

    @Override // xcrash.ILogger
    /* renamed from: e */
    public void mo57487e(String str, String str2) {
        Log.e(str, str2);
    }

    @Override // xcrash.ILogger
    /* renamed from: i */
    public void mo57489i(String str, String str2) {
        Log.i(str, str2);
    }

    @Override // xcrash.ILogger
    /* renamed from: v */
    public void mo57491v(String str, String str2) {
        Log.v(str, str2);
    }

    @Override // xcrash.ILogger
    /* renamed from: w */
    public void mo57493w(String str, String str2) {
        Log.w(str, str2);
    }

    @Override // xcrash.ILogger
    /* renamed from: d */
    public void mo57486d(String str, String str2, Throwable th) {
        Log.d(str, str2, th);
    }

    @Override // xcrash.ILogger
    /* renamed from: e */
    public void mo57488e(String str, String str2, Throwable th) {
        Log.e(str, str2, th);
    }

    @Override // xcrash.ILogger
    /* renamed from: i */
    public void mo57490i(String str, String str2, Throwable th) {
        Log.i(str, str2, th);
    }

    @Override // xcrash.ILogger
    /* renamed from: v */
    public void mo57492v(String str, String str2, Throwable th) {
        Log.v(str, str2, th);
    }

    @Override // xcrash.ILogger
    /* renamed from: w */
    public void mo57494w(String str, String str2, Throwable th) {
        Log.w(str, str2, th);
    }
}
