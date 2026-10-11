package com.couchbase.lite.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.C2164R;
import com.couchbase.lite.CouchbaseLiteError;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.connectivity.AndroidConnectivityManager;
import com.couchbase.lite.internal.core.C2183C4;
import com.couchbase.lite.internal.exec.ExecutionService;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.logging.LogSinksImpl;
import com.couchbase.lite.internal.replicator.NetworkConnectivityManager;
import com.couchbase.lite.internal.utils.FileUtils;
import com.couchbase.lite.internal.utils.Preconditions;
import com.sunia.HTREnginev2.cyi;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Scanner;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class CouchbaseLiteInternal {
    private static final String LITECORE_JNI_LIBRARY = "LiteCoreJNI";
    public static final String PLATFORM = "CBL-ANDROID";
    public static final String SCRATCH_DIR_NAME = "CouchbaseLiteTemp";
    private static volatile boolean debugging;

    @NonNull
    @SuppressFBWarnings({"NP_NONNULL_FIELD_NOT_INITIALIZED_IN_CONSTRUCTOR"})
    private static volatile File defaultDbDir;
    private static final AtomicReference<SoftReference<Context>> CONTEXT = new AtomicReference<>();
    private static final AtomicReference<ExecutionService> EXECUTION_SERVICE = new AtomicReference<>();
    private static final AtomicReference<NetworkConnectivityManager> CONNECTIVITY_MANAGER = new AtomicReference<>();
    private static final AtomicBoolean INITIALIZED = new AtomicBoolean(false);

    @NonNull
    static final Object LOCK = new Object();

    private CouchbaseLiteInternal() {
    }

    public static boolean debugging() {
        return debugging;
    }

    @NonNull
    public static Context getContext() {
        requireInit("Application context not initialized");
        Context context = CONTEXT.get().get();
        if (context != null) {
            return context;
        }
        throw new CouchbaseLiteError("Context is null");
    }

    @NonNull
    public static File getDefaultDbDir() {
        requireInit("Can't create DB path");
        return defaultDbDir;
    }

    @NonNull
    public static String getDefaultDbDirPath() {
        requireInit("Can't create Default DB path");
        return defaultDbDir.getAbsolutePath();
    }

    @NonNull
    public static ExecutionService getExecutionService() {
        AtomicReference<ExecutionService> atomicReference = EXECUTION_SERVICE;
        ExecutionService executionService = atomicReference.get();
        if (executionService != null) {
            return executionService;
        }
        cyi.m53538a(atomicReference, null, new AndroidExecutionService());
        return atomicReference.get();
    }

    @NonNull
    public static NetworkConnectivityManager getNetworkConnectivityManager() {
        AtomicReference<NetworkConnectivityManager> atomicReference = CONNECTIVITY_MANAGER;
        NetworkConnectivityManager networkConnectivityManager = atomicReference.get();
        if (networkConnectivityManager != null) {
            return networkConnectivityManager;
        }
        cyi.m53538a(atomicReference, null, AndroidConnectivityManager.newInstance());
        return atomicReference.get();
    }

    public static void init(@NonNull Context context, boolean z, @NonNull File file, @NonNull File file2) {
        if (INITIALIZED.getAndSet(true)) {
            return;
        }
        debugging = z;
        CONTEXT.set(new SoftReference<>((Context) Preconditions.assertNotNull(context.getApplicationContext(), "context")));
        defaultDbDir = FileUtils.verifyDir(file);
        System.loadLibrary(LITECORE_JNI_LIBRARY);
        C2183C4.debug(debugging);
        LogSinksImpl.initLogging();
        setC4TmpDirPath(FileUtils.verifyDir(file2));
    }

    @NonNull
    public static Map<String, String> loadErrorMessages() {
        InputStream openRawResource;
        HashMap hashMap = new HashMap();
        try {
            openRawResource = getContext().getResources().openRawResource(C2164R.raw.errors);
        } catch (IOException | JSONException e) {
            Log.m9909w(LogDomain.DATABASE, "Failed to load error messages", e);
        }
        try {
            final JSONObject jSONObject = new JSONObject(new Scanner(openRawResource, "UTF-8").useDelimiter("\\A").next());
            for (String str : new Iterable() { // from class: com.sunia.HTREnginev2.ede
                @Override // java.lang.Iterable
                public final Iterator iterator() {
                    return JSONObject.this.keys();
                }
            }) {
                hashMap.put(str, jSONObject.getString(str));
            }
            if (openRawResource != null) {
                openRawResource.close();
            }
            return hashMap;
        } catch (Throwable th) {
            if (openRawResource != null) {
                try {
                    openRawResource.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static void requireInit(String str) {
        if (INITIALIZED.get()) {
            return;
        }
        throw new CouchbaseLiteError(str + ".  Did you forget to call CouchbaseLite.init()?");
    }

    @VisibleForTesting
    public static void reset() {
        debugging = false;
        defaultDbDir = null;
        CONTEXT.set(null);
        EXECUTION_SERVICE.set(null);
        CONNECTIVITY_MANAGER.set(null);
        INITIALIZED.set(false);
    }

    private static void setC4TmpDirPath(@NonNull File file) {
        try {
            synchronized (LOCK) {
                C2183C4.setTempDir(file.getAbsolutePath());
            }
        } catch (LiteCoreException e) {
            Log.m9909w(LogDomain.DATABASE, "Failed to set c4TmpDir", e);
        }
    }
}
