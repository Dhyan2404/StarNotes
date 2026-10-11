package com.sunia.HTREnginev2;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;

/* loaded from: classes6.dex */
public class mie {

    /* renamed from: c */
    public static final String f77627c = "CrossProcessLock";

    /* renamed from: a */
    public final FileChannel f77628a;

    /* renamed from: b */
    public final FileLock f77629b;

    public mie(FileChannel fileChannel, FileLock fileLock) {
        this.f77628a = fileChannel;
        this.f77629b = fileLock;
    }

    /* renamed from: a */
    public static mie m55624a(Context context, String str) {
        FileChannel fileChannel;
        FileLock fileLock;
        try {
            fileChannel = new RandomAccessFile(new File(context.getFilesDir(), str), "rw").getChannel();
            try {
                fileLock = fileChannel.lock();
            } catch (IOException | Error | OverlappingFileLockException e) {
                e = e;
                fileLock = null;
            }
        } catch (IOException | Error | OverlappingFileLockException e2) {
            e = e2;
            fileChannel = null;
            fileLock = null;
        }
        try {
            return new mie(fileChannel, fileLock);
        } catch (IOException | Error | OverlappingFileLockException e3) {
            e = e3;
            Log.e(f77627c, "encountered error while creating and acquiring the lock, ignoring", e);
            if (fileLock != null) {
                try {
                    fileLock.release();
                } catch (IOException unused) {
                }
            }
            if (fileChannel != null) {
                try {
                    fileChannel.close();
                } catch (IOException unused2) {
                }
            }
            return null;
        }
    }

    /* renamed from: b */
    public void m55625b() {
        try {
            this.f77629b.release();
            this.f77628a.close();
        } catch (IOException e) {
            Log.e(f77627c, "encountered error while releasing, ignoring", e);
        }
    }
}
