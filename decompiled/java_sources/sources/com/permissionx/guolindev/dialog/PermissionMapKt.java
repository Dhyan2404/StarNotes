package com.permissionx.guolindev.dialog;

import android.annotation.TargetApi;
import com.permissionx.guolindev.PermissionX;
import com.permissionx.guolindev.request.RequestBackgroundLocationPermission;
import com.permissionx.guolindev.request.RequestBodySensorsBackgroundPermission;
import com.permissionx.guolindev.request.RequestInstallPackagesPermission;
import com.permissionx.guolindev.request.RequestManageExternalStoragePermission;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.SetsKt__SetsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\b\u000f\"\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00010\u00008\u0006¢\u0006\f\n\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005\"&\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u00078\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"&\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u00078\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\t\u001a\u0004\b\u000e\u0010\u000b\"&\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u00078\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0010\u0010\t\u001a\u0004\b\u0011\u0010\u000b\"&\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u00078\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0013\u0010\t\u001a\u0004\b\u0014\u0010\u000b¨\u0006\u0016"}, m61528d2 = {"", "", "a", "Ljava/util/Set;", "getAllSpecialPermissions", "()Ljava/util/Set;", "allSpecialPermissions", "", "b", "Ljava/util/Map;", "getPermissionMapOnQ", "()Ljava/util/Map;", "permissionMapOnQ", "c", "getPermissionMapOnR", "permissionMapOnR", "d", "getPermissionMapOnS", "permissionMapOnS", "e", "getPermissionMapOnT", "permissionMapOnT", "permissionx_release"}, m61529k = 2, m61530mv = {1, 7, 1})
/* loaded from: classes9.dex */
public final class PermissionMapKt {

    /* renamed from: a */
    @NotNull
    public static final Set<String> f63223a;

    /* renamed from: b */
    @TargetApi(29)
    @NotNull
    public static final Map<String, String> f63224b;

    /* renamed from: c */
    @TargetApi(30)
    @NotNull
    public static final Map<String, String> f63225c;

    /* renamed from: d */
    @TargetApi(31)
    @NotNull
    public static final Map<String, String> f63226d;

    /* renamed from: e */
    @TargetApi(33)
    @NotNull
    public static final Map<String, String> f63227e;

