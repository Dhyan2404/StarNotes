package com.google.mlkit.common.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.sdkinternal.Constants;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.common.sdkinternal.ModelType;
import com.google.mlkit.common.sdkinternal.model.ModelFileHelper;
import com.google.mlkit.common.sdkinternal.model.RemoteModelFileMover;
import java.io.File;

/* loaded from: classes6.dex */
public final class zza implements RemoteModelFileMover {

    /* renamed from: c */
    public static final GmsLogger f36519c = new GmsLogger("CustomModelFileMover", "");

    /* renamed from: a */
    public final String f36520a;

    /* renamed from: b */
    public final ModelFileHelper f36521b;

    public zza(@NonNull MlKitContext mlKitContext, @NonNull String str) {
        this.f36520a = str;
        this.f36521b = new ModelFileHelper(mlKitContext);
    }

    /* renamed from: a */
    public static boolean m28519a(File file, File file2) {
        String absolutePath = file.getAbsolutePath();
        String absolutePath2 = file2.getAbsolutePath();
        if (file.renameTo(file2)) {
            f36519c.m22157d("CustomModelFileMover", String.format("Moved file from %s to %s successfully", absolutePath, absolutePath2));
            file2.setExecutable(false);
            file2.setWritable(false);
            return true;
        }
        GmsLogger gmsLogger = f36519c;
        gmsLogger.m22157d("CustomModelFileMover", String.format("Move file to %s failed, remove the temp file %s.", absolutePath2, absolutePath));
        if (!file.delete()) {
            gmsLogger.m22157d("CustomModelFileMover", "Failed to delete the temp file: ".concat(String.valueOf(absolutePath)));
        }
        return false;
    }

    @Override // com.google.mlkit.common.sdkinternal.model.RemoteModelFileMover
    public final File getModelFileDestination() throws MlKitException {
        File modelDir = this.f36521b.getModelDir(this.f36520a, ModelType.CUSTOM);
        return new File(new File(modelDir, String.valueOf(this.f36521b.getLatestCachedModelVersion(modelDir) + 1)), Constants.MODEL_FILE_NAME);
    }

    @Override // com.google.mlkit.common.sdkinternal.model.RemoteModelFileMover
    @Nullable
    public final File moveAllFilesFromPrivateTempToPrivateDestination(File file) throws MlKitException {
        File file2;
        ModelFileHelper modelFileHelper = this.f36521b;
        String str = this.f36520a;
        ModelType modelType = ModelType.CUSTOM;
        File modelDir = modelFileHelper.getModelDir(str, modelType);
        File file3 = new File(new File(modelDir, String.valueOf(this.f36521b.getLatestCachedModelVersion(modelDir) + 1)), Constants.MODEL_FILE_NAME);
        File parentFile = file3.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            ((File) Preconditions.checkNotNull(parentFile)).mkdirs();
        }
        File file4 = null;
        if (!m28519a(file, file3)) {
            return null;
        }
        File tempFileInPrivateFolder = this.f36521b.getTempFileInPrivateFolder(this.f36520a, modelType, Constants.AUTOML_IMAGE_LABELING_LABELS_FILE_NAME);
        if (tempFileInPrivateFolder.exists()) {
            file2 = new File(parentFile, Constants.AUTOML_IMAGE_LABELING_LABELS_FILE_NAME);
            if (!m28519a(tempFileInPrivateFolder, file2)) {
                return null;
            }
        } else {
            file2 = null;
        }
        File tempFileInPrivateFolder2 = this.f36521b.getTempFileInPrivateFolder(this.f36520a, modelType, Constants.AUTOML_IMAGE_LABELING_MANIFEST_JSON_FILE_NAME);
        if (tempFileInPrivateFolder2.exists()) {
            File file5 = new File(parentFile, Constants.AUTOML_IMAGE_LABELING_MANIFEST_JSON_FILE_NAME);
            if (!m28519a(tempFileInPrivateFolder2, file5)) {
                return null;
            }
            file4 = file5;
        }
        return (file2 == null && file4 == null) ? file3 : parentFile;
    }
}
