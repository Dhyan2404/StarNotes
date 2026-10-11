package com.google.mlkit.common.sdkinternal.model;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.internal.mlkit_common.zzsh;
import com.google.android.gms.internal.mlkit_common.zzss;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.model.RemoteModel;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import java.io.File;
import java.nio.MappedByteBuffer;
import java.util.HashMap;
import java.util.Map;

@KeepForSdk
/* loaded from: classes6.dex */
public class RemoteModelLoader {

    /* renamed from: h */
    public static final GmsLogger f36622h = new GmsLogger("RemoteModelLoader", "");

    /* renamed from: i */
    @GuardedBy("RemoteModelLoader.class")
    public static final Map f36623i = new HashMap();

    /* renamed from: a */
    public final MlKitContext f36624a;

    /* renamed from: b */
    public final RemoteModel f36625b;

    /* renamed from: c */
    public final RemoteModelDownloadManager f36626c;

    /* renamed from: d */
    public final RemoteModelFileManager f36627d;

    /* renamed from: e */
    public final RemoteModelLoaderHelper f36628e;

    /* renamed from: f */
    public final zzsh f36629f;

    /* renamed from: g */
    public boolean f36630g;

    public RemoteModelLoader(@NonNull MlKitContext mlKitContext, @NonNull RemoteModel remoteModel, @NonNull ModelValidator modelValidator, @NonNull RemoteModelLoaderHelper remoteModelLoaderHelper, @NonNull RemoteModelFileMover remoteModelFileMover) {
        RemoteModelFileManager remoteModelFileManager = new RemoteModelFileManager(mlKitContext, remoteModel, modelValidator, new ModelFileHelper(mlKitContext), remoteModelFileMover);
        this.f36627d = remoteModelFileManager;
        this.f36630g = true;
        this.f36626c = RemoteModelDownloadManager.getInstance(mlKitContext, remoteModel, new ModelFileHelper(mlKitContext), remoteModelFileManager, (ModelInfoRetrieverInterop) mlKitContext.get(ModelInfoRetrieverInterop.class));
        this.f36628e = remoteModelLoaderHelper;
        this.f36624a = mlKitContext;
        this.f36625b = remoteModel;
        this.f36629f = zzss.zzb("common");
    }

    @NonNull
    @KeepForSdk
    public static synchronized RemoteModelLoader getInstance(@NonNull MlKitContext mlKitContext, @NonNull RemoteModel remoteModel, @NonNull ModelValidator modelValidator, @NonNull RemoteModelLoaderHelper remoteModelLoaderHelper, @NonNull RemoteModelFileMover remoteModelFileMover) {
        RemoteModelLoader remoteModelLoader;
        synchronized (RemoteModelLoader.class) {
            String uniqueModelNameForPersist = remoteModel.getUniqueModelNameForPersist();
            Map map = f36623i;
            if (!map.containsKey(uniqueModelNameForPersist)) {
                map.put(uniqueModelNameForPersist, new RemoteModelLoader(mlKitContext, remoteModel, modelValidator, remoteModelLoaderHelper, remoteModelFileMover));
            }
            remoteModelLoader = (RemoteModelLoader) map.get(uniqueModelNameForPersist);
        }
        return remoteModelLoader;
    }

    @NonNull
    @WorkerThread
    /* renamed from: a */
    public final MappedByteBuffer m28563a(@NonNull String str) throws MlKitException {
        return this.f36628e.loadModelAtPath(str);
    }

    /* renamed from: b */
    public final MappedByteBuffer m28564b(File file) throws MlKitException {
        try {
            return m28563a(file.getAbsolutePath());
        } catch (Exception e) {
            this.f36627d.zzc(file);
            throw new MlKitException("Failed to load newly downloaded model.", 14, e);
        }
    }

    @NonNull
    @KeepForSdk
    public RemoteModel getRemoteModel() {
        return this.f36625b;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x00b3 A[Catch: all -> 0x00f4, TryCatch #1 {, blocks: (B:3:0x0001, B:7:0x001e, B:9:0x0026, B:12:0x00b3, B:14:0x00c2, B:19:0x00ca, B:22:0x00d0, B:23:0x00ee, B:24:0x00ef, B:26:0x002d, B:28:0x0044, B:31:0x004d, B:33:0x006b, B:35:0x0073, B:36:0x0085, B:38:0x008d, B:39:0x00a4), top: B:2:0x0001, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00ef A[Catch: all -> 0x00f4, TRY_LEAVE, TryCatch #1 {, blocks: (B:3:0x0001, B:7:0x001e, B:9:0x0026, B:12:0x00b3, B:14:0x00c2, B:19:0x00ca, B:22:0x00d0, B:23:0x00ee, B:24:0x00ef, B:26:0x002d, B:28:0x0044, B:31:0x004d, B:33:0x006b, B:35:0x0073, B:36:0x0085, B:38:0x008d, B:39:0x00a4), top: B:2:0x0001, inners: #0 }] */
    @androidx.annotation.Nullable
    @com.google.android.gms.common.annotation.KeepForSdk
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized java.nio.MappedByteBuffer load() throws com.google.mlkit.common.MlKitException {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.mlkit.common.sdkinternal.model.RemoteModelLoader.load():java.nio.MappedByteBuffer");
    }
}