    static {
        Set<String> of;
        Map<String, String> mapOf;
        Map mapOf2;
        Map mutableMap;
        Map<String, String> map;
        Map mapOf3;
        Map mutableMap2;
        Map<String, String> map2;
        Map mapOf4;
        Map mutableMap3;
        Map<String, String> map3;
        of = SetsKt__SetsKt.setOf((Object[]) new String[]{RequestBackgroundLocationPermission.ACCESS_BACKGROUND_LOCATION, "android.permission.SYSTEM_ALERT_WINDOW", "android.permission.WRITE_SETTINGS", RequestManageExternalStoragePermission.MANAGE_EXTERNAL_STORAGE, RequestInstallPackagesPermission.REQUEST_INSTALL_PACKAGES, PermissionX.permission.POST_NOTIFICATIONS, RequestBodySensorsBackgroundPermission.BODY_SENSORS_BACKGROUND});
        f63223a = of;
        mapOf = MapsKt__MapsKt.mapOf(TuplesKt.m61535to("android.permission.READ_CALENDAR", "android.permission-group.CALENDAR"), TuplesKt.m61535to("android.permission.WRITE_CALENDAR", "android.permission-group.CALENDAR"), TuplesKt.m61535to("android.permission.READ_CALL_LOG", "android.permission-group.CALL_LOG"), TuplesKt.m61535to("android.permission.WRITE_CALL_LOG", "android.permission-group.CALL_LOG"), TuplesKt.m61535to("android.permission.PROCESS_OUTGOING_CALLS", "android.permission-group.CALL_LOG"), TuplesKt.m61535to("android.permission.CAMERA", "android.permission-group.CAMERA"), TuplesKt.m61535to("android.permission.READ_CONTACTS", "android.permission-group.CONTACTS"), TuplesKt.m61535to("android.permission.WRITE_CONTACTS", "android.permission-group.CONTACTS"), TuplesKt.m61535to("android.permission.GET_ACCOUNTS", "android.permission-group.CONTACTS"), TuplesKt.m61535to("android.permission.ACCESS_FINE_LOCATION", "android.permission-group.LOCATION"), TuplesKt.m61535to("android.permission.ACCESS_COARSE_LOCATION", "android.permission-group.LOCATION"), TuplesKt.m61535to(RequestBackgroundLocationPermission.ACCESS_BACKGROUND_LOCATION, "android.permission-group.LOCATION"), TuplesKt.m61535to("android.permission.RECORD_AUDIO", "android.permission-group.MICROPHONE"), TuplesKt.m61535to("android.permission.READ_PHONE_STATE", "android.permission-group.PHONE"), TuplesKt.m61535to("android.permission.READ_PHONE_NUMBERS", "android.permission-group.PHONE"), TuplesKt.m61535to("android.permission.CALL_PHONE", "android.permission-group.PHONE"), TuplesKt.m61535to("android.permission.ANSWER_PHONE_CALLS", "android.permission-group.PHONE"), TuplesKt.m61535to("com.android.voicemail.permission.ADD_VOICEMAIL", "android.permission-group.PHONE"), TuplesKt.m61535to("android.permission.USE_SIP", "android.permission-group.PHONE"), TuplesKt.m61535to("android.permission.ACCEPT_HANDOVER", "android.permission-group.PHONE"), TuplesKt.m61535to("android.permission.BODY_SENSORS", "android.permission-group.SENSORS"), TuplesKt.m61535to("android.permission.ACTIVITY_RECOGNITION", "android.permission-group.ACTIVITY_RECOGNITION"), TuplesKt.m61535to("android.permission.SEND_SMS", "android.permission-group.SMS"), TuplesKt.m61535to("android.permission.RECEIVE_SMS", "android.permission-group.SMS"), TuplesKt.m61535to("android.permission.READ_SMS", "android.permission-group.SMS"), TuplesKt.m61535to("android.permission.RECEIVE_WAP_PUSH", "android.permission-group.SMS"), TuplesKt.m61535to("android.permission.RECEIVE_MMS", "android.permission-group.SMS"), TuplesKt.m61535to("android.permission.READ_EXTERNAL_STORAGE", "android.permission-group.STORAGE"), TuplesKt.m61535to("android.permission.WRITE_EXTERNAL_STORAGE", "android.permission-group.STORAGE"), TuplesKt.m61535to("android.permission.ACCESS_MEDIA_LOCATION", "android.permission-group.STORAGE"));
        f63224b = mapOf;
        mapOf2 = MapsKt__MapsJVMKt.mapOf(TuplesKt.m61535to(RequestManageExternalStoragePermission.MANAGE_EXTERNAL_STORAGE, "android.permission-group.STORAGE"));
        mutableMap = MapsKt__MapsKt.toMutableMap(mapOf2);
        mutableMap.putAll(mapOf);
        map = MapsKt__MapsKt.toMap(mutableMap);
        f63225c = map;
        mapOf3 = MapsKt__MapsKt.mapOf(TuplesKt.m61535to("android.permission.BLUETOOTH_SCAN", "android.permission-group.NEARBY_DEVICES"), TuplesKt.m61535to("android.permission.BLUETOOTH_ADVERTISE", "android.permission-group.NEARBY_DEVICES"), TuplesKt.m61535to("android.permission.BLUETOOTH_CONNECT", "android.permission-group.NEARBY_DEVICES"));
        mutableMap2 = MapsKt__MapsKt.toMutableMap(mapOf3);
        mutableMap2.putAll(map);
        map2 = MapsKt__MapsKt.toMap(mutableMap2);
        f63226d = map2;
        mapOf4 = MapsKt__MapsKt.mapOf(TuplesKt.m61535to("android.permission.READ_MEDIA_IMAGES", "android.permission-group.READ_MEDIA_VISUAL"), TuplesKt.m61535to("android.permission.READ_MEDIA_VIDEO", "android.permission-group.READ_MEDIA_VISUAL"), TuplesKt.m61535to("android.permission.READ_MEDIA_AUDIO", "android.permission-group.READ_MEDIA_AURAL"), TuplesKt.m61535to(PermissionX.permission.POST_NOTIFICATIONS, "android.permission-group.NOTIFICATIONS"), TuplesKt.m61535to("android.permission.NEARBY_WIFI_DEVICES", "android.permission-group.NEARBY_DEVICES"), TuplesKt.m61535to(RequestBodySensorsBackgroundPermission.BODY_SENSORS_BACKGROUND, "android.permission-group.SENSORS"));
        mutableMap3 = MapsKt__MapsKt.toMutableMap(mapOf4);
        mutableMap3.putAll(map2);
        map3 = MapsKt__MapsKt.toMap(mutableMap3);
        f63227e = map3;
    }

    @NotNull
    public static final Set<String> getAllSpecialPermissions() {
        return f63223a;
    }

    @NotNull
    public static final Map<String, String> getPermissionMapOnQ() {
        return f63224b;
    }

    @NotNull
    public static final Map<String, String> getPermissionMapOnR() {
        return f63225c;
    }

    @NotNull
    public static final Map<String, String> getPermissionMapOnS() {
        return f63226d;
    }

    @NotNull
    public static final Map<String, String> getPermissionMapOnT() {
        return f63227e;
    }
}
