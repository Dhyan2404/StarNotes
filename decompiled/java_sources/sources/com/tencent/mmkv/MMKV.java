package com.tencent.mmkv;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.util.Log;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes10.dex */
public class MMKV implements SharedPreferences, SharedPreferences.Editor {
    private static final int ASHMEM_MODE = 8;
    private static final int CONTEXT_MODE_MULTI_PROCESS = 4;
    public static final int MULTI_PROCESS_MODE = 2;
    public static final int SINGLE_PROCESS_MODE = 1;
    private static final Set<Long> checkedHandleSet;
    private static MMKVHandler gCallbackHandler;
    private static MMKVContentChangeNotification gContentChangeNotify;
    private static boolean gWantLogReDirecting;
    private static final MMKVLogLevel[] index2LogLevel;
    private static boolean isProcessModeCheckerEnabled;
    private static final EnumMap<MMKVLogLevel, Integer> logLevel2Index;
    private static final HashMap<String, Parcelable.Creator<?>> mCreators;
    private static final EnumMap<MMKVRecoverStrategic, Integer> recoverIndex;
    private static String rootDir;
    private final long nativeHandle;

    /* renamed from: com.tencent.mmkv.MMKV$1 */
    /* loaded from: classes10.dex */
    public static /* synthetic */ class C167071 {
        static final /* synthetic */ int[] $SwitchMap$com$tencent$mmkv$MMKVLogLevel;

        static {
            int[] iArr = new int[MMKVLogLevel.values().length];
            $SwitchMap$com$tencent$mmkv$MMKVLogLevel = iArr;
            try {
                iArr[MMKVLogLevel.LevelDebug.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$tencent$mmkv$MMKVLogLevel[MMKVLogLevel.LevelWarning.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$tencent$mmkv$MMKVLogLevel[MMKVLogLevel.LevelError.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$tencent$mmkv$MMKVLogLevel[MMKVLogLevel.LevelNone.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$tencent$mmkv$MMKVLogLevel[MMKVLogLevel.LevelInfo.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes10.dex */
    public interface LibLoader {
        void loadLibrary(String libName);
    }

    static {
        EnumMap<MMKVRecoverStrategic, Integer> enumMap = new EnumMap<>((Class<MMKVRecoverStrategic>) MMKVRecoverStrategic.class);
        recoverIndex = enumMap;
        enumMap.put((EnumMap<MMKVRecoverStrategic, Integer>) MMKVRecoverStrategic.OnErrorDiscard, (MMKVRecoverStrategic) 0);
        enumMap.put((EnumMap<MMKVRecoverStrategic, Integer>) MMKVRecoverStrategic.OnErrorRecover, (MMKVRecoverStrategic) 1);
        EnumMap<MMKVLogLevel, Integer> enumMap2 = new EnumMap<>((Class<MMKVLogLevel>) MMKVLogLevel.class);
        logLevel2Index = enumMap2;
        MMKVLogLevel mMKVLogLevel = MMKVLogLevel.LevelDebug;
        enumMap2.put((EnumMap<MMKVLogLevel, Integer>) mMKVLogLevel, (MMKVLogLevel) 0);
        MMKVLogLevel mMKVLogLevel2 = MMKVLogLevel.LevelInfo;
        enumMap2.put((EnumMap<MMKVLogLevel, Integer>) mMKVLogLevel2, (MMKVLogLevel) 1);
        MMKVLogLevel mMKVLogLevel3 = MMKVLogLevel.LevelWarning;
        enumMap2.put((EnumMap<MMKVLogLevel, Integer>) mMKVLogLevel3, (MMKVLogLevel) 2);
        MMKVLogLevel mMKVLogLevel4 = MMKVLogLevel.LevelError;
        enumMap2.put((EnumMap<MMKVLogLevel, Integer>) mMKVLogLevel4, (MMKVLogLevel) 3);
        MMKVLogLevel mMKVLogLevel5 = MMKVLogLevel.LevelNone;
        enumMap2.put((EnumMap<MMKVLogLevel, Integer>) mMKVLogLevel5, (MMKVLogLevel) 4);
        index2LogLevel = new MMKVLogLevel[]{mMKVLogLevel, mMKVLogLevel2, mMKVLogLevel3, mMKVLogLevel4, mMKVLogLevel5};
        checkedHandleSet = new HashSet();
        rootDir = null;
        isProcessModeCheckerEnabled = true;
        mCreators = new HashMap<>();
        gWantLogReDirecting = false;
    }

    private MMKV(long handle) {
        this.nativeHandle = handle;
    }

    @Nullable
    private static MMKV checkProcessMode(long handle, String mmapID, int mode) {
        String str;
        if (handle == 0) {
            return null;
        }
        if (!isProcessModeCheckerEnabled) {
            return new MMKV(handle);
        }
        Set<Long> set = checkedHandleSet;
        synchronized (set) {
            if (!set.contains(Long.valueOf(handle))) {
                if (!checkProcessMode(handle)) {
                    if (mode == 1) {
                        str = "Opening a multi-process MMKV instance [" + mmapID + "] with SINGLE_PROCESS_MODE!";
                    } else {
                        str = ("Opening a MMKV instance [" + mmapID + "] with MULTI_PROCESS_MODE, ") + "while it's already been opened with SINGLE_PROCESS_MODE by someone somewhere else!";
                    }
                    throw new IllegalArgumentException(str);
                }
                set.add(Long.valueOf(handle));
            }
        }
        return new MMKV(handle);
    }

    private static native boolean checkProcessMode(long handle);

    private native boolean containsKey(long handle, String key);

    private native long count(long handle);

    private static native long createNB(int size);

    public static NativeBuffer createNativeBuffer(int size) {
        long createNB = createNB(size);
        if (createNB <= 0) {
            return null;
        }
        return new NativeBuffer(createNB, size);
    }

    private native boolean decodeBool(long handle, String key, boolean defaultValue);

    @Nullable
    private native byte[] decodeBytes(long handle, String key);

    private native double decodeDouble(long handle, String key, double defaultValue);

    private native float decodeFloat(long handle, String key, float defaultValue);

    private native int decodeInt(long handle, String key, int defaultValue);

    private native long decodeLong(long handle, String key, long defaultValue);

    @Nullable
    private native String decodeString(long handle, String key, @Nullable String defaultValue);

    @Nullable
    private native String[] decodeStringSet(long handle, String key);

    @Nullable
    public static MMKV defaultMMKV() {
        if (rootDir != null) {
            return checkProcessMode(getDefaultMMKV(1, null), "DefaultMMKV", 1);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    private static native void destroyNB(long pointer, int size);

    public static void destroyNativeBuffer(NativeBuffer buffer) {
        destroyNB(buffer.pointer, buffer.size);
    }

    public static void disableProcessModeChecker() {
        synchronized (checkedHandleSet) {
            isProcessModeCheckerEnabled = false;
        }
        Log.i("MMKV", "Disable checkProcessMode()");
    }

    private static String doInitialize(String rootDir2, LibLoader loader, MMKVLogLevel logLevel) {
        if (loader != null) {
            loader.loadLibrary("mmkv");
        } else {
            System.loadLibrary("mmkv");
        }
        jniInitialize(rootDir2, logLevel2Int(logLevel));
        rootDir = rootDir2;
        return rootDir2;
    }

    public static void enableProcessModeChecker() {
        synchronized (checkedHandleSet) {
            isProcessModeCheckerEnabled = true;
        }
        Log.i("MMKV", "Enable checkProcessMode()");
    }

    private native boolean encodeBool(long handle, String key, boolean value);

    private native boolean encodeBytes(long handle, String key, @Nullable byte[] value);

    private native boolean encodeDouble(long handle, String key, double value);

    private native boolean encodeFloat(long handle, String key, float value);

    private native boolean encodeInt(long handle, String key, int value);

    private native boolean encodeLong(long handle, String key, long value);

    private native boolean encodeSet(long handle, String key, @Nullable String[] value);

    private native boolean encodeString(long handle, String key, @Nullable String value);

    private static native long getDefaultMMKV(int mode, @Nullable String cryptKey);

    private static native long getMMKVWithAshmemFD(String mmapID, int fd, int metaFD, @Nullable String cryptKey);

    private static native long getMMKVWithID(String mmapID, int mode, @Nullable String cryptKey, @Nullable String rootPath);

    private static native long getMMKVWithIDAndSize(String mmapID, int size, int mode, @Nullable String cryptKey);

    public static String getRootDir() {
        return rootDir;
    }

    public static String initialize(Context context) {
        return initialize(context, context.getFilesDir().getAbsolutePath() + "/mmkv", null, MMKVLogLevel.LevelInfo);
    }

    public static boolean isFileValid(String mmapID) {
        return isFileValid(mmapID, null);
    }

    public static native boolean isFileValid(String mmapID, @Nullable String rootPath);

    private static native void jniInitialize(String rootDir2, int level);

    private static int logLevel2Int(MMKVLogLevel level) {
        int i = C167071.$SwitchMap$com$tencent$mmkv$MMKVLogLevel[level.ordinal()];
        if (i == 1) {
            return 0;
        }
        int i2 = 2;
        if (i != 2) {
            i2 = 3;
            if (i != 3) {
                i2 = 4;
                if (i != 4) {
                    return 1;
                }
            }
        }
        return i2;
    }

    private static void mmkvLogImp(int level, String file, int line, String function, String message) {
        MMKVHandler mMKVHandler = gCallbackHandler;
        if (mMKVHandler != null && gWantLogReDirecting) {
            mMKVHandler.mmkvLog(index2LogLevel[level], file, line, function, message);
            return;
        }
        int i = C167071.$SwitchMap$com$tencent$mmkv$MMKVLogLevel[index2LogLevel[level].ordinal()];
        if (i == 1) {
            Log.d("MMKV", message);
            return;
        }
        if (i == 2) {
            Log.w("MMKV", message);
        } else if (i == 3) {
            Log.e("MMKV", message);
        } else {
            if (i != 5) {
                return;
            }
            Log.i("MMKV", message);
        }
    }

    public static MMKV mmkvWithAshmemFD(String mmapID, int fd, int metaFD, String cryptKey) {
        return new MMKV(getMMKVWithAshmemFD(mmapID, fd, metaFD, cryptKey));
    }

    @Nullable
    public static MMKV mmkvWithAshmemID(Context context, String mmapID, int size, int mode, @Nullable String cryptKey) {
        if (rootDir == null) {
            throw new IllegalStateException("You should Call MMKV.initialize() first.");
        }
        String processNameByPID = MMKVContentProvider.getProcessNameByPID(context, Process.myPid());
        if (processNameByPID == null || processNameByPID.length() == 0) {
            simpleLog(MMKVLogLevel.LevelError, "process name detect fail, try again later");
            return null;
        }
        if (!processNameByPID.contains(":")) {
            simpleLog(MMKVLogLevel.LevelInfo, "getting mmkv in main process");
            return new MMKV(getMMKVWithIDAndSize(mmapID, size, mode | 8, cryptKey));
        }
        Uri contentUri = MMKVContentProvider.contentUri(context);
        if (contentUri == null) {
            simpleLog(MMKVLogLevel.LevelError, "MMKVContentProvider has invalid authority");
            return null;
        }
        MMKVLogLevel mMKVLogLevel = MMKVLogLevel.LevelInfo;
        simpleLog(mMKVLogLevel, "getting parcelable mmkv in process, Uri = " + contentUri);
        Bundle bundle = new Bundle();
        bundle.putInt("KEY_SIZE", size);
        bundle.putInt("KEY_MODE", mode);
        if (cryptKey != null) {
            bundle.putString("KEY_CRYPT", cryptKey);
        }
        Bundle call = context.getContentResolver().call(contentUri, "mmkvFromAshmemID", mmapID, bundle);
        if (call != null) {
            call.setClassLoader(ParcelableMMKV.class.getClassLoader());
            ParcelableMMKV parcelableMMKV = (ParcelableMMKV) call.getParcelable("KEY");
            if (parcelableMMKV != null) {
                MMKV mmkv = parcelableMMKV.toMMKV();
                if (mmkv != null) {
                    simpleLog(mMKVLogLevel, mmkv.mmapID() + " fd = " + mmkv.ashmemFD() + ", meta fd = " + mmkv.ashmemMetaFD());
                }
                return mmkv;
            }
        }
        return null;
    }

    @Nullable
    public static MMKV mmkvWithID(String mmapID) {
        if (rootDir != null) {
            return checkProcessMode(getMMKVWithID(mmapID, 1, null, null), mmapID, 1);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    private static void onContentChangedByOuterProcess(String mmapID) {
        MMKVContentChangeNotification mMKVContentChangeNotification = gContentChangeNotify;
        if (mMKVContentChangeNotification != null) {
            mMKVContentChangeNotification.onContentChangedByOuterProcess(mmapID);
        }
    }

    public static native void onExit();

    private static int onMMKVCRCCheckFail(String mmapID) {
        MMKVRecoverStrategic mMKVRecoverStrategic = MMKVRecoverStrategic.OnErrorDiscard;
        MMKVHandler mMKVHandler = gCallbackHandler;
        if (mMKVHandler != null) {
            mMKVRecoverStrategic = mMKVHandler.onMMKVCRCCheckFail(mmapID);
        }
        simpleLog(MMKVLogLevel.LevelInfo, "Recover strategic for " + mmapID + " is " + mMKVRecoverStrategic);
        Integer num = recoverIndex.get(mMKVRecoverStrategic);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    private static int onMMKVFileLengthError(String mmapID) {
        MMKVRecoverStrategic mMKVRecoverStrategic = MMKVRecoverStrategic.OnErrorDiscard;
        MMKVHandler mMKVHandler = gCallbackHandler;
        if (mMKVHandler != null) {
            mMKVRecoverStrategic = mMKVHandler.onMMKVFileLengthError(mmapID);
        }
        simpleLog(MMKVLogLevel.LevelInfo, "Recover strategic for " + mmapID + " is " + mMKVRecoverStrategic);
        Integer num = recoverIndex.get(mMKVRecoverStrategic);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public static native int pageSize();

    public static void registerContentChangeNotify(MMKVContentChangeNotification notify) {
        gContentChangeNotify = notify;
        setWantsContentChangeNotify(notify != null);
    }

    public static void registerHandler(MMKVHandler handler) {
        gCallbackHandler = handler;
        if (handler.wantLogRedirecting()) {
            setCallbackHandler(true, true);
            gWantLogReDirecting = true;
        } else {
            setCallbackHandler(false, true);
            gWantLogReDirecting = false;
        }
    }

    private native void removeValueForKey(long handle, String key);

    private static native void setCallbackHandler(boolean logReDirecting, boolean hasCallback);

    private static native void setLogLevel(int level);

    public static void setLogLevel(MMKVLogLevel level) {
        setLogLevel(logLevel2Int(level));
    }

    private static native void setWantsContentChangeNotify(boolean needsNotify);

    private static void simpleLog(MMKVLogLevel level, String message) {
        StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[r0.length - 1];
        Integer num = logLevel2Index.get(level);
        mmkvLogImp(num == null ? 0 : num.intValue(), stackTraceElement.getFileName(), stackTraceElement.getLineNumber(), stackTraceElement.getMethodName(), message);
    }

    private native void sync(boolean sync);

    private native long totalSize(long handle);

    public static void unregisterContentChangeNotify() {
        gContentChangeNotify = null;
        setWantsContentChangeNotify(false);
    }

    public static void unregisterHandler() {
        gCallbackHandler = null;
        setCallbackHandler(false, false);
        gWantLogReDirecting = false;
    }

    private native int valueSize(long handle, String key, boolean actualSize);

    public static native String version();

    private native int writeValueToNB(long handle, String key, long pointer, int size);

    @Nullable
    public native String[] allKeys();

    @Override // android.content.SharedPreferences.Editor
    public void apply() {
        sync(false);
    }

    public native int ashmemFD();

    public native int ashmemMetaFD();

    public void async() {
        sync(false);
    }

    public native void checkContentChangedByOuterProcess();

    public native void checkReSetCryptKey(@Nullable String cryptKey);

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor clear() {
        clearAll();
        return this;
    }

    public native void clearAll();

    public native void clearMemoryCache();

    public native void close();

    @Override // android.content.SharedPreferences.Editor
    public boolean commit() {
        sync(true);
        return true;
    }

    @Override // android.content.SharedPreferences
    public boolean contains(String key) {
        return containsKey(key);
    }

    public boolean containsKey(String key) {
        return containsKey(this.nativeHandle, key);
    }

    public long count() {
        return count(this.nativeHandle);
    }

    @Nullable
    public native String cryptKey();

    public boolean decodeBool(String key) {
        return decodeBool(this.nativeHandle, key, false);
    }

    @Nullable
    public byte[] decodeBytes(String key) {
        return decodeBytes(key, (byte[]) null);
    }

    public double decodeDouble(String key) {
        return decodeDouble(this.nativeHandle, key, 0.0d);
    }

    public float decodeFloat(String key) {
        return decodeFloat(this.nativeHandle, key, 0.0f);
    }

    public int decodeInt(String key) {
        return decodeInt(this.nativeHandle, key, 0);
    }

    public long decodeLong(String key) {
        return decodeLong(this.nativeHandle, key, 0L);
    }

    @Nullable
    public <T extends Parcelable> T decodeParcelable(String str, Class<T> cls) {
        return (T) decodeParcelable(str, cls, null);
    }

    @Nullable
    public String decodeString(String key) {
        return decodeString(this.nativeHandle, key, null);
    }

    @Nullable
    public Set<String> decodeStringSet(String key) {
        return decodeStringSet(key, (Set<String>) null);
    }

    @Override // android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        return this;
    }

    public boolean encode(String key, boolean value) {
        return encodeBool(this.nativeHandle, key, value);
    }

    @Override // android.content.SharedPreferences
    public Map<String, ?> getAll() {
        throw new UnsupportedOperationException("use allKeys() instead, getAll() not implement because type-erasure inside mmkv");
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(String key, boolean defValue) {
        return decodeBool(this.nativeHandle, key, defValue);
    }

    public byte[] getBytes(String key, @Nullable byte[] defValue) {
        return decodeBytes(key, defValue);
    }

    @Override // android.content.SharedPreferences
    public float getFloat(String key, float defValue) {
        return decodeFloat(this.nativeHandle, key, defValue);
    }

    @Override // android.content.SharedPreferences
    public int getInt(String key, int defValue) {
        return decodeInt(this.nativeHandle, key, defValue);
    }

    @Override // android.content.SharedPreferences
    public long getLong(String key, long defValue) {
        return decodeLong(this.nativeHandle, key, defValue);
    }

    @Override // android.content.SharedPreferences
    @Nullable
    public String getString(String key, @Nullable String defValue) {
        return decodeString(this.nativeHandle, key, defValue);
    }

    @Override // android.content.SharedPreferences
    @Nullable
    public Set<String> getStringSet(String key, @Nullable Set<String> defValues) {
        return decodeStringSet(key, defValues);
    }

    public int getValueActualSize(String key) {
        return valueSize(this.nativeHandle, key, true);
    }

    public int getValueSize(String key) {
        return valueSize(this.nativeHandle, key, false);
    }

    public int importFromSharedPreferences(SharedPreferences preferences) {
        Map<String, ?> all = preferences.getAll();
        if (all == null || all.size() <= 0) {
            return 0;
        }
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (key != null && value != null) {
                if (value instanceof Boolean) {
                    encodeBool(this.nativeHandle, key, ((Boolean) value).booleanValue());
                } else if (value instanceof Integer) {
                    encodeInt(this.nativeHandle, key, ((Integer) value).intValue());
                } else if (value instanceof Long) {
                    encodeLong(this.nativeHandle, key, ((Long) value).longValue());
                } else if (value instanceof Float) {
                    encodeFloat(this.nativeHandle, key, ((Float) value).floatValue());
                } else if (value instanceof Double) {
                    encodeDouble(this.nativeHandle, key, ((Double) value).doubleValue());
                } else if (value instanceof String) {
                    encodeString(this.nativeHandle, key, (String) value);
                } else if (value instanceof Set) {
                    encode(key, (Set<String>) value);
                } else {
                    simpleLog(MMKVLogLevel.LevelError, "unknown type: " + value.getClass());
                }
            }
        }
        return all.size();
    }

    public native void lock();

    public native String mmapID();

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putBoolean(String key, boolean value) {
        encodeBool(this.nativeHandle, key, value);
        return this;
    }

    public SharedPreferences.Editor putBytes(String key, @Nullable byte[] bytes) {
        encode(key, bytes);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putFloat(String key, float value) {
        encodeFloat(this.nativeHandle, key, value);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putInt(String key, int value) {
        encodeInt(this.nativeHandle, key, value);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putLong(String key, long value) {
        encodeLong(this.nativeHandle, key, value);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putString(String key, @Nullable String value) {
        encodeString(this.nativeHandle, key, value);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putStringSet(String key, @Nullable Set<String> values) {
        encode(key, values);
        return this;
    }

    public native boolean reKey(@Nullable String cryptKey);

    @Override // android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener listener) {
        throw new UnsupportedOperationException("Not implement in MMKV");
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor remove(String key) {
        removeValueForKey(key);
        return this;
    }

    public void removeValueForKey(String key) {
        removeValueForKey(this.nativeHandle, key);
    }

    public native void removeValuesForKeys(String[] arrKeys);

    public void sync() {
        sync(true);
    }

    public long totalSize() {
        return totalSize(this.nativeHandle);
    }

    public native void trim();

    public native boolean tryLock();

    public native void unlock();

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener listener) {
        throw new UnsupportedOperationException("Not implement in MMKV");
    }

    public int writeValueToNativeBuffer(String key, NativeBuffer buffer) {
        return writeValueToNB(this.nativeHandle, key, buffer.pointer, buffer.size);
    }

    public boolean decodeBool(String key, boolean defaultValue) {
        return decodeBool(this.nativeHandle, key, defaultValue);
    }

    @Nullable
    public byte[] decodeBytes(String key, @Nullable byte[] defaultValue) {
        byte[] decodeBytes = decodeBytes(this.nativeHandle, key);
        return decodeBytes != null ? decodeBytes : defaultValue;
    }

    public double decodeDouble(String key, double defaultValue) {
        return decodeDouble(this.nativeHandle, key, defaultValue);
    }

    public float decodeFloat(String key, float defaultValue) {
        return decodeFloat(this.nativeHandle, key, defaultValue);
    }

    public int decodeInt(String key, int defaultValue) {
        return decodeInt(this.nativeHandle, key, defaultValue);
    }

    public long decodeLong(String key, long defaultValue) {
        return decodeLong(this.nativeHandle, key, defaultValue);
    }

    @Nullable
    public <T extends Parcelable> T decodeParcelable(String key, Class<T> tClass, @Nullable T defaultValue) {
        byte[] decodeBytes;
        Parcelable.Creator<?> creator;
        if (tClass == null || (decodeBytes = decodeBytes(this.nativeHandle, key)) == null) {
            return defaultValue;
        }
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(decodeBytes, 0, decodeBytes.length);
        obtain.setDataPosition(0);
        try {
            String cls = tClass.toString();
            HashMap<String, Parcelable.Creator<?>> hashMap = mCreators;
            synchronized (hashMap) {
                creator = hashMap.get(cls);
                if (creator == null && (creator = (Parcelable.Creator) tClass.getField("CREATOR").get(null)) != null) {
                    hashMap.put(cls, creator);
                }
            }
            if (creator != null) {
                return (T) creator.createFromParcel(obtain);
            }
            throw new Exception("Parcelable protocol requires a non-null static Parcelable.Creator object called CREATOR on class " + cls);
        } catch (Exception e) {
            simpleLog(MMKVLogLevel.LevelError, e.toString());
            return defaultValue;
        } finally {
            obtain.recycle();
        }
    }

    @Nullable
    public String decodeString(String key, @Nullable String defaultValue) {
        return decodeString(this.nativeHandle, key, defaultValue);
    }

    @Nullable
    public Set<String> decodeStringSet(String key, @Nullable Set<String> defaultValue) {
        return decodeStringSet(key, defaultValue, HashSet.class);
    }

    public boolean encode(String key, int value) {
        return encodeInt(this.nativeHandle, key, value);
    }

    @Nullable
    public Set<String> decodeStringSet(String key, @Nullable Set<String> defaultValue, Class<? extends Set> cls) {
        String[] decodeStringSet = decodeStringSet(this.nativeHandle, key);
        if (decodeStringSet == null) {
            return defaultValue;
        }
        try {
            Set<String> newInstance = cls.newInstance();
            newInstance.addAll(Arrays.asList(decodeStringSet));
            return newInstance;
        } catch (IllegalAccessException | InstantiationException unused) {
            return defaultValue;
        }
    }

    public boolean encode(String key, long value) {
        return encodeLong(this.nativeHandle, key, value);
    }

    public static String initialize(Context context, MMKVLogLevel logLevel) {
        return initialize(context, context.getFilesDir().getAbsolutePath() + "/mmkv", null, logLevel);
    }

    public boolean encode(String key, float value) {
        return encodeFloat(this.nativeHandle, key, value);
    }

    @Nullable
    public static MMKV defaultMMKV(int mode, @Nullable String cryptKey) {
        if (rootDir != null) {
            return checkProcessMode(getDefaultMMKV(mode, cryptKey), "DefaultMMKV", mode);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    @Nullable
    public static MMKV mmkvWithID(String mmapID, int mode) {
        if (rootDir != null) {
            return checkProcessMode(getMMKVWithID(mmapID, mode, null, null), mmapID, mode);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    public boolean encode(String key, double value) {
        return encodeDouble(this.nativeHandle, key, value);
    }

    public static String initialize(Context context, LibLoader loader) {
        return initialize(context, context.getFilesDir().getAbsolutePath() + "/mmkv", loader, MMKVLogLevel.LevelInfo);
    }

    public boolean encode(String key, @Nullable String value) {
        return encodeString(this.nativeHandle, key, value);
    }

    public boolean encode(String key, @Nullable Set<String> value) {
        return encodeSet(this.nativeHandle, key, value == null ? null : (String[]) value.toArray(new String[0]));
    }

    public boolean encode(String key, @Nullable byte[] value) {
        return encodeBytes(this.nativeHandle, key, value);
    }

    public static String initialize(Context context, LibLoader loader, MMKVLogLevel logLevel) {
        return initialize(context, context.getFilesDir().getAbsolutePath() + "/mmkv", loader, logLevel);
    }

    @Nullable
    public static MMKV mmkvWithID(String mmapID, int mode, @Nullable String cryptKey) {
        if (rootDir != null) {
            return checkProcessMode(getMMKVWithID(mmapID, mode, cryptKey, null), mmapID, mode);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    public boolean encode(String key, @Nullable Parcelable value) {
        if (value == null) {
            return encodeBytes(this.nativeHandle, key, null);
        }
        Parcel obtain = Parcel.obtain();
        value.writeToParcel(obtain, value.describeContents());
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        return encodeBytes(this.nativeHandle, key, marshall);
    }

    public static String initialize(Context context, String rootDir2) {
        return initialize(context, rootDir2, null, MMKVLogLevel.LevelInfo);
    }

    public static String initialize(Context context, String rootDir2, MMKVLogLevel logLevel) {
        return initialize(context, rootDir2, null, logLevel);
    }

    @Nullable
    public static MMKV mmkvWithID(String mmapID, String rootPath) {
        if (rootDir != null) {
            return checkProcessMode(getMMKVWithID(mmapID, 1, null, rootPath), mmapID, 1);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    public static String initialize(Context context, String rootDir2, LibLoader loader) {
        return initialize(context, rootDir2, loader, MMKVLogLevel.LevelInfo);
    }

    public static String initialize(Context context, String rootDir2, LibLoader loader, MMKVLogLevel logLevel) {
        if ((context.getApplicationInfo().flags & 2) == 0) {
            disableProcessModeChecker();
        } else {
            enableProcessModeChecker();
        }
        return doInitialize(rootDir2, loader, logLevel);
    }

    @Nullable
    public static MMKV mmkvWithID(String mmapID, int mode, @Nullable String cryptKey, String rootPath) {
        if (rootDir != null) {
            return checkProcessMode(getMMKVWithID(mmapID, mode, cryptKey, rootPath), mmapID, mode);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    @Deprecated
    public static String initialize(String rootDir2) {
        return doInitialize(rootDir2, null, MMKVLogLevel.LevelInfo);
    }

    @Deprecated
    public static String initialize(String rootDir2, MMKVLogLevel logLevel) {
        return doInitialize(rootDir2, null, logLevel);
    }

    @Deprecated
    public static String initialize(String rootDir2, LibLoader loader) {
        return doInitialize(rootDir2, loader, MMKVLogLevel.LevelInfo);
    }

    @Deprecated
    public static String initialize(String rootDir2, LibLoader loader, MMKVLogLevel logLevel) {
        return doInitialize(rootDir2, loader, logLevel);
    }
}
