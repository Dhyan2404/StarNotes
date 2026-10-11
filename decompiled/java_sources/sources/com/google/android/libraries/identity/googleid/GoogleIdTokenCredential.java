package com.google.android.libraries.identity.googleid;

import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.core.content.FileProvider;
import androidx.credentials.CustomCredential;
import androidx.credentials.provider.utils.PrivilegedApp;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u0000 \u00162\u00020\u0001:\u0002\u0015\u0016BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u000bR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\rR\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, m61528d2 = {"Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;", "Landroidx/credentials/CustomCredential;", "id", "", "idToken", FileProvider.f5230t, "familyName", "givenName", "profilePictureUri", "Landroid/net/Uri;", "phoneNumber", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V", "getDisplayName", "()Ljava/lang/String;", "getFamilyName", "getGivenName", "getId", "getIdToken", "getPhoneNumber", "getProfilePictureUri", "()Landroid/net/Uri;", "Builder", "Companion", "java.com.google.android.libraries.identity.googleid.granule_granule"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
/* loaded from: classes5.dex */
public final class GoogleIdTokenCredential extends CustomCredential {

    @NotNull
    public static final String BUNDLE_KEY_GOOGLE_ID_TOKEN_SUBTYPE = "com.google.android.libraries.identity.googleid.BUNDLE_KEY_GOOGLE_ID_TOKEN_SUBTYPE";

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    public static final String TYPE_GOOGLE_ID_TOKEN_CREDENTIAL = "com.google.android.libraries.identity.googleid.TYPE_GOOGLE_ID_TOKEN_CREDENTIAL";

    @NotNull
    public static final String TYPE_GOOGLE_ID_TOKEN_SIWG_CREDENTIAL = "com.google.android.libraries.identity.googleid.TYPE_GOOGLE_ID_TOKEN_SIWG_CREDENTIAL";

    /* renamed from: c */
    @NotNull
    public final String f30106c;

    /* renamed from: d */
    @NotNull
    public final String f30107d;

    /* renamed from: e */
    @Nullable
    public final String f30108e;

    /* renamed from: f */
    @Nullable
    public final String f30109f;

    /* renamed from: g */
    @Nullable
    public final String f30110g;

    /* renamed from: h */
    @Nullable
    public final Uri f30111h;

    /* renamed from: i */
    @Nullable
    public final String f30112i;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\f\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0004J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0004J\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, m61528d2 = {"Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;", "", "()V", FileProvider.f5230t, "", "familyName", "givenName", "id", "idToken", "phoneNumber", "profilePictureUri", "Landroid/net/Uri;", PrivilegedApp.f6529f, "Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;", "setDisplayName", "setFamilyName", "setGivenName", "setId", "setIdToken", "setPhoneNumber", "setProfilePictureUri", "java.com.google.android.libraries.identity.googleid.granule_granule"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a */
        @NotNull
        public String f30113a = "";

        /* renamed from: b */
        @NotNull
        public String f30114b = "";

        /* renamed from: c */
        @Nullable
        public String f30115c;

        /* renamed from: d */
        @Nullable
        public String f30116d;

        /* renamed from: e */
        @Nullable
        public String f30117e;

        /* renamed from: f */
        @Nullable
        public Uri f30118f;

        /* renamed from: g */
        @Nullable
        public String f30119g;

        @NotNull
        public final GoogleIdTokenCredential build() {
            return new GoogleIdTokenCredential(this.f30113a, this.f30114b, this.f30115c, this.f30116d, this.f30117e, this.f30118f, this.f30119g);
        }

        @NotNull
        public final Builder setDisplayName(@Nullable String displayName) {
            this.f30115c = displayName;
            return this;
        }

        @NotNull
        public final Builder setFamilyName(@Nullable String familyName) {
            this.f30116d = familyName;
            return this;
        }

        @NotNull
        public final Builder setGivenName(@Nullable String givenName) {
            this.f30117e = givenName;
            return this;
        }

        @NotNull
        public final Builder setId(@NonNull String id) {
            Intrinsics.checkNotNullParameter(id, "id");
            this.f30113a = id;
            return this;
        }

        @NotNull
        public final Builder setIdToken(@NonNull String idToken) {
            Intrinsics.checkNotNullParameter(idToken, "idToken");
            this.f30114b = idToken;
            return this;
        }

        @NotNull
        public final Builder setPhoneNumber(@Nullable String phoneNumber) {
            this.f30119g = phoneNumber;
            return this;
        }

        @NotNull
        public final Builder setProfilePictureUri(@Nullable Uri profilePictureUri) {
            this.f30118f = profilePictureUri;
            return this;
        }
    }

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0007JO\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\b\u0010\u001c\u001a\u0004\u0018\u00010\u00042\b\u0010\u001d\u001a\u0004\u0018\u00010\u00042\b\u0010\u001e\u001a\u0004\u0018\u00010\u00042\b\u0010\u001f\u001a\u0004\u0018\u00010 2\b\u0010!\u001a\u0004\u0018\u00010\u0004H\u0001¢\u0006\u0002\b\"R\u0016\u0010\u0003\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u0005\u0010\u0002R\u0016\u0010\u0006\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u0007\u0010\u0002R\u0016\u0010\b\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\t\u0010\u0002R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\f\u0010\u0002R\u0016\u0010\r\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u000e\u0010\u0002R\u0016\u0010\u000f\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u0010\u0010\u0002R\u0016\u0010\u0011\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u0012\u0010\u0002R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006#"}, m61528d2 = {"Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Companion;", "", "()V", "BUNDLE_KEY_DISPLAY_NAME", "", "getBUNDLE_KEY_DISPLAY_NAME$java_com_google_android_libraries_identity_googleid_granule_granule$annotations", "BUNDLE_KEY_FAMILY_NAME", "getBUNDLE_KEY_FAMILY_NAME$java_com_google_android_libraries_identity_googleid_granule_granule$annotations", "BUNDLE_KEY_GIVEN_NAME", "getBUNDLE_KEY_GIVEN_NAME$java_com_google_android_libraries_identity_googleid_granule_granule$annotations", "BUNDLE_KEY_GOOGLE_ID_TOKEN_SUBTYPE", "BUNDLE_KEY_ID", "getBUNDLE_KEY_ID$java_com_google_android_libraries_identity_googleid_granule_granule$annotations", "BUNDLE_KEY_ID_TOKEN", "getBUNDLE_KEY_ID_TOKEN$java_com_google_android_libraries_identity_googleid_granule_granule$annotations", "BUNDLE_KEY_PHONE_NUMBER", "getBUNDLE_KEY_PHONE_NUMBER$java_com_google_android_libraries_identity_googleid_granule_granule$annotations", "BUNDLE_KEY_PROFILE_PICTURE_URI", "getBUNDLE_KEY_PROFILE_PICTURE_URI$java_com_google_android_libraries_identity_googleid_granule_granule$annotations", "TYPE_GOOGLE_ID_TOKEN_CREDENTIAL", "TYPE_GOOGLE_ID_TOKEN_SIWG_CREDENTIAL", "createFrom", "Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;", "data", "Landroid/os/Bundle;", "toBundle", "id", "idToken", FileProvider.f5230t, "familyName", "givenName", "profilePictureUri", "Landroid/net/Uri;", "phoneNumber", "toBundle$java_com_google_android_libraries_identity_googleid_granule_granule", "java.com.google.android.libraries.identity.googleid.granule_granule"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes5.dex */
    public static final class Companion {
        public Companion() {
        }

        @JvmStatic
        @NotNull
        public final GoogleIdTokenCredential createFrom(@NonNull Bundle data) {
            Uri uri;
            Object parcelable;
            Intrinsics.checkNotNullParameter(data, "data");
            try {
                String string = data.getString("com.google.android.libraries.identity.googleid.BUNDLE_KEY_ID");
                String string2 = data.getString("com.google.android.libraries.identity.googleid.BUNDLE_KEY_ID_TOKEN");
                String string3 = data.getString("com.google.android.libraries.identity.googleid.BUNDLE_KEY_DISPLAY_NAME");
                String string4 = data.getString("com.google.android.libraries.identity.googleid.BUNDLE_KEY_FAMILY_NAME");
                String string5 = data.getString("com.google.android.libraries.identity.googleid.BUNDLE_KEY_GIVEN_NAME");
                if (Build.VERSION.SDK_INT >= 33) {
                    parcelable = data.getParcelable("com.google.android.libraries.identity.googleid.BUNDLE_KEY_PROFILE_PICTURE_URI", Uri.class);
                    uri = (Uri) parcelable;
                } else {
                    uri = (Uri) data.getParcelable("com.google.android.libraries.identity.googleid.BUNDLE_KEY_PROFILE_PICTURE_URI");
                }
                String string6 = data.getString("com.google.android.libraries.identity.googleid.BUNDLE_KEY_PHONE_NUMBER");
                Intrinsics.checkNotNull(string);
                Intrinsics.checkNotNull(string2);
                return new GoogleIdTokenCredential(string, string2, string3, string4, string5, uri, string6);
            } catch (Exception e) {
                throw new GoogleIdTokenParsingException(e);
            }
        }

        public /* synthetic */ Companion(@NonNull DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GoogleIdTokenCredential(@androidx.annotation.NonNull java.lang.String r3, @androidx.annotation.NonNull java.lang.String r4, @org.jetbrains.annotations.Nullable java.lang.String r5, @org.jetbrains.annotations.Nullable java.lang.String r6, @org.jetbrains.annotations.Nullable java.lang.String r7, @org.jetbrains.annotations.Nullable android.net.Uri r8, @org.jetbrains.annotations.Nullable java.lang.String r9) {
        /*
            r2 = this;
            java.lang.String r0 = "id"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r1 = "idToken"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r1)
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r1)
            android.os.Bundle r0 = new android.os.Bundle
            r0.<init>()
            java.lang.String r1 = "com.google.android.libraries.identity.googleid.BUNDLE_KEY_ID"
            r0.putString(r1, r3)
            java.lang.String r1 = "com.google.android.libraries.identity.googleid.BUNDLE_KEY_ID_TOKEN"
            r0.putString(r1, r4)
            java.lang.String r1 = "com.google.android.libraries.identity.googleid.BUNDLE_KEY_DISPLAY_NAME"
            r0.putString(r1, r5)
            java.lang.String r1 = "com.google.android.libraries.identity.googleid.BUNDLE_KEY_FAMILY_NAME"
            r0.putString(r1, r6)
            java.lang.String r1 = "com.google.android.libraries.identity.googleid.BUNDLE_KEY_GIVEN_NAME"
            r0.putString(r1, r7)
            java.lang.String r1 = "com.google.android.libraries.identity.googleid.BUNDLE_KEY_PHONE_NUMBER"
            r0.putString(r1, r9)
            java.lang.String r1 = "com.google.android.libraries.identity.googleid.BUNDLE_KEY_PROFILE_PICTURE_URI"
            r0.putParcelable(r1, r8)
            java.lang.String r1 = "com.google.android.libraries.identity.googleid.TYPE_GOOGLE_ID_TOKEN_CREDENTIAL"
            r2.<init>(r1, r0)
            r2.f30106c = r3
            r2.f30107d = r4
            r2.f30108e = r5
            r2.f30109f = r6
            r2.f30110g = r7
            r2.f30111h = r8
            r2.f30112i = r9
            int r2 = r3.length()
            if (r2 <= 0) goto L60
            int r2 = r4.length()
            if (r2 <= 0) goto L58
            return
        L58:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "idToken should not be empty"
            r2.<init>(r3)
            throw r2
        L60:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "id should not be empty"
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.libraries.identity.googleid.GoogleIdTokenCredential.<init>(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, android.net.Uri, java.lang.String):void");
    }

    @JvmStatic
    @NotNull
    public static final GoogleIdTokenCredential createFrom(@NonNull Bundle bundle) {
        return INSTANCE.createFrom(bundle);
    }

    @androidx.annotation.Nullable
    /* renamed from: getDisplayName, reason: from getter */
    public final String getF30108e() {
        return this.f30108e;
    }

    @androidx.annotation.Nullable
    /* renamed from: getFamilyName, reason: from getter */
    public final String getF30109f() {
        return this.f30109f;
    }

    @androidx.annotation.Nullable
    /* renamed from: getGivenName, reason: from getter */
    public final String getF30110g() {
        return this.f30110g;
    }

    @NotNull
    /* renamed from: getId, reason: from getter */
    public final String getF30106c() {
        return this.f30106c;
    }

    @NotNull
    /* renamed from: getIdToken, reason: from getter */
    public final String getF30107d() {
        return this.f30107d;
    }

    @androidx.annotation.Nullable
    /* renamed from: getPhoneNumber, reason: from getter */
    public final String getF30112i() {
        return this.f30112i;
    }

    @androidx.annotation.Nullable
    /* renamed from: getProfilePictureUri, reason: from getter */
    public final Uri getF30111h() {
        return this.f30111h;
    }
}
