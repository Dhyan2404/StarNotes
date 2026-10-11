package com.google.firebase;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.heartbeatinfo.DefaultHeartBeatController;
import com.google.firebase.platforminfo.DefaultUserAgentPublisher;
import com.google.firebase.platforminfo.KotlinDetector;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import java.util.ArrayList;
import java.util.List;
import org.apache.xmlbeans.impl.common.NameUtil;

/* loaded from: classes6.dex */
public class FirebaseCommonRegistrar implements ComponentRegistrar {

    /* renamed from: a */
    public static final String f35518a = "fire-android";

    /* renamed from: b */
    public static final String f35519b = "fire-core";

    /* renamed from: c */
    public static final String f35520c = "device-name";

    /* renamed from: d */
    public static final String f35521d = "device-model";

    /* renamed from: e */
    public static final String f35522e = "device-brand";

    /* renamed from: f */
    public static final String f35523f = "android-target-sdk";

    /* renamed from: g */
    public static final String f35524g = "android-min-sdk";

    /* renamed from: h */
    public static final String f35525h = "android-platform";

    /* renamed from: i */
    public static final String f35526i = "android-installer";

    /* renamed from: j */
    public static final String f35527j = "kotlin";

    /* renamed from: e */
    public static /* synthetic */ String m27910e(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return applicationInfo != null ? String.valueOf(applicationInfo.targetSdkVersion) : "";
    }

    /* renamed from: f */
    public static /* synthetic */ String m27911f(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return applicationInfo != null ? String.valueOf(applicationInfo.minSdkVersion) : "";
    }

    /* renamed from: g */
    public static /* synthetic */ String m27912g(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.type.television") ? "tv" : context.getPackageManager().hasSystemFeature("android.hardware.type.watch") ? "watch" : context.getPackageManager().hasSystemFeature("android.hardware.type.automotive") ? "auto" : context.getPackageManager().hasSystemFeature("android.hardware.type.embedded") ? "embedded" : "";
    }

    /* renamed from: h */
    public static /* synthetic */ String m27913h(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        return installerPackageName != null ? m27914i(installerPackageName) : "";
    }

    /* renamed from: i */
    public static String m27914i(String str) {
        return str.replace(' ', NameUtil.USCORE).replace('/', NameUtil.USCORE);
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<Component<?>> getComponents() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(DefaultUserAgentPublisher.component());
        arrayList.add(DefaultHeartBeatController.component());
        arrayList.add(LibraryVersionComponent.create(f35518a, String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(LibraryVersionComponent.create(f35519b, BuildConfig.VERSION_NAME));
        arrayList.add(LibraryVersionComponent.create(f35520c, m27914i(Build.PRODUCT)));
        arrayList.add(LibraryVersionComponent.create(f35521d, m27914i(Build.DEVICE)));
        arrayList.add(LibraryVersionComponent.create(f35522e, m27914i(Build.BRAND)));
        arrayList.add(LibraryVersionComponent.fromContext(f35523f, new LibraryVersionComponent.VersionExtractor() { // from class: com.sunia.HTREnginev2.omg
            @Override // com.google.firebase.platforminfo.LibraryVersionComponent.VersionExtractor
            public final String extract(Object obj) {
                String m27910e;
                m27910e = FirebaseCommonRegistrar.m27910e((Context) obj);
                return m27910e;
            }
        }));
        arrayList.add(LibraryVersionComponent.fromContext(f35524g, new LibraryVersionComponent.VersionExtractor() { // from class: com.sunia.HTREnginev2.pmg
            @Override // com.google.firebase.platforminfo.LibraryVersionComponent.VersionExtractor
            public final String extract(Object obj) {
                String m27911f;
                m27911f = FirebaseCommonRegistrar.m27911f((Context) obj);
                return m27911f;
            }
        }));
        arrayList.add(LibraryVersionComponent.fromContext(f35525h, new LibraryVersionComponent.VersionExtractor() { // from class: com.sunia.HTREnginev2.qmg
            @Override // com.google.firebase.platforminfo.LibraryVersionComponent.VersionExtractor
            public final String extract(Object obj) {
                String m27912g;
                m27912g = FirebaseCommonRegistrar.m27912g((Context) obj);
                return m27912g;
            }
        }));
        arrayList.add(LibraryVersionComponent.fromContext(f35526i, new LibraryVersionComponent.VersionExtractor() { // from class: com.sunia.HTREnginev2.rmg
            @Override // com.google.firebase.platforminfo.LibraryVersionComponent.VersionExtractor
            public final String extract(Object obj) {
                String m27913h;
                m27913h = FirebaseCommonRegistrar.m27913h((Context) obj);
                return m27913h;
            }
        }));
        String detectVersion = KotlinDetector.detectVersion();
        if (detectVersion != null) {
            arrayList.add(LibraryVersionComponent.create(f35527j, detectVersion));
        }
        return arrayList;
    }
}
