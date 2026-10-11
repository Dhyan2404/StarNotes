package com.blankj.utilcode.util;

import android.os.Environment;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.text.format.Formatter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class SDCardUtils {

    /* loaded from: classes3.dex */
    public static class SDCardInfo {

        /* renamed from: a */
        public String f13958a;

        /* renamed from: b */
        public String f13959b;

        /* renamed from: c */
        public boolean f13960c;

        /* renamed from: d */
        public long f13961d;

        /* renamed from: e */
        public long f13962e;

        public SDCardInfo(String str, String str2, boolean z) {
            this.f13958a = str;
            this.f13959b = str2;
            this.f13960c = z;
            this.f13961d = C1887b.m8467S(str);
            this.f13962e = C1887b.m8465R(str);
        }

        public long getAvailableSize() {
            return this.f13962e;
        }

        public String getPath() {
            return this.f13958a;
        }

        public String getState() {
            return this.f13959b;
        }

        public long getTotalSize() {
            return this.f13961d;
        }

        public boolean isRemovable() {
            return this.f13960c;
        }

        public String toString() {
            return "SDCardInfo {path = " + this.f13958a + ", state = " + this.f13959b + ", isRemovable = " + this.f13960c + ", totalSize = " + Formatter.formatFileSize(Utils.getApp(), this.f13961d) + ", availableSize = " + Formatter.formatFileSize(Utils.getApp(), this.f13962e) + '}';
        }
    }

    public SDCardUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static long getExternalAvailableSize() {
        return C1887b.m8465R(getSDCardPathByEnvironment());
    }

    public static long getExternalTotalSize() {
        return C1887b.m8467S(getSDCardPathByEnvironment());
    }

    public static long getInternalAvailableSize() {
        return C1887b.m8465R(Environment.getDataDirectory().getAbsolutePath());
    }

    public static long getInternalTotalSize() {
        return C1887b.m8467S(Environment.getDataDirectory().getAbsolutePath());
    }

    public static List<String> getMountedSDCardPath() {
        ArrayList arrayList = new ArrayList();
        List<SDCardInfo> sDCardInfo = getSDCardInfo();
        if (sDCardInfo != null && !sDCardInfo.isEmpty()) {
            for (SDCardInfo sDCardInfo2 : sDCardInfo) {
                String str = sDCardInfo2.f13959b;
                if (str != null && "mounted".equals(str.toLowerCase())) {
                    arrayList.add(sDCardInfo2.f13958a);
                }
            }
        }
        return arrayList;
    }

    public static List<SDCardInfo> getSDCardInfo() {
        ArrayList arrayList = new ArrayList();
        StorageManager storageManager = (StorageManager) Utils.getApp().getSystemService("storage");
        if (storageManager == null) {
            return arrayList;
        }
        List<StorageVolume> storageVolumes = storageManager.getStorageVolumes();
        try {
            Method method = StorageVolume.class.getMethod("getPath", new Class[0]);
            for (StorageVolume storageVolume : storageVolumes) {
                boolean isRemovable = storageVolume.isRemovable();
                arrayList.add(new SDCardInfo((String) method.invoke(storageVolume, new Object[0]), storageVolume.getState(), isRemovable));
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
        }
        return arrayList;
    }

    public static String getSDCardPathByEnvironment() {
        return isSDCardEnableByEnvironment() ? Environment.getExternalStorageDirectory().getAbsolutePath() : "";
    }

    public static boolean isSDCardEnableByEnvironment() {
        return "mounted".equals(Environment.getExternalStorageState());
    }
}
