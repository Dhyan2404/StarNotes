package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.UriMatcher;
import android.net.Uri;
import android.provider.ContactsContract;
import androidx.annotation.NonNull;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
public class StreamLocalUriFetcher extends LocalUriFetcher<InputStream> {

    /* renamed from: i */
    public static final int f14512i = 1;

    /* renamed from: j */
    public static final int f14513j = 2;

    /* renamed from: k */
    public static final int f14514k = 3;

    /* renamed from: l */
    public static final int f14515l = 4;

    /* renamed from: m */
    public static final int f14516m = 5;

    /* renamed from: n */
    public static final UriMatcher f14517n;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        f14517n = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/#/photo", 2);
        uriMatcher.addURI("com.android.contacts", "contacts/#", 3);
        uriMatcher.addURI("com.android.contacts", "contacts/#/display_photo", 4);
        uriMatcher.addURI("com.android.contacts", "phone_lookup/*", 5);
    }

    public StreamLocalUriFetcher(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    /* renamed from: a */
    public final InputStream m8683a(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        int match = f14517n.match(uri);
        if (match != 1) {
            if (match == 3) {
                return m8684b(contentResolver, uri);
            }
            if (match != 5) {
                return contentResolver.openInputStream(uri);
            }
        }
        Uri lookupContact = ContactsContract.Contacts.lookupContact(contentResolver, uri);
        if (lookupContact != null) {
            return m8684b(contentResolver, lookupContact);
        }
        throw new FileNotFoundException("Contact cannot be found");
    }

    /* renamed from: b */
    public final InputStream m8684b(ContentResolver contentResolver, Uri uri) {
        return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    @NonNull
    public Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.LocalUriFetcher
    public void close(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.bumptech.glide.load.data.LocalUriFetcher
    public InputStream loadResource(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        InputStream m8683a = m8683a(uri, contentResolver);
        if (m8683a != null) {
            return m8683a;
        }
        throw new FileNotFoundException("InputStream is null for " + uri);
    }
}
