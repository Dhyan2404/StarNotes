package com.onyx.galaxy.note.settings.data;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.galaxy.note.C10651R;
import com.permissionx.guolindev.request.RequestManageExternalStoragePermission;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b_\n\u0002\u0010%\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bm\u0010nR\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u000f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\r\u0010\t\u001a\u0004\b\u000e\u0010\u000bR\u0017\u0010\u0012\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\u0010\u0010\t\u001a\u0004\b\u0011\u0010\u000bR\u0017\u0010\u0015\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\u0013\u0010\t\u001a\u0004\b\u0014\u0010\u000bR\u0017\u0010\u0018\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\u0016\u0010\t\u001a\u0004\b\u0017\u0010\u000bR\u0017\u0010\u001b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\u0019\u0010\t\u001a\u0004\b\u001a\u0010\u000bR\u0017\u0010\u001e\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\u001c\u0010\t\u001a\u0004\b\u001d\u0010\u000bR\u0017\u0010!\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\u001f\u0010\t\u001a\u0004\b \u0010\u000bR\u0017\u0010$\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\"\u0010\t\u001a\u0004\b#\u0010\u000bR\u0017\u0010'\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b%\u0010\t\u001a\u0004\b&\u0010\u000bR\u0017\u0010*\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b(\u0010\t\u001a\u0004\b)\u0010\u000bR\u0017\u0010-\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b+\u0010\t\u001a\u0004\b,\u0010\u000bR\u0017\u00100\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b.\u0010\t\u001a\u0004\b/\u0010\u000bR\u0017\u00103\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b1\u0010\t\u001a\u0004\b2\u0010\u000bR\u0017\u00106\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b4\u0010\t\u001a\u0004\b5\u0010\u000bR\u0017\u00109\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b7\u0010\t\u001a\u0004\b8\u0010\u000bR\u0017\u0010<\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b:\u0010\t\u001a\u0004\b;\u0010\u000bR\u0017\u0010?\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b=\u0010\t\u001a\u0004\b>\u0010\u000bR\u0017\u0010B\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b@\u0010\t\u001a\u0004\bA\u0010\u000bR\u0017\u0010E\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\bC\u0010\t\u001a\u0004\bD\u0010\u000bR\u0017\u0010H\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\bF\u0010\t\u001a\u0004\bG\u0010\u000bR\u0017\u0010K\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\bI\u0010\t\u001a\u0004\bJ\u0010\u000bR\u0017\u0010N\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\bL\u0010\t\u001a\u0004\bM\u0010\u000bR\u0017\u0010Q\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\bO\u0010\t\u001a\u0004\bP\u0010\u000bR\u0017\u0010T\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\bR\u0010\t\u001a\u0004\bS\u0010\u000bR\u0017\u0010W\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\bU\u0010\t\u001a\u0004\bV\u0010\u000bR\u0017\u0010Z\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\bX\u0010\t\u001a\u0004\bY\u0010\u000bR\u0017\u0010]\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b[\u0010\t\u001a\u0004\b\\\u0010\u000bR\u0017\u0010`\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b^\u0010\t\u001a\u0004\b_\u0010\u000bR\u0017\u0010c\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\ba\u0010\t\u001a\u0004\bb\u0010\u000bR\u0017\u0010f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\bd\u0010\t\u001a\u0004\be\u0010\u000bR#\u0010l\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00070g8\u0006¢\u0006\f\n\u0004\bh\u0010i\u001a\u0004\bj\u0010k¨\u0006o"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;", "", "", "PERMISSION_STORAGE", Constants.STRING_SIG, "PERMISSION_FLOATING_WINDOW", "PERMISSION_IMAGE", "", "a", "I", "getPERMISSION_AUDIO_FUNCTION_NAME", "()I", "PERMISSION_AUDIO_FUNCTION_NAME", "b", "getPERMISSION_AUDIO_INTENT_NAME", "PERMISSION_AUDIO_INTENT_NAME", "c", "getPERMISSION_CAMERA_FUNCTION_NAME", "PERMISSION_CAMERA_FUNCTION_NAME", "d", "getPERMISSION_CAMERA_INTENT_NAME", "PERMISSION_CAMERA_INTENT_NAME", "e", "getPERMISSION_IMPORT_FILE_FUNCTION_NAME", "PERMISSION_IMPORT_FILE_FUNCTION_NAME", C6997f.f39671c, "getPERMISSION_IMPORT_FILE_INTENT_NAME", "PERMISSION_IMPORT_FILE_INTENT_NAME", C6998g.f39679a, "getPERMISSION_IMPORT_PHOTOS_FUNCTION_NAME", "PERMISSION_IMPORT_PHOTOS_FUNCTION_NAME", C6999h.f39688c, "getPERMISSION_IMPORT_PHOTOS_INTENT_NAME", "PERMISSION_IMPORT_PHOTOS_INTENT_NAME", "i", "getPERMISSION_IMPORT_FONTS_FUNCTION_NAME", "PERMISSION_IMPORT_FONTS_FUNCTION_NAME", "j", "getPERMISSION_IMPORT_FONTS_INTENT_NAME", "PERMISSION_IMPORT_FONTS_INTENT_NAME", C4921e.f26537n, "getPERMISSION_IMPORT_STICKER_FUNCTION_NAME", "PERMISSION_IMPORT_STICKER_FUNCTION_NAME", "l", "getPERMISSION_IMPORT_STICKER_INTENT_NAME", "PERMISSION_IMPORT_STICKER_INTENT_NAME", "m", "getPERMISSION_LOCAL_BACKUP_FUNCTION_NAME", "PERMISSION_LOCAL_BACKUP_FUNCTION_NAME", GoogleApiAvailabilityLight.f29016b, "getPERMISSION_LOCAL_BACKUP_INTENT_NAME", "PERMISSION_LOCAL_BACKUP_INTENT_NAME", C4921e.f26528e, "getPERMISSION_CLOUD_BACKUP_FUNCTION_NAME", "PERMISSION_CLOUD_BACKUP_FUNCTION_NAME", "p", "getPERMISSION_CLOUD_BACKUP_INTENT_NAME", "PERMISSION_CLOUD_BACKUP_INTENT_NAME", "q", "getPERMISSION_SCREEN_SHOT_FUNCTION_NAME", "PERMISSION_SCREEN_SHOT_FUNCTION_NAME", "r", "getPERMISSION_SCREEN_SHOT_INTENT_NAME", "PERMISSION_SCREEN_SHOT_INTENT_NAME", "s", "getPERMISSION_EXPORT_NOTE_FUNCTION_NAME", "PERMISSION_EXPORT_NOTE_FUNCTION_NAME", "t", "getPERMISSION_EXPORT_NOTE_INTENT_NAME", "PERMISSION_EXPORT_NOTE_INTENT_NAME", "u", "getPERMISSION_EXPORT_PNG_FUNCTION_NAME", "PERMISSION_EXPORT_PNG_FUNCTION_NAME", "v", "getPERMISSION_EXPORT_PNG_INTENT_NAME", "PERMISSION_EXPORT_PNG_INTENT_NAME", "w", "getPERMISSION_USER_AVATAR_CAMERA_INTENT_NAME", "PERMISSION_USER_AVATAR_CAMERA_INTENT_NAME", "x", "getPERMISSION_USER_AVATAR_PHOTO_FUNCTION_NAME", "PERMISSION_USER_AVATAR_PHOTO_FUNCTION_NAME", "y", "getPERMISSION_USER_AVATAR_PHOTO_INTENT_NAME", "PERMISSION_USER_AVATAR_PHOTO_INTENT_NAME", "z", "getPERMISSION_FLOATING_COLOR_PICKER_FUNCTION_NAME", "PERMISSION_FLOATING_COLOR_PICKER_FUNCTION_NAME", "A", "getPERMISSION_FLOATING_COLOR_PICKER_INTENT_NAME", "PERMISSION_FLOATING_COLOR_PICKER_INTENT_NAME", "B", "getPERMISSION_FLOATING_EYES_COMFORT_FUNCTION_NAME", "PERMISSION_FLOATING_EYES_COMFORT_FUNCTION_NAME", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "getPERMISSION_FLOATING_EYES_COMFORT_INTENT_NAME", "PERMISSION_FLOATING_EYES_COMFORT_INTENT_NAME", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "getPERMISSION_UPLOAD_PICTURES_FUNCTION_NAME", "PERMISSION_UPLOAD_PICTURES_FUNCTION_NAME", "E", "getPERMISSION_UPLOAD_PICTURES_INTENT_NAME", "PERMISSION_UPLOAD_PICTURES_INTENT_NAME", "", "F", "Ljava/util/Map;", "getPermissionMap", "()Ljava/util/Map;", "permissionMap", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PermissionRequestConst {

    /* renamed from: F, reason: from kotlin metadata */
    @NotNull
    public static final Map<String, Integer> permissionMap;

    @NotNull
    public static final String PERMISSION_FLOATING_WINDOW = "permission_floating_window";

    @NotNull
    public static final String PERMISSION_IMAGE = "permission_image";

    @NotNull
    public static final String PERMISSION_STORAGE = "permission_storage";

    @NotNull
    public static final PermissionRequestConst INSTANCE = new PermissionRequestConst();

    /* renamed from: a, reason: from kotlin metadata */
    public static final int PERMISSION_AUDIO_FUNCTION_NAME = C10651R.string.audio_function_name;

    /* renamed from: b, reason: from kotlin metadata */
    public static final int PERMISSION_AUDIO_INTENT_NAME = C10651R.string.audio_intent_name;

    /* renamed from: c, reason: from kotlin metadata */
    public static final int PERMISSION_CAMERA_FUNCTION_NAME = C10651R.string.camera_function_name;

    /* renamed from: d, reason: from kotlin metadata */
    public static final int PERMISSION_CAMERA_INTENT_NAME = C10651R.string.camera_intent_name;

    /* renamed from: e, reason: from kotlin metadata */
    public static final int PERMISSION_IMPORT_FILE_FUNCTION_NAME = C10651R.string.import_file_name;

    /* renamed from: f, reason: from kotlin metadata */
    public static final int PERMISSION_IMPORT_FILE_INTENT_NAME = C10651R.string.import_file_intent_name;

    /* renamed from: g, reason: from kotlin metadata */
    public static final int PERMISSION_IMPORT_PHOTOS_FUNCTION_NAME = C10651R.string.import_photos_function_name;

    /* renamed from: h, reason: from kotlin metadata */
    public static final int PERMISSION_IMPORT_PHOTOS_INTENT_NAME = C10651R.string.import_photos_intent_name;

    /* renamed from: i, reason: from kotlin metadata */
    public static final int PERMISSION_IMPORT_FONTS_FUNCTION_NAME = C10651R.string.import_fonts_function_name;

    /* renamed from: j, reason: from kotlin metadata */
    public static final int PERMISSION_IMPORT_FONTS_INTENT_NAME = C10651R.string.import_fonts_intent_name;

    /* renamed from: k, reason: from kotlin metadata */
    public static final int PERMISSION_IMPORT_STICKER_FUNCTION_NAME = C10651R.string.import_sticker_function_name;

    /* renamed from: l, reason: from kotlin metadata */
    public static final int PERMISSION_IMPORT_STICKER_INTENT_NAME = C10651R.string.import_sticker_intent_name;

    /* renamed from: m, reason: from kotlin metadata */
    public static final int PERMISSION_LOCAL_BACKUP_FUNCTION_NAME = C10651R.string.local_backup_function_name;

    /* renamed from: n, reason: from kotlin metadata */
    public static final int PERMISSION_LOCAL_BACKUP_INTENT_NAME = C10651R.string.local_backup_intent_name;

    /* renamed from: o, reason: from kotlin metadata */
    public static final int PERMISSION_CLOUD_BACKUP_FUNCTION_NAME = C10651R.string.cloud_backup_function_name;

    /* renamed from: p, reason: from kotlin metadata */
    public static final int PERMISSION_CLOUD_BACKUP_INTENT_NAME = C10651R.string.cloud_backup_intent_name;

    /* renamed from: q, reason: from kotlin metadata */
    public static final int PERMISSION_SCREEN_SHOT_FUNCTION_NAME = C10651R.string.screen_shot_function_name;

    /* renamed from: r, reason: from kotlin metadata */
    public static final int PERMISSION_SCREEN_SHOT_INTENT_NAME = C10651R.string.screen_shot_intent_name;

    /* renamed from: s, reason: from kotlin metadata */
    public static final int PERMISSION_EXPORT_NOTE_FUNCTION_NAME = C10651R.string.export_note_function_name;

    /* renamed from: t, reason: from kotlin metadata */
    public static final int PERMISSION_EXPORT_NOTE_INTENT_NAME = C10651R.string.export_note_intent_name;

    /* renamed from: u, reason: from kotlin metadata */
    public static final int PERMISSION_EXPORT_PNG_FUNCTION_NAME = C10651R.string.export_note_png_function_name;

    /* renamed from: v, reason: from kotlin metadata */
    public static final int PERMISSION_EXPORT_PNG_INTENT_NAME = C10651R.string.export_note_png_intent_name;

    /* renamed from: w, reason: from kotlin metadata */
    public static final int PERMISSION_USER_AVATAR_CAMERA_INTENT_NAME = C10651R.string.user_avatar_camera_intent_name;

    /* renamed from: x, reason: from kotlin metadata */
    public static final int PERMISSION_USER_AVATAR_PHOTO_FUNCTION_NAME = C10651R.string.user_avatar_photo_function_name;

    /* renamed from: y, reason: from kotlin metadata */
    public static final int PERMISSION_USER_AVATAR_PHOTO_INTENT_NAME = C10651R.string.user_avatar_photo_intent_name;

    /* renamed from: z, reason: from kotlin metadata */
    public static final int PERMISSION_FLOATING_COLOR_PICKER_FUNCTION_NAME = C10651R.string.color_picker_function_name;

    /* renamed from: A, reason: from kotlin metadata */
    public static final int PERMISSION_FLOATING_COLOR_PICKER_INTENT_NAME = C10651R.string.color_picker_intent_name;

    /* renamed from: B, reason: from kotlin metadata */
    public static final int PERMISSION_FLOATING_EYES_COMFORT_FUNCTION_NAME = C10651R.string.eyes_comfort_feature;

    /* renamed from: C, reason: from kotlin metadata */
    public static final int PERMISSION_FLOATING_EYES_COMFORT_INTENT_NAME = C10651R.string.eyes_comfort_color_applied;

    /* renamed from: D, reason: from kotlin metadata */
    public static final int PERMISSION_UPLOAD_PICTURES_FUNCTION_NAME = C10651R.string.upload_picture_function_name;

    /* renamed from: E, reason: from kotlin metadata */
    public static final int PERMISSION_UPLOAD_PICTURES_INTENT_NAME = C10651R.string.upload_picture_intent_name;

    static {
        Map<String, Integer> mutableMapOf;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to("android.permission.CAMERA", Integer.valueOf(C10651R.string.permission_name_camera)), TuplesKt.m61535to("android.permission.RECORD_AUDIO", Integer.valueOf(C10651R.string.permission_name_audio)), TuplesKt.m61535to("android.permission.READ_MEDIA_VISUAL_USER_SELECTED", -1), TuplesKt.m61535to("android.permission.READ_MEDIA_IMAGES", Integer.valueOf(C10651R.string.permission_name_photos)), TuplesKt.m61535to("android.permission.READ_MEDIA_VIDEO", Integer.valueOf(C10651R.string.permission_name_video)), TuplesKt.m61535to("android.permission.READ_EXTERNAL_STORAGE", Integer.valueOf(C10651R.string.permission_name_storage)), TuplesKt.m61535to("android.permission.WRITE_EXTERNAL_STORAGE", Integer.valueOf(C10651R.string.permission_name_storage)), TuplesKt.m61535to(RequestManageExternalStoragePermission.MANAGE_EXTERNAL_STORAGE, Integer.valueOf(C10651R.string.permission_name_file_manager)));
        permissionMap = mutableMapOf;
    }

    public final int getPERMISSION_AUDIO_FUNCTION_NAME() {
        return PERMISSION_AUDIO_FUNCTION_NAME;
    }

    public final int getPERMISSION_AUDIO_INTENT_NAME() {
        return PERMISSION_AUDIO_INTENT_NAME;
    }

    public final int getPERMISSION_CAMERA_FUNCTION_NAME() {
        return PERMISSION_CAMERA_FUNCTION_NAME;
    }

    public final int getPERMISSION_CAMERA_INTENT_NAME() {
        return PERMISSION_CAMERA_INTENT_NAME;
    }

    public final int getPERMISSION_CLOUD_BACKUP_FUNCTION_NAME() {
        return PERMISSION_CLOUD_BACKUP_FUNCTION_NAME;
    }

    public final int getPERMISSION_CLOUD_BACKUP_INTENT_NAME() {
        return PERMISSION_CLOUD_BACKUP_INTENT_NAME;
    }

    public final int getPERMISSION_EXPORT_NOTE_FUNCTION_NAME() {
        return PERMISSION_EXPORT_NOTE_FUNCTION_NAME;
    }

    public final int getPERMISSION_EXPORT_NOTE_INTENT_NAME() {
        return PERMISSION_EXPORT_NOTE_INTENT_NAME;
    }

    public final int getPERMISSION_EXPORT_PNG_FUNCTION_NAME() {
        return PERMISSION_EXPORT_PNG_FUNCTION_NAME;
    }

    public final int getPERMISSION_EXPORT_PNG_INTENT_NAME() {
        return PERMISSION_EXPORT_PNG_INTENT_NAME;
    }

    public final int getPERMISSION_FLOATING_COLOR_PICKER_FUNCTION_NAME() {
        return PERMISSION_FLOATING_COLOR_PICKER_FUNCTION_NAME;
    }

    public final int getPERMISSION_FLOATING_COLOR_PICKER_INTENT_NAME() {
        return PERMISSION_FLOATING_COLOR_PICKER_INTENT_NAME;
    }

    public final int getPERMISSION_FLOATING_EYES_COMFORT_FUNCTION_NAME() {
        return PERMISSION_FLOATING_EYES_COMFORT_FUNCTION_NAME;
    }

    public final int getPERMISSION_FLOATING_EYES_COMFORT_INTENT_NAME() {
        return PERMISSION_FLOATING_EYES_COMFORT_INTENT_NAME;
    }

    public final int getPERMISSION_IMPORT_FILE_FUNCTION_NAME() {
        return PERMISSION_IMPORT_FILE_FUNCTION_NAME;
    }

    public final int getPERMISSION_IMPORT_FILE_INTENT_NAME() {
        return PERMISSION_IMPORT_FILE_INTENT_NAME;
    }

    public final int getPERMISSION_IMPORT_FONTS_FUNCTION_NAME() {
        return PERMISSION_IMPORT_FONTS_FUNCTION_NAME;
    }

    public final int getPERMISSION_IMPORT_FONTS_INTENT_NAME() {
        return PERMISSION_IMPORT_FONTS_INTENT_NAME;
    }

    public final int getPERMISSION_IMPORT_PHOTOS_FUNCTION_NAME() {
        return PERMISSION_IMPORT_PHOTOS_FUNCTION_NAME;
    }

    public final int getPERMISSION_IMPORT_PHOTOS_INTENT_NAME() {
        return PERMISSION_IMPORT_PHOTOS_INTENT_NAME;
    }

    public final int getPERMISSION_IMPORT_STICKER_FUNCTION_NAME() {
        return PERMISSION_IMPORT_STICKER_FUNCTION_NAME;
    }

    public final int getPERMISSION_IMPORT_STICKER_INTENT_NAME() {
        return PERMISSION_IMPORT_STICKER_INTENT_NAME;
    }

    public final int getPERMISSION_LOCAL_BACKUP_FUNCTION_NAME() {
        return PERMISSION_LOCAL_BACKUP_FUNCTION_NAME;
    }

    public final int getPERMISSION_LOCAL_BACKUP_INTENT_NAME() {
        return PERMISSION_LOCAL_BACKUP_INTENT_NAME;
    }

    public final int getPERMISSION_SCREEN_SHOT_FUNCTION_NAME() {
        return PERMISSION_SCREEN_SHOT_FUNCTION_NAME;
    }

    public final int getPERMISSION_SCREEN_SHOT_INTENT_NAME() {
        return PERMISSION_SCREEN_SHOT_INTENT_NAME;
    }

    public final int getPERMISSION_UPLOAD_PICTURES_FUNCTION_NAME() {
        return PERMISSION_UPLOAD_PICTURES_FUNCTION_NAME;
    }

    public final int getPERMISSION_UPLOAD_PICTURES_INTENT_NAME() {
        return PERMISSION_UPLOAD_PICTURES_INTENT_NAME;
    }

    public final int getPERMISSION_USER_AVATAR_CAMERA_INTENT_NAME() {
        return PERMISSION_USER_AVATAR_CAMERA_INTENT_NAME;
    }

    public final int getPERMISSION_USER_AVATAR_PHOTO_FUNCTION_NAME() {
        return PERMISSION_USER_AVATAR_PHOTO_FUNCTION_NAME;
    }

    public final int getPERMISSION_USER_AVATAR_PHOTO_INTENT_NAME() {
        return PERMISSION_USER_AVATAR_PHOTO_INTENT_NAME;
    }

    @NotNull
    public final Map<String, Integer> getPermissionMap() {
        return permissionMap;
    }
}
