package com.google.firebase.auth;

import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes6.dex */
public interface UserInfo {
    @Nullable
    String getDisplayName();

    @Nullable
    String getEmail();

    @Nullable
    String getPhoneNumber();

    @Nullable
    Uri getPhotoUrl();

    @NonNull
    String getProviderId();

    @NonNull
    String getUid();

    boolean isEmailVerified();
}
