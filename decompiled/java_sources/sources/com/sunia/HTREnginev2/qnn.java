package com.sunia.HTREnginev2;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.documentfile.provider.DocumentFile;
import java.util.ArrayList;

@RequiresApi(21)
/* loaded from: classes3.dex */
public class qnn extends DocumentFile {

    /* renamed from: c */
    public Context f82250c;

    /* renamed from: d */
    public Uri f82251d;

    public qnn(@Nullable DocumentFile documentFile, Context context, Uri uri) {
        super(documentFile);
        this.f82250c = context;
        this.f82251d = uri;
    }

    /* renamed from: a */
    public static void m56736a(@Nullable AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                autoCloseable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }

    @Nullable
    /* renamed from: b */
    public static Uri m56737b(Context context, Uri uri, String str, String str2) {
        try {
            return DocumentsContract.createDocument(context.getContentResolver(), uri, str, str2);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean canRead() {
        return vaf.m57771a(this.f82250c, this.f82251d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean canWrite() {
        return vaf.m57772b(this.f82250c, this.f82251d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public DocumentFile createDirectory(String str) {
        Uri m56737b = m56737b(this.f82250c, this.f82251d, "vnd.android.document/directory", str);
        if (m56737b != null) {
            return new qnn(this, this.f82250c, m56737b);
        }
        return null;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public DocumentFile createFile(String str, String str2) {
        Uri m56737b = m56737b(this.f82250c, this.f82251d, str, str2);
        if (m56737b != null) {
            return new qnn(this, this.f82250c, m56737b);
        }
        return null;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean delete() {
        try {
            return DocumentsContract.deleteDocument(this.f82250c.getContentResolver(), this.f82251d);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean exists() {
        return vaf.m57774d(this.f82250c, this.f82251d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public String getName() {
        return vaf.m57776f(this.f82250c, this.f82251d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public String getType() {
        return vaf.m57778h(this.f82250c, this.f82251d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public Uri getUri() {
        return this.f82251d;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isDirectory() {
        return vaf.m57779i(this.f82250c, this.f82251d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isFile() {
        return vaf.m57780j(this.f82250c, this.f82251d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isVirtual() {
        return vaf.m57781k(this.f82250c, this.f82251d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public long lastModified() {
        return vaf.m57782l(this.f82250c, this.f82251d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public long length() {
        return vaf.m57783m(this.f82250c, this.f82251d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public DocumentFile[] listFiles() {
        ContentResolver contentResolver = this.f82250c.getContentResolver();
        Uri uri = this.f82251d;
        Uri buildChildDocumentsUriUsingTree = DocumentsContract.buildChildDocumentsUriUsingTree(uri, DocumentsContract.getDocumentId(uri));
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                cursor = contentResolver.query(buildChildDocumentsUriUsingTree, new String[]{"document_id"}, null, null, null);
                while (cursor.moveToNext()) {
                    arrayList.add(DocumentsContract.buildDocumentUriUsingTree(this.f82251d, cursor.getString(0)));
                }
            } catch (Exception e) {
                Log.w("DocumentFile", "Failed query: " + e);
            }
            Uri[] uriArr = (Uri[]) arrayList.toArray(new Uri[arrayList.size()]);
            DocumentFile[] documentFileArr = new DocumentFile[uriArr.length];
            for (int i = 0; i < uriArr.length; i++) {
                documentFileArr[i] = new qnn(this, this.f82250c, uriArr[i]);
            }
            return documentFileArr;
        } finally {
            m56736a(cursor);
        }
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean renameTo(String str) {
        try {
            Uri renameDocument = DocumentsContract.renameDocument(this.f82250c.getContentResolver(), this.f82251d, str);
            if (renameDocument != null) {
                this.f82251d = renameDocument;
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }
}
