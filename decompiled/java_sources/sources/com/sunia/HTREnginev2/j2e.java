package com.sunia.HTREnginev2;

import android.content.Context;
import android.content.res.loader.ResourcesLoader;
import android.content.res.loader.ResourcesProvider;
import android.os.ParcelFileDescriptor;
import android.system.Os;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.util.Map;

@RequiresApi(30)
/* loaded from: classes6.dex */
public final class j2e {

    /* renamed from: a */
    public static final String f73863a = "ColorResLoaderCreator";

    @Nullable
    /* renamed from: a */
    public static ResourcesLoader m54866a(@NonNull Context context, @NonNull Map<Integer, Integer> map) {
        FileDescriptor fileDescriptor;
        ResourcesProvider loadFromTable;
        try {
            byte[] m55130i = k2e.m55130i(context, map);
            Log.i(f73863a, "Table created, length: " + m55130i.length);
            if (m55130i.length == 0) {
                return null;
            }
            try {
                fileDescriptor = Os.memfd_create("temp.arsc", 0);
                try {
                    if (fileDescriptor == null) {
                        Log.w(f73863a, "Cannot create memory file descriptor.");
                        if (fileDescriptor != null) {
                            Os.close(fileDescriptor);
                        }
                        return null;
                    }
                    FileOutputStream fileOutputStream = new FileOutputStream(fileDescriptor);
                    try {
                        fileOutputStream.write(m55130i);
                        ParcelFileDescriptor dup = ParcelFileDescriptor.dup(fileDescriptor);
                        try {
                            i2e.m54670a();
                            ResourcesLoader m54394a = h2e.m54394a();
                            loadFromTable = ResourcesProvider.loadFromTable(dup, null);
                            m54394a.addProvider(loadFromTable);
                            if (dup != null) {
                                dup.close();
                            }
                            fileOutputStream.close();
                            Os.close(fileDescriptor);
                            return m54394a;
                        } finally {
                        }
                    } finally {
                    }
                } catch (Throwable th) {
                    th = th;
                    if (fileDescriptor != null) {
                        Os.close(fileDescriptor);
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                fileDescriptor = null;
            }
        } catch (Exception e) {
            Log.e(f73863a, "Failed to create the ColorResourcesTableCreator.", e);
            return null;
        }
    }
}
