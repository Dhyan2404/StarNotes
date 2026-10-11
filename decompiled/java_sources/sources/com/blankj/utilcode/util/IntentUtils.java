package com.blankj.utilcode.util;

import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import androidx.core.content.FileProvider;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes3.dex */
public final class IntentUtils {
    public IntentUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: a */
    public static Intent m8111a(Intent intent, boolean z) {
        return z ? intent.addFlags(268435456) : intent;
    }

    @RequiresPermission("android.permission.CALL_PHONE")
    public static Intent getCallIntent(@NonNull String str) {
        return m8111a(new Intent("android.intent.action.CALL", Uri.parse(PhoneNumberUtil.f36458v + Uri.encode(str))), true);
    }

    public static Intent getCaptureIntent(Uri uri) {
        return getCaptureIntent(uri, false);
    }

    public static Intent getComponentIntent(String str, String str2) {
        return getComponentIntent(str, str2, null, false);
    }

    public static Intent getDialIntent(@NonNull String str) {
        return m8111a(new Intent("android.intent.action.DIAL", Uri.parse(PhoneNumberUtil.f36458v + Uri.encode(str))), true);
    }

    public static Intent getInstallAppIntent(String str) {
        return getInstallAppIntent(C1887b.m8461P(str));
    }

    public static Intent getLaunchAppDetailsSettingsIntent(String str) {
        return getLaunchAppDetailsSettingsIntent(str, false);
    }

    public static Intent getLaunchAppIntent(String str) {
        String m8481Z = C1887b.m8481Z(str);
        if (C1887b.m8438D0(m8481Z)) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setClassName(str, m8481Z);
        return intent.addFlags(268435456);
    }

    public static Intent getSendSmsIntent(@NonNull String str, String str2) {
        Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse("smsto:" + Uri.encode(str)));
        intent.putExtra("sms_body", str2);
        return m8111a(intent, true);
    }

    public static Intent getShareImageIntent(String str) {
        return getShareTextImageIntent("", str);
    }

    public static Intent getShareTextImageIntent(@Nullable String str, String str2) {
        return getShareTextImageIntent(str, C1887b.m8461P(str2));
    }

    public static Intent getShareTextIntent(String str) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", str);
        return m8111a(Intent.createChooser(intent, ""), true);
    }

    public static Intent getShutdownIntent() {
        Intent intent = new Intent("com.android.internal.intent.action.REQUEST_SHUTDOWN");
        intent.putExtra("android.intent.extra.KEY_CONFIRM", false);
        return intent.addFlags(268435456);
    }

    public static Intent getUninstallAppIntent(String str) {
        Intent intent = new Intent("android.intent.action.DELETE");
        intent.setData(Uri.parse("package:" + str));
        return intent.addFlags(268435456);
    }

    public static boolean isIntentAvailable(Intent intent) {
        return Utils.getApp().getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }

    public static Intent getCaptureIntent(Uri uri, boolean z) {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        intent.putExtra(Constants.ELEMNAME_OUTPUT_STRING, uri);
        intent.addFlags(1);
        return m8111a(intent, z);
    }

    public static Intent getComponentIntent(String str, String str2, boolean z) {
        return getComponentIntent(str, str2, null, z);
    }

    public static Intent getInstallAppIntent(File file) {
        if (!C1887b.m8534u0(file)) {
            return null;
        }
        return getInstallAppIntent(FileProvider.getUriForFile(Utils.getApp(), Utils.getApp().getPackageName() + ".utilcode.fileprovider", file));
    }

    public static Intent getLaunchAppDetailsSettingsIntent(String str, boolean z) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.parse("package:" + str));
        return m8111a(intent, z);
    }

    public static Intent getShareImageIntent(File file) {
        return getShareTextImageIntent("", file);
    }

    public static Intent getShareTextImageIntent(@Nullable String str, File file) {
        return getShareTextImageIntent(str, C1887b.m8435C(file));
    }

    public static Intent getComponentIntent(String str, String str2, Bundle bundle) {
        return getComponentIntent(str, str2, bundle, false);
    }

    public static Intent getShareImageIntent(Uri uri) {
        return getShareTextImageIntent("", uri);
    }

    public static Intent getShareTextImageIntent(@Nullable String str, Uri uri) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", str);
        intent.putExtra("android.intent.extra.STREAM", uri);
        intent.setType("image/*");
        return m8111a(Intent.createChooser(intent, ""), true);
    }

    public static Intent getComponentIntent(String str, String str2, Bundle bundle, boolean z) {
        Intent intent = new Intent();
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        intent.setComponent(new ComponentName(str, str2));
        return m8111a(intent, z);
    }

    public static Intent getShareImageIntent(LinkedList<String> linkedList) {
        return getShareTextImageIntent("", linkedList);
    }

    public static Intent getShareImageIntent(List<File> list) {
        return getShareTextImageIntent("", list);
    }

    public static Intent getInstallAppIntent(Uri uri) {
        if (uri == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(uri, "application/vnd.android.package-archive");
        intent.setFlags(1);
        return intent.addFlags(268435456);
    }

    public static Intent getShareImageIntent(ArrayList<Uri> arrayList) {
        return getShareTextImageIntent("", arrayList);
    }

    public static Intent getShareTextImageIntent(@Nullable String str, LinkedList<String> linkedList) {
        ArrayList arrayList = new ArrayList();
        if (linkedList != null) {
            Iterator<String> it2 = linkedList.iterator();
            while (it2.hasNext()) {
                File m8461P = C1887b.m8461P(it2.next());
                if (m8461P != null) {
                    arrayList.add(m8461P);
                }
            }
        }
        return getShareTextImageIntent(str, (List<File>) arrayList);
    }

    public static Intent getShareTextImageIntent(@Nullable String str, List<File> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            Iterator<File> it2 = list.iterator();
            while (it2.hasNext()) {
                Uri m8435C = C1887b.m8435C(it2.next());
                if (m8435C != null) {
                    arrayList.add(m8435C);
                }
            }
        }
        return getShareTextImageIntent(str, (ArrayList<Uri>) arrayList);
    }

    public static Intent getShareTextImageIntent(@Nullable String str, ArrayList<Uri> arrayList) {
        Intent intent = new Intent("android.intent.action.SEND_MULTIPLE");
        intent.putExtra("android.intent.extra.TEXT", str);
        intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList);
        intent.setType("image/*");
        return m8111a(Intent.createChooser(intent, ""), true);
    }
}
