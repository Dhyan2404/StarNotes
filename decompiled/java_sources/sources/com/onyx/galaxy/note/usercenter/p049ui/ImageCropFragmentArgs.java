package com.onyx.galaxy.note.usercenter.p049ui;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import java.io.Serializable;
import java.util.HashMap;

/* loaded from: classes9.dex */
public class ImageCropFragmentArgs implements NavArgs {

    /* renamed from: a */
    public final HashMap f62425a;

    @NonNull
    public static ImageCropFragmentArgs fromBundle(@NonNull Bundle bundle) {
        ImageCropFragmentArgs imageCropFragmentArgs = new ImageCropFragmentArgs();
        bundle.setClassLoader(ImageCropFragmentArgs.class.getClassLoader());
        if (!bundle.containsKey("uri")) {
            throw new IllegalArgumentException("Required argument \"uri\" is missing and does not have an android:defaultValue");
        }
        if (!Parcelable.class.isAssignableFrom(Uri.class) && !Serializable.class.isAssignableFrom(Uri.class)) {
            throw new UnsupportedOperationException(Uri.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
        }
        Uri uri = (Uri) bundle.get("uri");
        if (uri == null) {
            throw new IllegalArgumentException("Argument \"uri\" is marked as non-null but was passed a null value.");
        }
        imageCropFragmentArgs.f62425a.put("uri", uri);
        if (!bundle.containsKey("savePath")) {
            throw new IllegalArgumentException("Required argument \"savePath\" is missing and does not have an android:defaultValue");
        }
        String string = bundle.getString("savePath");
        if (string == null) {
            throw new IllegalArgumentException("Argument \"savePath\" is marked as non-null but was passed a null value.");
        }
        imageCropFragmentArgs.f62425a.put("savePath", string);
        return imageCropFragmentArgs;
    }

    @NonNull
    public static ImageCropFragmentArgs fromSavedStateHandle(@NonNull SavedStateHandle savedStateHandle) {
        ImageCropFragmentArgs imageCropFragmentArgs = new ImageCropFragmentArgs();
        if (!savedStateHandle.contains("uri")) {
            throw new IllegalArgumentException("Required argument \"uri\" is missing and does not have an android:defaultValue");
        }
        Uri uri = (Uri) savedStateHandle.get("uri");
        if (uri == null) {
            throw new IllegalArgumentException("Argument \"uri\" is marked as non-null but was passed a null value.");
        }
        imageCropFragmentArgs.f62425a.put("uri", uri);
        if (!savedStateHandle.contains("savePath")) {
            throw new IllegalArgumentException("Required argument \"savePath\" is missing and does not have an android:defaultValue");
        }
        String str = (String) savedStateHandle.get("savePath");
        if (str == null) {
            throw new IllegalArgumentException("Argument \"savePath\" is marked as non-null but was passed a null value.");
        }
        imageCropFragmentArgs.f62425a.put("savePath", str);
        return imageCropFragmentArgs;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ImageCropFragmentArgs imageCropFragmentArgs = (ImageCropFragmentArgs) obj;
        if (this.f62425a.containsKey("uri") != imageCropFragmentArgs.f62425a.containsKey("uri")) {
            return false;
        }
        if (getUri() == null ? imageCropFragmentArgs.getUri() != null : !getUri().equals(imageCropFragmentArgs.getUri())) {
            return false;
        }
        if (this.f62425a.containsKey("savePath") != imageCropFragmentArgs.f62425a.containsKey("savePath")) {
            return false;
        }
        return getSavePath() == null ? imageCropFragmentArgs.getSavePath() == null : getSavePath().equals(imageCropFragmentArgs.getSavePath());
    }

    @NonNull
    public String getSavePath() {
        return (String) this.f62425a.get("savePath");
    }

    @NonNull
    public Uri getUri() {
        return (Uri) this.f62425a.get("uri");
    }

    public int hashCode() {
        return (((getUri() != null ? getUri().hashCode() : 0) + 31) * 31) + (getSavePath() != null ? getSavePath().hashCode() : 0);
    }

    @NonNull
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        if (this.f62425a.containsKey("uri")) {
            Uri uri = (Uri) this.f62425a.get("uri");
            if (Parcelable.class.isAssignableFrom(Uri.class) || uri == null) {
                bundle.putParcelable("uri", (Parcelable) Parcelable.class.cast(uri));
            } else {
                if (!Serializable.class.isAssignableFrom(Uri.class)) {
                    throw new UnsupportedOperationException(Uri.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
                }
                bundle.putSerializable("uri", (Serializable) Serializable.class.cast(uri));
            }
        }
        if (this.f62425a.containsKey("savePath")) {
            bundle.putString("savePath", (String) this.f62425a.get("savePath"));
        }
        return bundle;
    }

    @NonNull
    public SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        if (this.f62425a.containsKey("uri")) {
            Uri uri = (Uri) this.f62425a.get("uri");
            if (Parcelable.class.isAssignableFrom(Uri.class) || uri == null) {
                savedStateHandle.set("uri", (Parcelable) Parcelable.class.cast(uri));
            } else {
                if (!Serializable.class.isAssignableFrom(Uri.class)) {
                    throw new UnsupportedOperationException(Uri.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
                }
                savedStateHandle.set("uri", (Serializable) Serializable.class.cast(uri));
            }
        }
        if (this.f62425a.containsKey("savePath")) {
            savedStateHandle.set("savePath", (String) this.f62425a.get("savePath"));
        }
        return savedStateHandle;
    }

    public String toString() {
        return "ImageCropFragmentArgs{uri=" + getUri() + ", savePath=" + getSavePath() + "}";
    }

    public ImageCropFragmentArgs() {
        this.f62425a = new HashMap();
    }

    /* loaded from: classes9.dex */
    public static final class Builder {

        /* renamed from: a */
        public final HashMap f62426a;

        public Builder(@NonNull ImageCropFragmentArgs imageCropFragmentArgs) {
            HashMap hashMap = new HashMap();
            this.f62426a = hashMap;
            hashMap.putAll(imageCropFragmentArgs.f62425a);
        }

        @NonNull
        public ImageCropFragmentArgs build() {
            return new ImageCropFragmentArgs(this.f62426a);
        }

        @NonNull
        public String getSavePath() {
            return (String) this.f62426a.get("savePath");
        }

        @NonNull
        public Uri getUri() {
            return (Uri) this.f62426a.get("uri");
        }

        @NonNull
        public Builder setSavePath(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"savePath\" is marked as non-null but was passed a null value.");
            }
            this.f62426a.put("savePath", str);
            return this;
        }

        @NonNull
        public Builder setUri(@NonNull Uri uri) {
            if (uri == null) {
                throw new IllegalArgumentException("Argument \"uri\" is marked as non-null but was passed a null value.");
            }
            this.f62426a.put("uri", uri);
            return this;
        }

        public Builder(@NonNull Uri uri, @NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f62426a = hashMap;
            if (uri != null) {
                hashMap.put("uri", uri);
                if (str != null) {
                    hashMap.put("savePath", str);
                    return;
                }
                throw new IllegalArgumentException("Argument \"savePath\" is marked as non-null but was passed a null value.");
            }
            throw new IllegalArgumentException("Argument \"uri\" is marked as non-null but was passed a null value.");
        }
    }

    public ImageCropFragmentArgs(HashMap hashMap) {
        HashMap hashMap2 = new HashMap();
        this.f62425a = hashMap2;
        hashMap2.putAll(hashMap);
    }
}
