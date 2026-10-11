package com.sunia.commonv2.provider;

import android.app.Application;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.sunia.commonv2.global.HWREngineVariable;
import com.sunia.commonv2.util.HWRCommonUtil;

/* loaded from: classes10.dex */
public class HWRProvider2 extends ContentProvider {
    private static final String TAG = "HWRProvider2";

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        HWREngineVariable.sHWRApplication = (Application) HWRCommonUtil.getApplicationContent(getContext());
        Log.i(TAG, "HWRProvider2 onCreate,HWREngineVariable.coreApplication=" + HWREngineVariable.sHWRApplication);
        Log.w(TAG, "HWREngineVariable.sEngineVersion=" + HWREngineVariable.sEngineVersion);
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
