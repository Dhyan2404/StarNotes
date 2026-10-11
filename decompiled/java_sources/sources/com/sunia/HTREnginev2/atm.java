package com.sunia.HTREnginev2;

import android.content.Context;
import android.net.Uri;
import android.provider.DocumentsContract;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.documentfile.provider.DocumentFile;

@RequiresApi(19)
/* loaded from: classes3.dex */
public class atm extends DocumentFile {

    /* renamed from: c */
    public Context f65083c;

    /* renamed from: d */
    public Uri f65084d;

    public atm(@Nullable DocumentFile documentFile, Context context, Uri uri) {
        super(documentFile);
        this.f65083c = context;
        this.f65084d = uri;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean canRead() {
        return vaf.m57771a(this.f65083c, this.f65084d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean canWrite() {
        return vaf.m57772b(this.f65083c, this.f65084d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public DocumentFile createDirectory(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public DocumentFile createFile(String str, String str2) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean delete() {
        try {
            return DocumentsContract.deleteDocument(this.f65083c.getContentResolver(), this.f65084d);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean exists() {
        return vaf.m57774d(this.f65083c, this.f65084d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public String getName() {
        return vaf.m57776f(this.f65083c, this.f65084d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public String getType() {
        return vaf.m57778h(this.f65083c, this.f65084d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public Uri getUri() {
        return this.f65084d;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isDirectory() {
        return vaf.m57779i(this.f65083c, this.f65084d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isFile() {
        return vaf.m57780j(this.f65083c, this.f65084d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isVirtual() {
        return vaf.m57781k(this.f65083c, this.f65084d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public long lastModified() {
        return vaf.m57782l(this.f65083c, this.f65084d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public long length() {
        return vaf.m57783m(this.f65083c, this.f65084d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public DocumentFile[] listFiles() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean renameTo(String str) {
        throw new UnsupportedOperationException();
    }
}
