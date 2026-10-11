package com.google.mlkit.vision.common.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.inject.Provider;
import com.google.mlkit.common.sdkinternal.ClientPriority;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@KeepForSdk
/* loaded from: classes6.dex */
public class MultiFlavorDetectorCreator {

    /* renamed from: a */
    public final Map f36653a = new HashMap();

    @KeepForSdk
    /* loaded from: classes6.dex */
    public interface DetectorCreator<DetectorT extends MultiFlavorDetector, OptionsT extends DetectorOptions<DetectorT>> {
        @NonNull
        @KeepForSdk
        DetectorT create(@NonNull OptionsT optionst);
    }

    @KeepForSdk
    /* loaded from: classes6.dex */
    public interface DetectorOptions<DetectorT> {
    }

    @KeepForSdk
    /* loaded from: classes6.dex */
    public interface MultiFlavorDetector {
    }

    @KeepForSdk
    /* loaded from: classes6.dex */
    public static class Registration {

        /* renamed from: a */
        public final Class f36654a;

        /* renamed from: b */
        public final Provider f36655b;

        /* renamed from: c */
        @ClientPriority
        public final int f36656c;

        @KeepForSdk
        public <DetectorT extends MultiFlavorDetector, OptionsT extends DetectorOptions<DetectorT>> Registration(@NonNull Class<? extends OptionsT> cls, @NonNull Provider<? extends DetectorCreator<DetectorT, OptionsT>> provider, @ClientPriority int i) {
            this.f36654a = cls;
            this.f36655b = provider;
            this.f36656c = i;
        }

        @ClientPriority
        /* renamed from: a */
        public final int m28574a() {
            return this.f36656c;
        }

        /* renamed from: b */
        public final Provider m28575b() {
            return this.f36655b;
        }

        /* renamed from: c */
        public final Class m28576c() {
            return this.f36654a;
        }

        @KeepForSdk
        public <DetectorT extends MultiFlavorDetector, OptionsT extends DetectorOptions<DetectorT>> Registration(@NonNull Class<? extends OptionsT> cls, @NonNull Provider<? extends DetectorCreator<DetectorT, OptionsT>> provider) {
            this(cls, provider, 100);
        }
    }

    public MultiFlavorDetectorCreator(Set set) {
        HashMap hashMap = new HashMap();
        Iterator it2 = set.iterator();
        while (it2.hasNext()) {
            Registration registration = (Registration) it2.next();
            Class m28576c = registration.m28576c();
            if (!this.f36653a.containsKey(m28576c) || registration.m28574a() >= ((Integer) Preconditions.checkNotNull((Integer) hashMap.get(m28576c))).intValue()) {
                this.f36653a.put(m28576c, registration.m28575b());
                hashMap.put(m28576c, Integer.valueOf(registration.m28574a()));
            }
        }
    }

    @NonNull
    @KeepForSdk
    public static synchronized MultiFlavorDetectorCreator getInstance() {
        MultiFlavorDetectorCreator multiFlavorDetectorCreator;
        synchronized (MultiFlavorDetectorCreator.class) {
            multiFlavorDetectorCreator = (MultiFlavorDetectorCreator) MlKitContext.getInstance().get(MultiFlavorDetectorCreator.class);
        }
        return multiFlavorDetectorCreator;
    }

    @NonNull
    @KeepForSdk
    public <DetectorT extends MultiFlavorDetector, OptionsT extends DetectorOptions<DetectorT>> DetectorT create(@NonNull OptionsT optionst) {
        return (DetectorT) ((DetectorCreator) ((Provider) Preconditions.checkNotNull((Provider) this.f36653a.get(optionst.getClass()))).get()).create(optionst);
    }
}
